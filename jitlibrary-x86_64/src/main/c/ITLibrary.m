/*
 * =================================================
 * Copyright 2006-2019 tagtraum industries incorporated
 * All rights reserved.
 * =================================================
 *
 * @author <a href="mailto:hs@tagtraum.com">Hendrik Schreiber</a>
 */
#import "com_tagtraum_jitlibrary_ITLibrary.h"
#import "Util.h"
#import <iTunesLibrary/ITLibrary.h>
#import <iTunesLibrary/ITLibMediaItem.h>
#import <iTunesLibrary/ITLibPlaylist.h>


/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    init
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1init
        (JNIEnv *env, jclass klass, jstring version) {

    NSString *nsVersion = createNSStringFromJavaString(env, version);
    NSError *error = nil;
    ITLibrary *library = [ITLibrary libraryWithAPIVersion:nsVersion error:&error];
    if (library) {
        [library retain];
        return (jlong)library;
    } else {
        throwITLibException(env, [error localizedDescription], error);
        return 0L;
    }
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    getMusicFolderLocation
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1getMusicFolderLocation
        (JNIEnv *env, jobject instance) {

    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    return createJavaStringFromNSString(env, library.musicFolderLocation.absoluteString);
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    isShowContentRating
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibrary_isShowContentRating
        (JNIEnv *env, jobject instance) {

    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    return (jboolean) library.showContentRating;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    getApplicationVersion
 */
JNIEXPORT jstring JNICALL Java_com_tagtraum_jitlibrary_ITLibrary_getApplicationVersion
        (JNIEnv *env, jobject instance) {

    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    return createJavaStringFromNSString(env, library.applicationVersion);
}


/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    getAPIMinorVersion
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibrary_getAPIMinorVersion
        (JNIEnv *env, jobject instance) {

    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    return (jint)library.apiMinorVersion;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    getAPIMajorVersion
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibrary_getAPIMajorVersion
        (JNIEnv *env, jobject instance) {

    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    return (jint)library.apiMajorVersion;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    reloadData
 */
JNIEXPORT jboolean JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1reloadData
        (JNIEnv *env, jobject instance) {

    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    return (jboolean)[library reloadData];
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    unloadData
 */
JNIEXPORT void JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1unloadData
        (JNIEnv *env, jobject instance) {

    if (@available(macOS 10.14, *)) {
        ITLibrary *library = (ITLibrary *) getPointer(env, instance);
        [library unloadData];
    } else {
        // do nothing
        NSLog(@"WARNING: ITLibrary.unloadData is unavailable before macOS 10.14.");
    }
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    _artworkForMediaFile
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1artworkForMediaFile
        (JNIEnv *env, jobject instance, jstring uri) {

    // create NSUrl object
    NSString *urlString = createNSStringFromJavaString(env, uri);
    NSURL *nsURL = [NSURL URLWithString: urlString];
    // get artwork pointer
    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    return (jlong)[library artworkForMediaFile: nsURL];
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    _getMediaItem
 * Signature: (J)J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1getMediaItem
  (JNIEnv *env, jobject instance, jlong mediaItemId) {
    // get all media items
    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    NSArray<ITLibMediaItem *> *items = [library allMediaItems];
    if (items.count == 0) {
        // make sure the library is loaded...
        [library reloadData];
        items = [library allMediaItems];
    }
    // return just the one we are interested in
    int i=0;
    int count = items.count;
    for (i=0; i<count; i++) {
        ITLibMediaItem *item = [items objectAtIndex: i];
        if (getPersistentId(item) == mediaItemId) {
            return (jlong)item;
        }
    }
    return 0L;
}


/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    _getAllMediaItems
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1getAllMediaItems
        (JNIEnv *env, jobject instance) {

    // get all media items
    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    NSArray<ITLibMediaItem *> *items = [library allMediaItems];
    if (items.count == 0) {
        // make sure the library is loaded...
        [library reloadData];
        items = [library allMediaItems];
    }
    return (jlong)items;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    _getAllPlaylists
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1getAllPlaylists
        (JNIEnv *env, jobject instance) {
    // get all media items
    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    NSArray<ITLibPlaylist *> *playlists = [library allPlaylists];
    if (playlists.count == 0) {
        // make sure the library is loaded...
        [library reloadData];
        playlists = [library allPlaylists];
    }
    return (jlong)playlists;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    _getLastItemModification
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1getLastItemModification
        (JNIEnv *env, jobject instance) {
    jlong time = 0;
    NSDate *latest = nil;
    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    if (!library) {
        throwITLibException(env, @"Failed get last modification date. No library.", nil);
        return 0L;
    }
    @try{
        NSArray<ITLibMediaItem *> *items = [library allMediaItems];
        if (items) {
            if ([items count] > 0) {
                NSArray *c = [items copy];
                for (ITLibMediaItem *item in c) {
                    NSDate *addedDate = item.addedDate;
                    NSDate *modifiedDate = item.modifiedDate;
                    if (latest && addedDate) {
                        latest = [addedDate laterDate: latest];
                    } else if (addedDate && !latest) {
                        latest = addedDate;
                    }
                    if (latest && modifiedDate) {
                        latest = [modifiedDate laterDate: latest];
                    } else if (modifiedDate && !latest) {
                        latest = modifiedDate;
                    }
                }
                [c release];
                time = latest ? (jlong)(latest.timeIntervalSince1970 * 1000.) : 0;
            }
        }
    }
    @catch (NSException *e) {
        NSLog(@"getLastItemModification: Failed to get last modification date: %@", e);
        throwITLibException(env, [e reason], e);
        return 0L;
    }
    return time;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    _getMediaItemsChangedSince
 * Signature: (J)J
 */
JNIEXPORT jlong JNICALL Java_com_tagtraum_jitlibrary_ITLibrary__1getMediaItemsChangedSince
        (JNIEnv *env, jobject instance, jlong time) {
    NSMutableArray *changed = [NSMutableArray arrayWithCapacity: 100];
    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    NSArray<ITLibMediaItem *> *items = [library allMediaItems];
    if ([items count] > 0) {
        for (ITLibMediaItem *item in items) {
            NSDate * addedDate = item.addedDate;
            NSDate * modifiedDate = item.modifiedDate;
            NSDate * latest = [addedDate laterDate: modifiedDate];
            if (latest.timeIntervalSince1970 * 1000. > time) {
                [changed addObject: item];
            }
        }
    }
    return (jlong)changed;
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    getMediaItemIds
 * Signature: ()[J
 */
JNIEXPORT jlongArray JNICALL Java_com_tagtraum_jitlibrary_ITLibrary_getMediaItemIds
        (JNIEnv *env, jobject instance) {
    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    NSArray<ITLibMediaItem *> *items = [library allMediaItems];
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
}

/*
 * Class:     com_tagtraum_jitlibrary_ITLibrary
 * Method:    getPlaylistHash
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_tagtraum_jitlibrary_ITLibrary_getPlaylistHash
        (JNIEnv *env, jobject instance) {
    jint hash = 0;
    ITLibrary *library = (ITLibrary *) getPointer(env, instance);
    if (!library) {
        throwITLibException(env, @"Failed to compute playlist hash. No library.", nil);
        return 0L;
    }
    @try{
        NSArray<ITLibPlaylist *> *playlists = [library allPlaylists];
        if (playlists) {
            NSArray *p = [playlists copy];
            for (ITLibPlaylist *playlist in p) {
                if (playlist.visible) {
                    NSArray<ITLibMediaItem *> *items = playlist.items;
                    if (items) {
                        int index = 0;
                        NSArray *i = [items copy];
                        for (ITLibMediaItem *item in i) {
                            if (item) {
                                NSNumber *num = item.persistentID;
                                if (num) {
                                    hash ^= (jint)( (num.unsignedIntegerValue + index) ^ (((unsigned long)num.unsignedIntegerValue) >> 32) );
                                }
                            }
                            //[num release];
                            index++;
                        }
                        [i release];
                    } else {
                        NSLog(@"getPlaylistHash: No items found.");
                    }
                    //[items release];
                }
            }
            [p release];
        } else {
            NSLog(@"getPlaylistHash: No playlists found.");
        }
    }
    @catch (NSException *e) {
        NSLog(@"getPlaylistHash: Failed to compute library playlists hash: %@", e);
        throwITLibException(env, [e reason], e);
        return 0L;
    }//[playlists release];
    return hash;
}
