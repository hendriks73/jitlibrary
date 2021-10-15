/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
#import "com_tagtraum_jitlibrary_ITLibPlaylist.h"
#import "Util.h"
#import <iTunesLibrary/ITLibPlaylist.h>
#import <iTunesLibrary/ITLibMediaItem.h>


/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    getId
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist_getId
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return 0L;
    } else {
        return getPersistentId((ITLibMediaEntity*)playlist);
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    getParentId
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist__1getParentId
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return 0L;
    } else {
        return toPersistentId(playlist.parentID);
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    isVisible
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist_isVisible
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return false;
    } else {
        return (jboolean)playlist.visible;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    getName
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist_getName
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, playlist.name);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    isMaster
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist_isMaster
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return false;
    } else {
        return (jboolean)playlist.master;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    _getItems
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist__1getItems
        (JNIEnv *env, jobject instance) {
    ENTER
    // get all media items
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return 0L;
    } else {
        NSArray<ITLibMediaItem *> *items = [playlist items];
        return (jlong)items;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    getItemsIds
 * Signature: ()[J
 */
JNIEXPORT jlongArray JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist_getItemsIds
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return (*env)->NewLongArray(env, 0);
    }
    NSArray<ITLibMediaItem *> *items = [playlist items];
    jsize length = (jsize)[items count];
    jlong *ids = malloc(sizeof(jlong) * length);
    int i=0;
    for (i=0; i<length; i++) {
        ids[i] = getPersistentId((ITLibMediaEntity*)[items objectAtIndex: i]);
    }
    //[items release];
    jlongArray newLongArray = (*env)->NewLongArray(env, length);
    if (newLongArray == NULL) {
        return NULL; //  out of memory error thrown
    }
    (*env)->SetLongArrayRegion(env, newLongArray, 0, length, ids);
    free(ids);
    return newLongArray;
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    _getDistinguishedKind
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist__1getDistinguishedKind
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return (jint)ITLibDistinguishedPlaylistKindNone;
    } else {
        return (jint)playlist.distinguishedKind;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibPlaylist
 * Method:    _getKind
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibPlaylist__1getKind
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibPlaylist *playlist = (ITLibPlaylist *) getPointer(env, instance);
    if (playlist == NULL) {
        return (jint)ITLibPlaylistKindRegular;
    } else {
        return (jint)playlist.kind;
    }
    EXIT(env)
    return 0;
}
