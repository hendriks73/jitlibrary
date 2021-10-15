/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

/**
 * TestITLibException.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibException {

    @Test
    public void testNoArg() {
        final ITLibException e = new ITLibException();
        assertNull(e.getMessage());
        assertNull(e.getCause());
    }

    @Test
    public void testMessageArg() {
        final ITLibException e = new ITLibException("message");
        assertEquals("message", e.getMessage());
        assertNull(e.getCause());
    }

}
