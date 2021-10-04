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
 * TestITLibArtwork.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibArtwork {

    @BeforeAll
    public static void before() {
        ITNativeLibraryLoader.loadLibrary();
    }
    
    @Test
    public void testDummy() {
        final ITLibArtwork nullArtwork = new ITLibArtwork(0L);
        assertNull(nullArtwork.getImage());
        assertArrayEquals(new byte[0], nullArtwork.getImageData());
        assertEquals(ITLibArtworkFormat.ITLibArtworkFormatNone, nullArtwork.getImageDataFormat());
    }

}
