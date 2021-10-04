/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import java.util.logging.Logger;

import static com.tagtraum.jitlibrary.ITLibDistinguishedPlaylistKind.ITLibDistinguishedPlaylistKindNone;
import static com.tagtraum.jitlibrary.ITLibPlaylistKind.ITLibPlaylistKindRegular;
import static java.util.logging.Level.SEVERE;

/**
 * Describes a playlist in the iTunes library.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibplaylist">Apple ITLibPlayList</a>
 */
public class ITLibPlaylist extends ReferenceCountedObject {

    private static final Logger LOG = Logger.getLogger(ITLibPlaylist.class.getName());

    public ITLibPlaylist(final long pointer) {
        super(pointer);
    }

    public native long getId();

    public Long getParentId() {
        final long parentId = _getParentId();
        return parentId == 0 ? null : parentId;
    }

    private native long _getParentId();

    public native boolean isVisible();

    public native String getName();

    public native boolean isMaster();

    public ITLibMediaItems getItems() {
        final long pointer = _getItems();
        return pointer == 0L ? null : new ITLibMediaItems(pointer);
    }

    private native long _getItems();

    public native long[] getItemsIds();

    private native int _getDistinguishedKind();

    public ITLibDistinguishedPlaylistKind getDistinguishedKind() {
        final int id = _getDistinguishedKind();
        final ITLibDistinguishedPlaylistKind kind = ITLibDistinguishedPlaylistKind.get(id);
        if (id != 0 && kind == ITLibDistinguishedPlaylistKindNone) {
            LOG.warning("Playlist " + getName() + ": ITLibDistinguishedPlaylistKind = " + id + " is unknown");
        }
        return kind;
    }

    private native int _getKind();

    public ITLibPlaylistKind getKind() {
        try {
            return ITLibPlaylistKind.values()[_getKind()];
        } catch (Exception e) {
            LOG.log(SEVERE, e.toString(), e);
            return ITLibPlaylistKindRegular;
        }
    }

}
