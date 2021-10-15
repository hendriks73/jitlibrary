/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.Test;

import static com.tagtraum.jitlibrary.ITLibMediaItemMediaKind.*;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;


/**
 * TestITLibMediaItemMediaKind
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibMediaItemMediaKind {

    @Test
    public void testSimple() {
        for (int i=0; i<100; i++) {
            assertNotNull(ITLibMediaItemMediaKind.get(i));
        }
        assertEquals(ITLibMediaItemMediaKind.get(5), ITLibMediaItemMediaKindAudiobook);
        assertEquals(ITLibMediaItemMediaKind.get(1), ITLibMediaItemMediaKind.ITLibMediaItemMediaKindUnknown);
    }

}
