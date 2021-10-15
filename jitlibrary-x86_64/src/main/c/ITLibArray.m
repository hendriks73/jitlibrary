/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
#import "com_tagtraum_jitlibrary_ITLibArray.h"
#import "Util.h"

/*
 * Class:     com_tagtraum_jitlibrary_ITLibArray
 * Method:    size
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibArray__1size
        (JNIEnv *env, jobject instance) {
    ENTER
    NSArray *array = (NSArray *)getPointer(env, instance);
    if (array == NULL) {
        return 0;
    } else {
        return (jint)array.count;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibArray
 * Method:    _get
 * Signature: (I)J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibArray__1get
        (JNIEnv *env, jobject instance, jint index) {
    ENTER
    NSArray *array = (NSArray *)getPointer(env, instance);
    if (array == NULL) {
        return 0L;
    } else if (index < 0 || index >= [array count]) {
        NSLog(@"Weird... array count = %lu. Returning 0L.", [array count]);
        return 0L;
    } else {
        return (jlong)[array objectAtIndex: index];
    }
    EXIT(env)
    return 0L;
}
