/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Natively backed collection of {@link ITLibMediaItem}s.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class ITLibMediaItems extends ITLibArray {

    public ITLibMediaItems(final long pointer) {
        super(pointer);
    }

    public ITLibMediaItem getMediaItem(final int index) {
        final long pointer = get(index);
        if (pointer == 0L) {
            throw new IndexOutOfBoundsException("Index " + index);
        }
        return new ITLibMediaItem(pointer);
    }
}
