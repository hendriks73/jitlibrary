/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Specifies the possible media kinds of a media item.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibmediaitemmediakind">Apple ITLibMediaItemMediaKind</a>
 */
public enum ITLibMediaItemMediaKind {

    ITLibMediaItemMediaKindUnknown(1),
    ITLibMediaItemMediaKindSong(2),
    ITLibMediaItemMediaKindMovie(3),
    ITLibMediaItemMediaKindPodcast(4),
    ITLibMediaItemMediaKindAudiobook(5),
    ITLibMediaItemMediaKindPDFBooklet(6),
    ITLibMediaItemMediaKindMusicVideo(7),
    ITLibMediaItemMediaKindTVShow(8),
    ITLibMediaItemMediaKindInteractiveBooklet(9),
    ITLibMediaItemMediaKindHomeVideo(12),
    ITLibMediaItemMediaKindRingtone(14),
    ITLibMediaItemMediaKindDigitalBooklet(15),
    ITLibMediaItemMediaKindIOSApplication(16),
    ITLibMediaItemMediaKindVoiceMemo(17),
    ITLibMediaItemMediaKindiTunesU(18),
    ITLibMediaItemMediaKindBook(19),
    ITLibMediaItemMediaKindPDFBook(20),
    ITLibMediaItemMediaKindAlertTone(21);

    private final int id;

    ITLibMediaItemMediaKind(final int id) {
        this.id = id;
    }

    public static ITLibMediaItemMediaKind get(final int id) {
        for (final ITLibMediaItemMediaKind kind : values()) {
            if (kind.id == id) return kind;
        }
        return ITLibMediaItemMediaKindUnknown;
    }
}
