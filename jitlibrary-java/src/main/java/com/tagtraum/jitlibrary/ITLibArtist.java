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
public class ITLibArtist extends ReferenceCountedObject {

    public ITLibArtist(final long pointer) {
        super(pointer);
    }

    public native long getId();

    public native String getName();

    public native String getSortName();

}
