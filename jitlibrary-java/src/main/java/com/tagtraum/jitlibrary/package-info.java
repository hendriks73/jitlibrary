/**
 * Java API for Apple's <a href="https://developer.apple.com/documentation/ituneslibrary/itlibrary">iTunes
 * Library Framework</a> (also covers Music.app).
 * <p>
 * To get started, call {@code ITLibrary itLibrary = ITLibrary.getInstance(true)} and perhaps
 * retrieve playlists via {@code itLibrary.getAllPlaylists()}.
 * <p>
 * <i><b>Important</b><br>
 * You must code sign your app to retrieve information with this framework, and
 * iTunes library access is read-only. This framework is available to users with
 * iTunes 11 or later.</i>
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
package com.tagtraum.jitlibrary;