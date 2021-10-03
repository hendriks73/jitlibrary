/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
#import "com_tagtraum_jitlibrary_ITLibArtwork.h"
#import "Util.h"
#import <iTunesLibrary/ITLibArtwork.h>


/*
 * Class:     com_tagtraum_jitlibrary_ITLibArtwork
 * Method:    getImageData
 */
JNIEXPORT jbyteArray JNICALL Java_com_tagtraum_jitlibrary_ITLibArtwork_getImageData
        (JNIEnv *env, jobject instance) {
    ITLibArtwork *artwork = (ITLibArtwork *) getPointer(env, instance);
    NSData *data = artwork.imageData;
    if (data) {
        jsize length = (jsize)data.length;
        const void *bytes = data.bytes;
        jbyteArray newByteArray = (*env)->NewByteArray(env, length);
        if (newByteArray == NULL) {
            return NULL; //  out of memory error thrown
        }
        (*env)->SetByteArrayRegion(env, newByteArray, 0, length, bytes);
        return newByteArray;
    } else {
        return (*env)->NewByteArray(env, 0);
    }
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibArtwork
 * Method:    _getImageDataFormat
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibArtwork__1getImageDataFormat
        (JNIEnv *env, jobject instance) {
    ITLibArtwork *artwork = (ITLibArtwork *) getPointer(env, instance);
    return (jint)artwork.imageDataFormat;
}
