/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Specifies the location type of a media item.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibmediaitemlocationtype">Apple ITLibMediaItemLocationType</a>
 */
public enum ITLibMediaItemLocationType {

    ITLibMediaItemLocationTypeUnknown,
    ITLibMediaItemLocationTypeFile,
    ITLibMediaItemLocationTypeURL,
    ITLibMediaItemLocationTypeRemote
    
}
