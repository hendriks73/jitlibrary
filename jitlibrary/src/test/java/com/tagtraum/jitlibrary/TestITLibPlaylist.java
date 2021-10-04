/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static com.tagtraum.jitlibrary.ITLibDistinguishedPlaylistKind.ITLibDistinguishedPlaylistKindNone;
import static com.tagtraum.jitlibrary.ITLibPlaylistKind.ITLibPlaylistKindRegular;
import static org.junit.jupiter.api.Assertions.*;

/**
 * TestITLibPlaylist.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibPlaylist {

    @BeforeAll
    public static void before() {
        ITNativeLibraryLoader.loadLibrary();
    }

    @Test
    public void testDummy() {
        final ITLibPlaylist nullPlaylist = new ITLibPlaylist(0L);
        assertNull(nullPlaylist.getName());
        assertNull(nullPlaylist.getParentId());
        assertSame(0L, nullPlaylist.getId());
        assertEquals(ITLibPlaylistKindRegular, nullPlaylist.getKind());
        assertEquals(ITLibDistinguishedPlaylistKindNone, nullPlaylist.getDistinguishedKind());
        assertNull(nullPlaylist.getItems());
        assertFalse(nullPlaylist.isVisible());
        assertFalse(nullPlaylist.isMaster());
    }
}
