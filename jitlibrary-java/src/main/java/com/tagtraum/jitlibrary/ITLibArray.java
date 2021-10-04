/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Natively backed collection of objects.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class ITLibArray extends ReferenceCountedObject {

    private final int size;

    public ITLibArray(final long pointer) {
        super(pointer);
        if (pointer != 0L) {
            this.size = _size();
        } else {
            this.size = 0;
        }
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int size() {
        if (pointer == 0L) {
            throw new IllegalStateException("Array has already been released.");
        } else {
            return size;
        }
    }

    private native int _size();

    private native long _get(final int index);

    public long get(final int index) {
        if (index < 0) {
            throw new IndexOutOfBoundsException("Index must be greater than zero: " + index);
        }
        if (pointer == 0L) {
            throw new IllegalStateException("Array has already been released.");
        }
        if (index >= size) {
            throw new IndexOutOfBoundsException("Index must be less than size (" + this.size + "): " + index);
        }
        return _get(index);
    }

}
