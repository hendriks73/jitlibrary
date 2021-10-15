/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertSame;

/**
 * TestITLibArtist.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibArtist {

    @BeforeAll
    public static void before() {
        ITNativeLibraryLoader.loadLibrary();
    }

    @Test
    public void testDummy() {
        final ITLibArtist nullArtist = new ITLibArtist(0L);
        assertNull(nullArtist.getName());
        assertNull(nullArtist.getSortName());
        assertSame(0L, nullArtist.getId());
    }

}
