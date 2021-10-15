/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

/**
 * TestITLibArray.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITLibArray {

    @BeforeAll
    public static void before() {
        ITNativeLibraryLoader.loadLibrary();
    }
    
    @Test
    public void testDummy() {
        final ITLibArray nullObject = new ITLibArray(0L);
        Assertions.assertThrows(IllegalStateException.class, nullObject::size);
        Assertions.assertThrows(IllegalStateException.class, nullObject::isEmpty);
        Assertions.assertThrows(IllegalStateException.class, () -> nullObject.get(5));
    }

    @Test
    public void testNegativeIndex() {
        final ITLibArray nullObject = new ITLibArray(0L);
        Assertions.assertThrows(IndexOutOfBoundsException.class, () -> nullObject.get(-1));
    }

}
