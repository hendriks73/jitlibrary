/*
 * =================================================
 * Copyright 2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

/**
 * Specifies the possible kinds of distinguished playlists.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 * @see <a href="https://developer.apple.com/documentation/ituneslibrary/itlibdistinguishedplaylistkind">Apple ITLibDistinguishedPlaylistKind</a>
 */
public enum ITLibDistinguishedPlaylistKind {

    ITLibDistinguishedPlaylistKindNone(0),
    ITLibDistinguishedPlaylistKindMovies(1),
    ITLibDistinguishedPlaylistKindTVShows(2),
    ITLibDistinguishedPlaylistKindMusic(3),
    ITLibDistinguishedPlaylistKindAudiobooks(4),
    ITLibDistinguishedPlaylistKindBooks(4),
    ITLibDistinguishedPlaylistKindRingtones(5),
    ITLibDistinguishedPlaylistKindPodcasts(7),
    ITLibDistinguishedPlaylistKindVoiceMemos(14),
    ITLibDistinguishedPlaylistKindPurchases(16),
    ITLibDistinguishedPlaylistKindiTunesU(26),
    ITLibDistinguishedPlaylistKind90sMusic(42),
    ITLibDistinguishedPlaylistKindMyTopRated(43),
    ITLibDistinguishedPlaylistKindTop25MostPlayed(44),
    ITLibDistinguishedPlaylistKindRecentlyPlayed(45),
    ITLibDistinguishedPlaylistKindRecentlyAdded(46),
    ITLibDistinguishedPlaylistKindMusicVideos(47),
    ITLibDistinguishedPlaylistKindClassicalMusic(48),
    ITLibDistinguishedPlaylistKindLibraryMusicVideos(49),
    ITLibDistinguishedPlaylistKindHomeVideos(50),
    ITLibDistinguishedPlaylistKindApplications(51),
    ITLibDistinguishedPlaylistKindLovedSongs(52),
    ITLibDistinguishedPlaylistKindMusicShowsAndMovies(53);

    private final int id;
    
    ITLibDistinguishedPlaylistKind(final int id) {
        this.id = id;
    }

    public static ITLibDistinguishedPlaylistKind get(final int id) {
        for (final ITLibDistinguishedPlaylistKind kind : values()) {
            if (kind.id == id) return kind;
        }
        return ITLibDistinguishedPlaylistKindNone;
    }

}
