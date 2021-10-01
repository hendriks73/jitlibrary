/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
#import "com_tagtraum_jitlibrary_ITLibArtist.h"
#import "Util.h"
#import <iTunesLibrary/ITLibArtist.h>


JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibArtist_getId
        (JNIEnv *env, jobject instance) {
    ITLibMediaEntity *artist = (ITLibMediaEntity *) getPointer(env, instance);
    return getPersistentId(artist);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibArtist
 * Method:    getName
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibArtist_getName
        (JNIEnv *env, jobject instance) {
    ITLibArtist *artist = (ITLibArtist *) getPointer(env, instance);
    return createJavaStringFromNSString(env, artist.name);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibArtist
 * Method:    getSortName
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibArtist_getSortName
        (JNIEnv *env, jobject instance) {
    ITLibArtist *artist = (ITLibArtist *) getPointer(env, instance);
    return createJavaStringFromNSString(env, artist.sortName);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibArtist
 * Method:    _release
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_tagtraum_jitlibrary_ITLibArtist__1release
        (JNIEnv *env, jobject instance) {
    ITLibArtist *artist = (ITLibArtist *) getPointer(env, instance);
    if (artist != 0) {
        [artist release];
    }
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibArtist
 * Method:    _retain
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_tagtraum_jitlibrary_ITLibArtist__1retain
        (JNIEnv *env, jobject instance) {
    ITLibArtist *artist = (ITLibArtist *) getPointer(env, instance);
    [artist retain];
}