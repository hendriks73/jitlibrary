/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.Test;

import static com.tagtraum.jitlibrary.ITLibDistinguishedPlaylistKind.*;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;


/**
 * TestITLibDistinguishedPlaylistKind.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibDistinguishedPlaylistKind {

    @Test
    public void testSimple() {
        for (int i=0; i<100; i++) {
            assertNotNull(ITLibDistinguishedPlaylistKind.get(i));
        }
        assertEquals(ITLibDistinguishedPlaylistKind.get(42), ITLibDistinguishedPlaylistKind90sMusic);
        assertEquals(ITLibDistinguishedPlaylistKind.get(0), ITLibDistinguishedPlaylistKindNone);
    }

}
