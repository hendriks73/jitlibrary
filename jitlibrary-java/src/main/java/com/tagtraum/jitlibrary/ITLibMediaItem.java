/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import static com.tagtraum.jitlibrary.ITLibMediaItemLocationType.ITLibMediaItemLocationTypeUnknown;
import static com.tagtraum.jitlibrary.ITLibMediaItemLyricsContentRating.ITLibMediaItemLyricsContentRatingNone;
import static com.tagtraum.jitlibrary.ITLibMediaItemPlayStatus.ITLibMediaItemPlayStatusNone;

/**
 * Describes a media item (a track) in the iTunes
 * library, such as a song, a video, or a podcast.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibmediaitem">Apple ITLibMediaItem</a>
 */
public class ITLibMediaItem {

    private static final Logger LOG = Logger.getLogger(ITLibMediaItem.class.getName());
    private final long pointer;

    public ITLibMediaItem(final long pointer) {
        this.pointer = pointer;
    }

    public native long getId();

    public String getName() {
        return getTitle();
    }

    public native String getTitle();

    public native String getSortTitle();

    public native String getComposer();

    public native String getSortComposer();

    public native int getRating();

    public native boolean isRatingComputed();

    public native int getStartTime();

    public native int getStopTime();

    public native String getGenre();

    public native String getKind();

    public ITLibMediaItemMediaKind getMediaKind() {
        return ITLibMediaItemMediaKind.get(_getMediaKind());
    }

    private native int _getMediaKind();

    public native long getTotalTime();

    public native int getTrackNumber();

    public native String getCategory();

    public native String getDescription();

    public native String getContentRating();

    public ITLibMediaItemLyricsContentRating getLyricsContentRating() {
        try {
            return ITLibMediaItemLyricsContentRating.values()[_getLyricsContentRating()];
        } catch (Exception e) {
            LOG.log(Level.SEVERE, "Failed to determine play status. Returning " + ITLibMediaItemLyricsContentRatingNone, e);
            return ITLibMediaItemLyricsContentRatingNone;
        }
    }

    private native int _getLyricsContentRating();

    public Date getAddedDate() {
        final long time = _getAddedDate();
        return time == 0L ? null : new Date(time);
    }

    private native long _getAddedDate();

    public Date getModifiedDate() {
        final long time = _getModifiedDate();
        return time == 0L ? null : new Date(time);
    }

    private native long _getModifiedDate();

    public native int getBitRate();

    public native int getSampleRate();

    public native int getBeatsPerMinute();

    public native int getPlayCount();

    public Date getLastPlayedDate() {
        final long time = _getLastPlayedDate();
        return time == 0L ? null : new Date(time);
    }

    private native long _getLastPlayedDate();

    public URI getLocation() {
        final String location = _getLocation();
        if (location == null) {
            return null;
        } else {
            try {
                return new URI(location);
            } catch (URISyntaxException e) {
                LOG.log(Level.SEVERE, e.toString(), e);
                throw new RuntimeException(e);
            }
        }
    }

    public native String _getLocation();

    public ITLibMediaItemLocationType getLocationType() {
        try {
            return ITLibMediaItemLocationType.values()[_getLocationType()];
        } catch (Exception e) {
            LOG.log(Level.SEVERE, "Failed to determine location type. Returning " + ITLibMediaItemLocationTypeUnknown, e);
            return ITLibMediaItemLocationTypeUnknown;
        }
    }

    private native int _getLocationType();

    public native boolean isArtworkAvailable();

    public ITLibArtwork getArtwork() {
        final long pointer = _getArtwork();
        if (pointer != 0L) {
            return new ITLibArtwork(pointer);
        } else {
            return null;
        }
    }

    private native long _getArtwork();

    public native String getComments();

    public native boolean isPurchased();

    public native boolean isDRMProtected();

    public native boolean hasVideo();

    public Date getReleaseDate() {
        final long time = _getReleaseDate();
        return time == 0L ? null : new Date(time);
    }

    private native long _getReleaseDate();

    public native int getYear();

    public native int getSkipCount();

    public Date getSkipDate() {
        final long time = _getSkipDate();
        return time == 0L ? null : new Date(time);
    }

    private native long _getSkipDate();

    public native int getVolumeAdjustment();

    public native int getVolumeNormalizationEnergy();

    public native boolean isUserDisabled();

    public native String getGrouping();

    public native long getFileSize();

    public native boolean isCloud();

    public ITLibMediaItemPlayStatus getPlayStatus() {
        try {
            return ITLibMediaItemPlayStatus.values()[_getPlayStatus()];
        } catch (Exception e) {
            LOG.log(Level.SEVERE, "Failed to determine play status. Returning " + ITLibMediaItemPlayStatusNone, e);
            return ITLibMediaItemPlayStatusNone;
        }
    }

    private native int _getPlayStatus();

    public ITLibArtist getArtist() {
        return new ITLibArtist(_getArtist());
    }

    public ITLibAlbum getAlbum() {
        return new ITLibAlbum(_getAlbum());
    }

    public Object getProperty(final String propertyName) {
        return _getProperty(propertyName);
    }

    private native String _getProperty(String propertyName);

    private native long _getArtist();

    private native long _getAlbum();

}
