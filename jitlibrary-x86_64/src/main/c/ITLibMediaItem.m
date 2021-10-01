/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
#import "com_tagtraum_jitlibrary_ITLibMediaItem.h"
#import "Util.h"
#import <iTunesLibrary/ITLibMediaItem.h>

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getId
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getId
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return getPersistentId((ITLibMediaEntity*)item);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getTitle
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getTitle
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.title);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getSortTitle
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getSortTitle
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.sortTitle);
}


/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getArtist
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getArtist
        (JNIEnv *env, jobject instance)  {
   ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
   return (jlong)item.artist;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getAlbum
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getAlbum
        (JNIEnv *env, jobject instance)  {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jlong)item.album;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getComposer
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getComposer
        (JNIEnv *env, jobject instance)  {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.composer);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getSortComposer
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getSortComposer
        (JNIEnv *env, jobject instance)  {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.sortComposer);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getRating
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getRating
        (JNIEnv *env, jobject instance)  {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.rating;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isRatingComputed
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isRatingComputed
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jboolean)item.ratingComputed;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getStartTime
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getStartTime
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.startTime;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getStopTime
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getStopTime
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.stopTime;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getGenre
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getGenre
        (JNIEnv *env, jobject instance)  {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.genre);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getKind
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getKind
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.kind);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getMediaKind
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getMediaKind
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.mediaKind;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getLyricsContentRating
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getLyricsContentRating
  (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.lyricsContentRating;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getTotalTime
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getTotalTime
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jlong)item.totalTime;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getTrackNumber
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getTrackNumber
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.trackNumber;
}


/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getCategory
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getCategory
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.category);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getDescription
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getDescription
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.description);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getContentRating
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getContentRating
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.contentRating);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getAddedDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getAddedDate
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    NSDate *date = item.addedDate;
    return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getModifiedDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getModifiedDate
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    NSDate *date = item.modifiedDate;
    return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getBitRate
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getBitRate
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.bitrate;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getSampleRate
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getSampleRate
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.sampleRate;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getBeatsPerMinute
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getBeatsPerMinute
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.beatsPerMinute;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getPlayCount
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getPlayCount
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.playCount;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getLastPlayedDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getLastPlayedDate
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    NSDate *date = item.lastPlayedDate;
    return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getLocation
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getLocation
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    NSURL *location = item.location;
    return createJavaStringFromNSString(env, location.absoluteString);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getLocationType
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getLocationType
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.locationType;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isArtworkAvailable
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isArtworkAvailable
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jboolean)item.artworkAvailable;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getArtwork
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getArtwork
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jlong)item.artwork;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getComments
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getComments
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.comments);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isPurchased
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isPurchased
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jboolean)item.purchased;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isDRMProtected
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isDRMProtected
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jboolean)item.drmProtected;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    hasVideo
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_hasVideo
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jboolean)item.video;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getReleaseDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getReleaseDate
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    NSDate *date = item.releaseDate;
    return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getYear
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getYear
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.year;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getSkipCount
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getSkipCount
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.skipCount;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getSkipDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getSkipDate
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    NSDate *date = item.skipDate;
    return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getVolumeAdjustment
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getVolumeAdjustment
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.volumeAdjustment;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getVolumeNormalizationEnergy
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getVolumeNormalizationEnergy
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.volumeNormalizationEnergy;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isUserDisabled
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isUserDisabled
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jboolean)item.userDisabled;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getGrouping
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getGrouping
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return createJavaStringFromNSString(env, item.grouping);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getFileSize
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getFileSize
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jlong)item.fileSize;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isCloud
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isCloud
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jboolean)item.cloud;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getPlayStatus
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getPlayStatus
        (JNIEnv *env, jobject instance) {
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    return (jint)item.playStatus;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getProperty
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getProperty
        (JNIEnv *env, jobject instance, jstring name) {
    ITLibMediaEntity *entity = (ITLibMediaEntity *) getPointer(env, instance);
    NSString * nsName = createNSStringFromJavaString(env, name);
    jstring jvalue = NULL;
    id value = [entity valueForProperty: nsName];
    if (value) {
        jvalue = createJavaStringFromNSString(env, [value description]);
    }
    return jvalue;
}

