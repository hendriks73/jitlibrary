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
 * TestITLibRuntimeException.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibRuntimeException {

    @Test
    public void testNoArg() {
        final ITLibRuntimeException e = new ITLibRuntimeException();
        assertNull(e.getMessage());
        assertNull(e.getCause());
    }

    @Test
    public void testMessageArg() {
        final ITLibRuntimeException e = new ITLibRuntimeException("message");
        assertEquals("message", e.getMessage());
        assertNull(e.getCause());
    }

}
