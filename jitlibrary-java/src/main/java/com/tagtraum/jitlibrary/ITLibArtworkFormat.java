/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Specifies the possible formats of the data that
 * {@link ITLibArtwork#getImageDataFormat()} returns.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibartworkformat">Apple ITLibArtworkFormat</a>
 */
public enum ITLibArtworkFormat {

    ITLibArtworkFormatNone,
    ITLibArtworkFormatBitmap,
    ITLibArtworkFormatJPEG,
    ITLibArtworkFormatJPEG2000,
    ITLibArtworkFormatGIF,
    ITLibArtworkFormatPNG,
    ITLibArtworkFormatBMP,
    ITLibArtworkFormatTIFF,
    ITLibArtworkFormatPICT;
}
