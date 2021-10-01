/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
#import "com_tagtraum_jitlibrary_ITLibAlbum.h"
#import "Util.h"
#import <iTunesLibrary/ITLibAlbum.h>

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getId
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getId
        (JNIEnv *env, jobject instance) {
    ITLibMediaEntity *album = (ITLibMediaEntity *) getPointer(env, instance);
    return getPersistentId(album);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getTitle
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getTitle
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return createJavaStringFromNSString(env, album.title);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getSortTitle
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getSortTitle
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return createJavaStringFromNSString(env, album.sortTitle);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getTrackCount
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getTrackCount
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return (jint)album.trackCount;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getRating
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getRating
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return (jint)album.rating;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    isRatingComputed
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_isRatingComputed
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return (jboolean)album.ratingComputed;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    isGapless
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_isGapless
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return (jboolean)album.gapless;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getDiscNumber
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getDiscNumber
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return (jint)album.discNumber;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getDiscCount
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getDiscCount
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return (jint)album.discCount;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    isCompilation
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_isCompilation
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return (jboolean)album.compilation;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getAlbumArtist
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getAlbumArtist
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return createJavaStringFromNSString(env, album.albumArtist);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getSortAlbumArtist
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getSortAlbumArtist
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    return createJavaStringFromNSString(env, album.sortAlbumArtist);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    _release
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum__1release
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album != 0) {
        [album release];
    }
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    _retain
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum__1retain
        (JNIEnv *env, jobject instance) {
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    [album retain];
}
