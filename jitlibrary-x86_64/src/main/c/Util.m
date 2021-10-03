/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */

#import "Util.h"

static const char IT_LIB_EXCEPTION_CLASS[] = "com/tagtraum/jitlibrary/ITLibException";
static const char REFERENCE_COUNTED_OBJECT_CLASS[] = "com/tagtraum/jitlibrary/ReferenceCountedObject";

jstring createJavaStringFromNSString(JNIEnv *env, NSString *nativeStr) {
    if (nativeStr == NULL) {
        return NULL;
    }
    // Note that length returns the number of UTF-16 characters,
    // which is not necessarily the number of printed/composed characters
    jsize buflength = [nativeStr length];
    unichar buffer[buflength];
    [nativeStr getCharacters:buffer];
    jstring javaStr = (*env)->NewString(env, (jchar *)buffer, buflength);
    return javaStr;
}

NSString* createNSStringFromJavaString(JNIEnv *env, jstring javaString) {
    const jchar *jChars = (*env)->GetStringChars(env, javaString, NULL);
    NSString *nativeString = [NSString stringWithCharacters:(UniChar *)jChars
                                                     length:(*env)->GetStringLength(env, javaString)];
    (*env)->ReleaseStringChars(env, javaString, jChars);
    return nativeString;
}

jlong getPointer(JNIEnv *env, jobject instance) {
    // get pointer from instance
    // TODO: cache field id, instead of looking it up again and again...
    jclass instanceClass = (*env)->FindClass(env, REFERENCE_COUNTED_OBJECT_CLASS);
    jfieldID f = (*env)->GetFieldID(env, instanceClass, "pointer", "J");
    return (*env)->GetLongField(env, instance, f);
}

jlong getPersistentId(ITLibMediaEntity *entity) {
    if (entity) {
        return toPersistentId(entity.persistentID);
    } else {
        return 0;
    }
}

jlong toPersistentId(NSNumber *number) {
    NSUInteger nsui = number.unsignedIntegerValue;
    if (nsui == 0) {
        return 0;
    } else {
        return (jlong) (nsui + LONG_MIN);
    }
}

void throwITLibException(JNIEnv *env, NSString *description, NSObject *error) {
    jclass klass = (*env)->FindClass(env, IT_LIB_EXCEPTION_CLASS);
    if (klass != NULL) {
        NSLog(@"%@\n%@", description, error);
        (*env)->ThrowNew(env, klass, [description UTF8String]);
    }
}

