[![LGPL 2.1](https://img.shields.io/badge/License-LGPL_2.1-blue.svg)](https://www.gnu.org/licenses/old-licenses/lgpl-2.1.html)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/com.tagtraum/jitlibrary/badge.svg)](https://maven-badges.herokuapp.com/maven-central/com.tagtraum/jitlibrary)
[![Build and Test](https://github.com/hendriks73/jitlibrary/workflows/Build%20and%20Test/badge.svg)](https://github.com/hendriks73/jitlibrary/actions)
[![CodeCov](https://codecov.io/gh/hendriks73/jitlibrary/branch/main/graph/badge.svg?token=H98FM0SKQL)](https://codecov.io/gh/hendriks73/jitlibrary/branch/main)


# jITLibrary

*jITLibrary* is a thin wrapper around the Apple
[iTunes Library Framework](https://developer.apple.com/documentation/ituneslibrary/itlibrary),
which - despite its name - can also be used to access *Music.app* data.
Note that the API is read-only, just like Apple's framework. For write access, 
see [Obstmusic](https://github.com/japlscript/obstmusic) or
[Obstunes](https://github.com/japlscript/obstunes).


## Important

You **must** 
[code sign](https://developer.apple.com/library/archive/documentation/Security/Conceptual/CodeSigningGuide/Introduction/Introduction.html)
your app to retrieve information with this framework, and
iTunes library access is read-only. This framework is available to users with
iTunes 11 or later (also Music.app).
        

## Installation

jITLibrary is released via [Maven](https://maven.apache.org).
You can install it via the following dependency:

```xml
<dependencies>
    <dependency>
        <groupId>com.tagtraum</groupId>
        <artifactId>jitlibrary</artifactId>
    </dependency>
</dependencies>
```

## Java Module

jITLibrary is shipped as a Java module
(see [JPMS](https://en.wikipedia.org/wiki/Java_Platform_Module_System))
with the name `tagtraum.jitlibrary`.


## Usage

Once you have obtained an [ITLibrary](https://hendriks73.github.io/jitlibrary/com/tagtraum/jitlibrary/ITLibrary.html)
instance you may access its `ITMediaItem`s and `ITPlaylist`s as you like.

Example:

```java
import com.tagtraum.jitlibrary.*;

public class ListAllMediaItems {

    public static void main(final String args) throws Exception {
        // get library (blocking call)
        final ITLibrary itLibrary = ITLibrary.getInstance(true);
        // get the natively backed collection
        final ITLibMediaItems allMediaItems = itLibrary.getAllMediaItems();
        
        // print size if library
        final int length = allMediaItems.size();
        System.out.println("Library size: " + length);

        // iterate over the library and print names and artists
        for (int i=0; i<length; i++) {
            final ITLibMediaItem item = allMediaItems.getMediaItem(i);
            System.out.println("Item named " + item.getName() + " by " + item.getArtist());
        }
    }
}
```

Note that you should not call `ITLibrary.getInstance(..)` from the
Event Dispatch Thread (EDT, i.e. the AWT/Swing thread). Also note
that this library is not necessarily thread-safe.


## Logging

jITLibrary uses `java.util.logging`.


## Known Shortcomings

- Apple's code signing requirement sucks
- thread safety may be an issue
- reloading data after changes my not be quick


## API

You can find the complete
[API here](https://hendriks73.github.io/jitlibrary/com/tagtraum/jitlibrary/package-summary.html).


## Additional Resources

- [iTunes Library Framework](https://developer.apple.com/documentation/ituneslibrary/itlibrary)
- [Apple's Code Signing Guide](https://developer.apple.com/library/archive/documentation/Security/Conceptual/CodeSigningGuide/Introduction/Introduction.html)
- [Obstmusic](https://github.com/japlscript/obstmusic)
- [Obstunes](https://github.com/japlscript/obstunes)
 