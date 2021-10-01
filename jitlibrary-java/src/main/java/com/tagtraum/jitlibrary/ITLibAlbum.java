/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Provides information about an album in the iTunes library.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibalbum">Apple ITLibAlbum</a>
 */
public class ITLibAlbum {

    private long pointer;

    public ITLibAlbum(final long pointer) {
        this.pointer = pointer;
    }

    public native long getId();

    public String getName() {
        return getTitle();
    }

    public native String getTitle();

    public native String getSortTitle();

    public native int getTrackCount();

    public native int getRating();

    public native boolean isRatingComputed();

    public native boolean isGapless();

    public native int getDiscNumber();

    public native int getDiscCount();

    public native boolean isCompilation();

    public native String getAlbumArtist();

    public native String getSortAlbumArtist();

    private native void _release();

    private native void _retain();

    public void release() {
        if (pointer != 0L) {
            _release();
            pointer = 0L;
        }
    }

    public void retain() {
        if (pointer != 0L) {
            _retain();
        }
    }

}
