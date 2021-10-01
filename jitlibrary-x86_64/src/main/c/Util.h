#include <jni.h>
#include <AppKit/AppKit.h>
#include <iTunesLibrary/ITLibMediaItem.h>
/* Header for class Util */

#ifndef _Included_Util
#define _Included_Util
#ifdef __cplusplus
extern "C" {
#endif

jstring createJavaStringFromNSString(JNIEnv *, NSString *);

NSString* createNSStringFromJavaString(JNIEnv *, jstring);

jlong getPointer(JNIEnv *, jobject);

jlong getPersistentId(ITLibMediaEntity *);

jlong toPersistentId(NSNumber *);

#ifdef __cplusplus
}
#endif
#endif
