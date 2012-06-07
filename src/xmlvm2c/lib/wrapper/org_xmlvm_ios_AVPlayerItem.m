
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVPlayerItem (AVPlayerItemWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVPlayerItem (AVPlayerItemWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVPlayerItem.classInitialized)
        __INIT_org_xmlvm_ios_AVPlayerItem();
}
@end

void org_xmlvm_ios_AVPlayerItem_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVPlayerItem class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVPlayerItem();
        org_xmlvm_ios_AVPlayerItem_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVPlayerItem]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVPlayerItem]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem___INIT____org_xmlvm_ios_NSURL]

    AVPlayerItem* var0 = [[AVPlayerItem alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_AVPlayerItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem___INIT____org_xmlvm_ios_AVAsset]

    AVPlayerItem* var0 = [[AVPlayerItem alloc] initWithAsset:(AVAsset*) (((org_xmlvm_ios_AVAsset*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_AVPlayerItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem___INIT___]
    AVPlayerItem* var0 = [[AVPlayerItem alloc ] init];
    org_xmlvm_ios_AVPlayerItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem___INIT___]

    AVPlayerItem* var0 = [[AVPlayerItem alloc]init];

    org_xmlvm_ios_AVPlayerItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_playerItemWithURL___org_xmlvm_ios_NSURL]

    AVPlayerItem* var0 =  [AVPlayerItem  playerItemWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_playerItemWithAsset___org_xmlvm_ios_AVAsset]

    AVPlayerItem* var0 =  [AVPlayerItem  playerItemWithAsset:(AVAsset*) (((org_xmlvm_ios_AVAsset*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getStatus__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz status];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getError__]

    XMLVM_VAR_THIZ;
    NSError* var0 = [thiz error];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_currentTime__]

    XMLVM_VAR_THIZ;
    
    CMTime var0 = [thiz currentTime];

    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_seekToTime___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz  seekToTime:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_seekToTime___org_xmlvm_ios_CMTime_org_xmlvm_ios_CMTime_org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz  seekToTime:toCMTime(n1) toleranceBefore:toCMTime(n2) toleranceAfter:toCMTime(n3)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getAsset__]

    XMLVM_VAR_THIZ;
    AVAsset* var0 = [thiz asset];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getTracks__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz tracks];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getDuration__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz duration];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getPresentationSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz presentationSize];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getForwardPlaybackEndTime__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz forwardPlaybackEndTime];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_setForwardPlaybackEndTime___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz setForwardPlaybackEndTime:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getReversePlaybackEndTime__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz reversePlaybackEndTime];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_setReversePlaybackEndTime___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz setReversePlaybackEndTime:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getAudioMix__]

    XMLVM_VAR_THIZ;
    AVAudioMix* var0 = [thiz audioMix];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_setAudioMix___org_xmlvm_ios_AVAudioMix]

    XMLVM_VAR_THIZ;
    [thiz setAudioMix:(AVAudioMix*) (((org_xmlvm_ios_AVAudioMix*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getVideoComposition__]

    XMLVM_VAR_THIZ;
    AVVideoComposition* var0 = [thiz videoComposition];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_setVideoComposition___org_xmlvm_ios_AVVideoComposition]

    XMLVM_VAR_THIZ;
    [thiz setVideoComposition:(AVVideoComposition*) (((org_xmlvm_ios_AVVideoComposition*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_stepByCount___int]

    XMLVM_VAR_THIZ;
    [thiz  stepByCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_currentDate__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz currentDate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_seekToDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  seekToDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_isPlaybackLikelyToKeepUp__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isPlaybackLikelyToKeepUp];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_isPlaybackBufferFull__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isPlaybackBufferFull];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_isPlaybackBufferEmpty__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isPlaybackBufferEmpty];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getSeekableTimeRanges__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz seekableTimeRanges];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getLoadedTimeRanges__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz loadedTimeRanges];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_getTimedMetadata__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz timedMetadata];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_accessLog__]

    XMLVM_VAR_THIZ;
    
    AVPlayerItemAccessLog* var0 = [thiz accessLog];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItem_errorLog__]

    XMLVM_VAR_THIZ;
    
    AVPlayerItemErrorLog* var0 = [thiz errorLog];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
