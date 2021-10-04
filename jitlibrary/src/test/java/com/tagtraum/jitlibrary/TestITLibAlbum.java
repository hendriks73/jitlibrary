/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * TestITLibAlbum.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibAlbum {

    @BeforeAll
    public static void before() {
        ITNativeLibraryLoader.loadLibrary();
    }

    @Test
    public void testDummy() {
        final ITLibAlbum nullAlbum = new ITLibAlbum(0L);
        assertNull(nullAlbum.getName());
        assertNull(nullAlbum.getTitle());
        assertNull(nullAlbum.getAlbumArtist());
        assertNull(nullAlbum.getSortAlbumArtist());
        assertNull(nullAlbum.getSortTitle());
        assertSame(0, nullAlbum.getDiscCount());
        assertSame(0, nullAlbum.getTrackCount());
        assertSame(0, nullAlbum.getDiscNumber());
        assertSame(0, nullAlbum.getRating());
        assertSame(0L, nullAlbum.getId());
        assertFalse(nullAlbum.isCompilation());
        assertFalse(nullAlbum.isGapless());
        assertFalse(nullAlbum.isRatingComputed());
    }

}
