/*
 * =================================================
 * Copyright 2021 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
#import "com_tagtraum_jitlibrary_ReferenceCountedObject.h"
#import "Util.h"

/*
 * Class:     com_tagtraum_jitlibrary_ReferenceCountedObject
 * Method:    _release
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_com_tagtraum_jitlibrary_ReferenceCountedObject__1release
        (JNIEnv *env, jclass klass, jlong pointer) {
    NSObject *object = (NSObject *) pointer;
    if (object != 0) {
        [object release];
    }
}

/*
 * Class:     com_tagtraum_jitlibrary_ReferenceCountedObject
 * Method:    _retain
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_com_tagtraum_jitlibrary_ReferenceCountedObject__1retain
        (JNIEnv *env, jclass klass, jlong pointer) {
    NSObject *object = (NSObject *) pointer;
    if (object != 0) {
        [object retain];
    }
}
