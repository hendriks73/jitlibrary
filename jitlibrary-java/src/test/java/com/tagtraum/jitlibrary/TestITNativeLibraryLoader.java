/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 */
package com.tagtraum.jitlibrary;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import static com.tagtraum.jitlibrary.ITNativeLibraryLoader.decodeURL;
import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * TestITNativeLibraryLoader.
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
public class TestITNativeLibraryLoader {

    @Test
    public void testFindNonExistingFile() {
        Assertions.assertThrows(FileNotFoundException.class, () -> ITNativeLibraryLoader.findFile("testFindFile", ITNativeLibraryLoader.class, pathname -> false));
    }

    @Test
    public void testFindExistingFile() throws IOException {
        final File directory = ITNativeLibraryLoader.getClasspathOrJarDir(ITNativeLibraryLoader.class);
        final File tempFile = File.createTempFile("findFileTest", "lib", directory);
        tempFile.deleteOnExit();
        final String testFindFile = ITNativeLibraryLoader.findFile("testFindFile", ITNativeLibraryLoader.class, tempFile::equals);
        assertEquals(testFindFile, tempFile.toString());
    }

    @Test
    public void testLibFileFilter() throws IOException {
        final ITNativeLibraryLoader.LibFileFilter mylib = new ITNativeLibraryLoader.LibFileFilter("mylib");
        assertFalse(mylib.accept(new File("slnnfl")));
        assertFalse(mylib.accept(new File("mylib.dylib")));
        final File tempFile = File.createTempFile("mylib", ".dylib");
        tempFile.deleteOnExit();
        assertTrue(mylib.accept(tempFile));
    }

    @Test
    public void testDecodeURL() {
        assertEquals("someString", decodeURL("someString"));
        assertEquals("someString some", decodeURL("someString%20some"));
        assertEquals("  ", decodeURL("%20%20"));
    }

    @Test
    public void testDecodeURLIncompleteTrailingEscapePattern() {
        Assertions.assertThrows(IllegalArgumentException.class, () -> decodeURL("someString%h"));
    }

    @Test
    public void testDecodeURLIllegalHex() {
        Assertions.assertThrows(IllegalArgumentException.class, () -> decodeURL("someString%ah"));
    }

    @Test
    public void testDecodeURLNegativeValue() {
        Assertions.assertThrows(IllegalArgumentException.class, () -> decodeURL("someString%-1"));
    }

    @Test
    public void testVersion() {
        final String version = ITNativeLibraryLoader.VERSION;
        assertNotEquals("unknown", version);
    }
}

