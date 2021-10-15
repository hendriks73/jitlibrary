/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static com.tagtraum.jitlibrary.ITLibMediaItemLocationType.ITLibMediaItemLocationTypeUnknown;
import static com.tagtraum.jitlibrary.ITLibMediaItemLyricsContentRating.ITLibMediaItemLyricsContentRatingNone;
import static com.tagtraum.jitlibrary.ITLibMediaItemMediaKind.ITLibMediaItemMediaKindUnknown;
import static com.tagtraum.jitlibrary.ITLibMediaItemPlayStatus.ITLibMediaItemPlayStatusNone;
import static org.junit.jupiter.api.Assertions.*;

/**
 * TestITLibMediaItem.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibMediaItem {

    @BeforeAll
    public static void before() {
        ITNativeLibraryLoader.loadLibrary();
    }

    @Test
    public void testDummy() {
        final ITLibMediaItem nullObject = new ITLibMediaItem(0L);
        assertNull(nullObject.getAddedDate());
        assertNull(nullObject.getAlbum());
        assertNull(nullObject.getArtist());
        assertNull(nullObject.getName());
        assertNull(nullObject.getArtwork());
        assertNull(nullObject.getGrouping());
        assertNull(nullObject.getLastPlayedDate());
        assertNull(nullObject.getModifiedDate());
        assertNull(nullObject.getCategory());
        assertNull(nullObject.getComments());
        assertNull(nullObject.getComposer());
        assertNull(nullObject.getContentRating());
        assertNull(nullObject.getDescription());
        assertNull(nullObject.getGenre());
        assertNull(nullObject.getKind());
        assertEquals(ITLibMediaItemMediaKindUnknown, nullObject.getMediaKind());
        assertEquals(ITLibMediaItemLocationTypeUnknown, nullObject.getLocationType());
        assertEquals(ITLibMediaItemLyricsContentRatingNone, nullObject.getLyricsContentRating());
        assertEquals(ITLibMediaItemPlayStatusNone, nullObject.getPlayStatus());
        assertEquals(ITLibMediaItemPlayStatusNone, nullObject.getPlayStatus());
        assertSame(0, nullObject.getBeatsPerMinute());
        assertSame(0, nullObject.getBitRate());
        assertSame(0, nullObject.getPlayCount());
        assertSame(0, nullObject.getRating());
        assertSame(0, nullObject.getSampleRate());
        assertSame(0, nullObject.getSkipCount());
        assertSame(0, nullObject.getStartTime());
        assertSame(0, nullObject.getStopTime());
        assertSame(0, nullObject.getTrackNumber());
        assertSame(0, nullObject.getVolumeAdjustment());
        assertSame(0, nullObject.getVolumeNormalizationEnergy());
        assertSame(0, nullObject.getYear());
        assertSame(0L, nullObject.getFileSize());
        assertSame(0L, nullObject.getId());
    }

}
