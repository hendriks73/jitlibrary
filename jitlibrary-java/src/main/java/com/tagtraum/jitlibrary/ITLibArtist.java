/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Represents an artist, such as the performer of a song.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibartist">Apple ITLibArtist</a>
 */
public class ITLibArtist {

    private long pointer;

    public ITLibArtist(final long pointer) {
        this.pointer = pointer;
    }

    public native long getId();

    public native String getName();

    public native String getSortName();

    private native void _release();

    private native void _retain();

    public void release() {
        if (pointer != 0L) {
            _release();
            pointer = 0L;
        }
    }

    public void retain() {
        if (pointer != 0L) {
            _retain();
        }
    }

}
