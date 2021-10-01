#import "Util.h"

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
    jclass instanceClass = (*env)->GetObjectClass(env, instance);
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

