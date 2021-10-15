/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */

#include <jni.h>
#include <AppKit/AppKit.h>
#include <iTunesLibrary/ITLibMediaItem.h>
/* Header for class Util */

#ifndef _Included_Util
#define _Included_Util
#ifdef __cplusplus
extern "C" {
#endif

#define ENTER @try {

#define EXIT(env) }\
    @catch (NSException *e) {\
        NSLog(@"Objective-C failure. Throwing ITLibRuntimeException: %@", e);\
        jclass klass = (*env)->FindClass(env, "com/tagtraum/jitlibrary/ITLibRuntimeException");\
        if (klass != NULL) {\
            (*env)->ThrowNew(env, klass, [[e description] UTF8String]);\
        }\
    }

jstring createJavaStringFromNSString(JNIEnv *, NSString *);

NSString* createNSStringFromJavaString(JNIEnv *, jstring);

jlong getPointer(JNIEnv *, jobject);

jlong getPersistentId(ITLibMediaEntity *);

jlong toPersistentId(NSNumber *);

void throwITLibException(JNIEnv *, NSString *, NSObject *);

#ifdef __cplusplus
}
#endif
#endif
