/**
 * Java API for Apple's <a href="https://developer.apple.com/documentation/ituneslibrary/itlibrary">iTunes
 * Library Framework</a> (also covers Music.app).
 * <p>
 * <i><b>Important</b><br>
 * You must code sign your app to retrieve information with this framework, and
 * iTunes library access is read-only. This framework is available to users with
 * iTunes 11 or later.</i>
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
module tagtraum.jitlibrary {
    requires transitive java.logging;
    requires transitive java.desktop;
    exports com.tagtraum.jitlibrary;
}