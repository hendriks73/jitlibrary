/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import javax.swing.*;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import static java.util.logging.Level.SEVERE;

/**
 * Central access point to this API.
 * To get started, call {@link #getInstance(boolean)} and then start accessing
 * playlists or media items (aka tracks).
 * <p>
 * <i><b>Important</b><br>
 * You must code sign your app to retrieve information with this framework, and
 * iTunes library access is read-only. This framework is available to users with
 * iTunes 11 or later.</i>
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibrary">Apple ITLibrary</a>
 */
public class ITLibrary {

    private static final Logger LOG = Logger.getLogger(ITLibrary.class.getName());

    static {
        final String osName = System.getProperty("os.name");
        if (osName.toLowerCase().contains("mac")) {
            LOG.fine("Loading native library...");
            ITNativeLibraryLoader.loadLibrary();
        } else {
            LOG.warning("jITLibrary can only be used on macOS, not on " + osName + ". Any calls will fail.");
        }
    }

    private static ITLibrary instance;
    private static boolean loading;
    private static final Object loadingLock = new Object();
    private long lastReloadTime;
    private long pointer; // is accessed from native code


    private static synchronized ITLibrary getInstance() throws Exception {
        if (instance == null) {
            if (SwingUtilities.isEventDispatchThread()) {
                LOG.severe("ITLibrary must not be loaded in EDT.");
            }
            instance = new ITLibrary();
        }
        return instance;
    }

    /**
     * Initialize the ITLibrary.
     * If {@code load} is true, this method blocks.
     * If {@code load} is false, this method returns right away, but may return {@code null}.
     *
     * @param load make sure the library is indeed loaded.
     * @return either the library object or null, if not yet available
     * @throws Exception if something goes wrong.
     */
    public static ITLibrary getInstance(final boolean load) throws Exception {
        if (load) {
            return getInstance();
        } else {
            synchronized (loadingLock) {
                if (!loading) {
                    loading = true;
                    // trigger loading instance asynchronously
                    new Thread(() -> {
                        try {
                            getInstance();
                        } catch (Exception e) {
                            LOG.log(SEVERE, "Failed to load ITLibrary asynchronously.", e);
                        }
                    }, "AsyncITLibrary Loader").start();
                }
            }
        }
        return instance;
    }

    public ITLibrary() throws Exception {
        this("1.0");
    }

    public ITLibrary(final String version) throws Exception {
        final long start = System.currentTimeMillis();
        if (LOG.isLoggable(Level.FINE)) {
            LOG.fine("Loading ITLibrary...");
        }
        pointer = init(version);
        this.lastReloadTime = System.currentTimeMillis();
        if (pointer == 0L) {
            throw new ITLibException("Failed to initialize native Music.app library.");
        }
        if (LOG.isLoggable(Level.FINE)) {
            LOG.fine("Loading ITLibrary took " + (System.currentTimeMillis()-start) + "ms.");
        }
    }

    private static native long init(final String version) throws Exception;

    private native String _getMusicFolderLocation();

    public URI getMusicFolderLocation() throws URISyntaxException {
        final String loc = _getMusicFolderLocation();
        return loc == null ? null : new URI(loc);
    }

    public native boolean isShowContentRating();

    public native String getApplicationVersion();

    public native int getAPIMinorVersion();

    public native int getAPIMajorVersion();

    /**
     * Reload data, if it hasn't been reloaded very recently (like in the last couple
     * of seconds).
     */
    public boolean reloadData() {
        return reloadData(false);
    }

    /**
     * Reload data.
     *
     * @param force if true disregard that we may have just reloaded data.
     */
    public synchronized boolean reloadData(final boolean force) {
        final long start = System.currentTimeMillis();
        if (!force && start < lastReloadTime+3000L) {
            if (LOG.isLoggable(Level.FINE)) {
                LOG.fine("Skipping reload, as data is still pretty current.");
            }
            return true;
        }
        if (LOG.isLoggable(Level.FINE)) {
            LOG.fine("Reloading data from ITLibrary...");
        }
        final boolean b = _reloadData();
        if (LOG.isLoggable(Level.INFO)) {
            LOG.info("Reloaded data from ITLibrary in "
                + (System.currentTimeMillis()-start) + "ms. Result: " + b);
        }
        lastReloadTime = System.currentTimeMillis();
        return b;
    }

    /**
     * Time (in millis) when the data was last reloaded.
     *
     * @return time in millis
     */
    public long getLastReloadTime() {
        return lastReloadTime;
    }

    private void unloadData() {
        _unloadData();
        if (LOG.isLoggable(Level.INFO)) LOG.info("Unloaded data from ITLibrary.");
    }

    private native boolean _reloadData();

    private native void _unloadData();

    public ITLibArtwork artworkForMediaFile(final URI uri) {
        final long pointer = _artworkForMediaFile(uri.toString());
        return pointer == 0 ? null : new ITLibArtwork(pointer);
    }

    private native long _artworkForMediaFile(final String uri);

    public ITLibMediaItems getAllMediaItems() {
        return new ITLibMediaItems(_getAllMediaItems());
    }

    private native long _getAllMediaItems();

    public ITLibPlaylists getAllPlaylists() {
        return new ITLibPlaylists(_getAllPlaylists());
    }

    private native long _getAllPlaylists();

    private native long _getLastItemModification();

    public ITLibMediaItems getMediaItemsChangedSince(final Date date) {
        return new ITLibMediaItems(_getMediaItemsChangedSince(date.getTime()));
    }

    private native long _getMediaItemsChangedSince(final long time);

    /**
     * Get a media item for the given persistent id.
     *
     * @param id persistent id
     * @return item or null, if not found
     */
    public ITLibMediaItem getMediaItem(final long id) {
        final long pointer = _getMediaItem(id);
        if (pointer != 0) {
            return new ITLibMediaItem(pointer);
        } else {
            return null;
        }
    }

    private native long _getMediaItem(final long id);


    public native long[] getMediaItemIds();

    /**
     * Greatest addition or modification date for any items in the library.
     * May be {@code null}, if we cannot determine the date.
     *
     * @return date or null
     */
    public Date getLastItemModification() {
        final long date = _getLastItemModification();
        if (date == 0) return null;
        else return new Date(date);
    }

    /**
     * Hash value that represents the current playlists.
     * If consecutive values differ, it's very likely at least one playlist has changed.
     *
     * @return hash value
     */
    public native int getPlaylistHash();
}
