/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Natively backed collection of {@link ITLibPlaylist}s.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class ITLibPlaylists extends ITLibArray {

    public ITLibPlaylists(final long pointer) {
        super(pointer);
    }

    public ITLibPlaylist getPlaylist(final int index) {
        final long pointer = get(index);
        if (pointer == 0L) {
            throw new IndexOutOfBoundsException("Index " + index);
        }
        return new ITLibPlaylist(pointer);
    }

}
