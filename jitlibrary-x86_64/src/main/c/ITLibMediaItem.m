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
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        return getPersistentId((ITLibMediaEntity*)item);
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getTitle
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getTitle
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.title);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getSortTitle
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getSortTitle
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.sortTitle);
    }
    EXIT(env)
    return NULL;
}


/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getArtist
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getArtist
        (JNIEnv *env, jobject instance)  {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
       return (jlong)item.artist;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getAlbum
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getAlbum
        (JNIEnv *env, jobject instance)  {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        return (jlong)item.album;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getComposer
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getComposer
        (JNIEnv *env, jobject instance)  {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.composer);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getSortComposer
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getSortComposer
        (JNIEnv *env, jobject instance)  {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.sortComposer);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getRating
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getRating
        (JNIEnv *env, jobject instance)  {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.rating;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isRatingComputed
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isRatingComputed
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return false;
    } else {
        return (jboolean)item.ratingComputed;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getStartTime
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getStartTime
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.startTime;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getStopTime
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getStopTime
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.stopTime;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getGenre
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getGenre
        (JNIEnv *env, jobject instance)  {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.genre);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getKind
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getKind
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.kind);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getMediaKind
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getMediaKind
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return (jint)ITLibMediaItemMediaKindUnknown;
    } else {
        return (jint)item.mediaKind;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getLyricsContentRating
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getLyricsContentRating
  (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return (jint)ITLibMediaItemLyricsContentRatingNone;
    } else {
        return (jint)item.lyricsContentRating;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getTotalTime
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getTotalTime
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        return (jlong)item.totalTime;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getTrackNumber
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getTrackNumber
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.trackNumber;
    }
    EXIT(env)
    return 0;
}


/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getCategory
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getCategory
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.category);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getDescription
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getDescription
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.description);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getContentRating
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getContentRating
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.contentRating);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getAddedDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getAddedDate
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        NSDate *date = item.addedDate;
        return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getModifiedDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getModifiedDate
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        NSDate *date = item.modifiedDate;
        return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getBitRate
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getBitRate
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.bitrate;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getSampleRate
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getSampleRate
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.sampleRate;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getBeatsPerMinute
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getBeatsPerMinute
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.beatsPerMinute;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getPlayCount
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getPlayCount
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.playCount;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getLastPlayedDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getLastPlayedDate
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        NSDate *date = item.lastPlayedDate;
        return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getLocation
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getLocation
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        NSURL *location = item.location;
        return createJavaStringFromNSString(env, location.absoluteString);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getLocationType
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getLocationType
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return (jint)ITLibMediaItemLocationTypeUnknown;
    } else {
        return (jint)item.locationType;
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isArtworkAvailable
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isArtworkAvailable
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return false;
    } else {
        return (jboolean)item.artworkAvailable;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getArtwork
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getArtwork
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        return (jlong)item.artwork;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getComments
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getComments
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.comments);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isPurchased
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isPurchased
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return false;
    } else {
        return (jboolean)item.purchased;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isDRMProtected
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isDRMProtected
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return false;
    } else {
        return (jboolean)item.drmProtected;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    hasVideo
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_hasVideo
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return false;
    } else {
        return (jboolean)item.video;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getReleaseDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getReleaseDate
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    NSDate *date = item.releaseDate;
    return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getYear
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getYear
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.year;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getSkipCount
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getSkipCount
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0;
    } else {
        return (jint)item.skipCount;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getSkipDate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getSkipDate
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        NSDate *date = item.skipDate;
        return date ? (jlong)(date.timeIntervalSince1970 * 1000.) : 0;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getVolumeAdjustment
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getVolumeAdjustment
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        return (jint)item.volumeAdjustment;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getVolumeNormalizationEnergy
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getVolumeNormalizationEnergy
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        return (jint)item.volumeNormalizationEnergy;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isUserDisabled
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isUserDisabled
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return false;
    } else {
        return (jboolean)item.userDisabled;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getGrouping
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getGrouping
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return NULL;
    } else {
        return createJavaStringFromNSString(env, item.grouping);
    }
    EXIT(env)
    return NULL;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    getFileSize
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_getFileSize
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return 0L;
    } else {
        return (jlong)item.fileSize;
    }
    EXIT(env)
    return 0L;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    isCloud
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem_isCloud
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return false;
    } else {
        return (jboolean)item.cloud;
    }
    EXIT(env)
    return false;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getPlayStatus
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getPlayStatus
        (JNIEnv *env, jobject instance) {
    ENTER
    ITLibMediaItem *item = (ITLibMediaItem *) getPointer(env, instance);
    if (item == NULL) {
        return (jint)ITLibMediaItemPlayStatusNone;
    } else {
        return (jint)item.playStatus;
    }
    EXIT(env)
    return 0;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibMediaItem
 * Method:    _getProperty
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibMediaItem__1getProperty
        (JNIEnv *env, jobject instance, jstring name) {
    ENTER
    ITLibMediaEntity *entity = (ITLibMediaEntity *) getPointer(env, instance);
    if (entity == NULL) {
        return NULL;
    }
    NSString * nsName = createNSStringFromJavaString(env, name);
    jstring jvalue = NULL;
    id value = [entity valueForProperty: nsName];
    if (value) {
        jvalue = createJavaStringFromNSString(env, [value description]);
    }
    return jvalue;
    EXIT(env)
    return NULL;
}

