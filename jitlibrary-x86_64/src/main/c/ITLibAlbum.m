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
    ENTER
    ITLibMediaEntity *album = (ITLibMediaEntity *) getPointer(env, instance);
    if (album == NULL) {
        return 0L;
    } else {
        return getPersistentId(album);
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getTitle
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getTitle
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, album.title);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getSortTitle
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getSortTitle
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, album.sortTitle);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getTrackCount
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getTrackCount
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return 0;
    } else {
        return (jint)album.trackCount;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getRating
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getRating
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return 0;
    } else {
        return (jint)album.rating;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    isRatingComputed
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_isRatingComputed
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return 0;
    } else {
        return (jint)album.ratingComputed;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    isGapless
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_isGapless
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return false;
    } else {
        return (jboolean)album.gapless;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getDiscNumber
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getDiscNumber
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return 0;
    } else {
        return (jint)album.discNumber;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getDiscCount
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getDiscCount
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return 0;
    } else {
        return (jint)album.discCount;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    isCompilation
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_isCompilation
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return false;
    } else {
        return (jboolean)album.compilation;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getAlbumArtist
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getAlbumArtist
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, album.albumArtist);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibAlbum
 * Method:    getSortAlbumArtist
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibAlbum_getSortAlbumArtist
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibAlbum *album = (ITLibAlbum *) getPointer(env, instance);
    if (album == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, album.sortAlbumArtist);
    }
    EXIT(env)
    return NULL;
}
