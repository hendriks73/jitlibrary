/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.Test;

/**
 * TestReferenceCountedObject.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestReferenceCountedObject {

    @Test
    public void testDummy() {
        final ReferenceCountedObject nullReferenceCountedObject = new ReferenceCountedObject(0L);
        nullReferenceCountedObject.retain();
        nullReferenceCountedObject.release();
    }

}
