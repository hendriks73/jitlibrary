/*
 * =================================================
 * Copyright 2020 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * ITLibException.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class ITLibException extends Exception {

    public ITLibException() {
    }

    public ITLibException(final String message) {
        super(message);
    }

    public ITLibException(final String message, final Throwable cause) {
        super(message, cause);
    }

    public ITLibException(final Throwable cause) {
        super(cause);
    }

    public ITLibException(final String message, final Throwable cause, final boolean enableSuppression, final boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
