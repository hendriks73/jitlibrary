/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Base class for Java objects corresponding to native
 * reference counted objects.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class ReferenceCountedObject {

    protected long pointer;

    public ReferenceCountedObject(final long pointer) {
        this.pointer = pointer;
    }

    /**
     * Call {@code release} on a native object referenced by the given pointer.
     *
     * @param pointer passing the pointer, so we don't have to look it up in native code
     */
    private static native void _release(final long pointer);

    /**
     * Call {@code retain} on a native object referenced by the given pointer.
     *
     * @param pointer passing the pointer, so we don't have to look it up in native code
     */
    private static native void _retain(final long pointer);

    public void release() {
        if (pointer != 0L) {
            _release(pointer);
            pointer = 0L;
        }
    }

    public void retain() {
        if (pointer != 0L) {
            _retain(pointer);
        }
    }
}
