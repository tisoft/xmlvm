
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVPlayerItemAccessLogEvent (AVPlayerItemAccessLogEventWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVPlayerItemAccessLogEvent (AVPlayerItemAccessLogEventWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVPlayerItemAccessLogEvent.classInitialized)
        __INIT_org_xmlvm_ios_AVPlayerItemAccessLogEvent();
}
@end

void org_xmlvm_ios_AVPlayerItemAccessLogEvent_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVPlayerItemAccessLogEvent class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVPlayerItemAccessLogEvent();
        org_xmlvm_ios_AVPlayerItemAccessLogEvent_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVPlayerItemAccessLogEvent]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVPlayerItemAccessLogEvent]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent___INIT___]
    AVPlayerItemAccessLogEvent* var0 = [[AVPlayerItemAccessLogEvent alloc ] init];
    org_xmlvm_ios_AVPlayerItemAccessLogEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent___INIT___]

    AVPlayerItemAccessLogEvent* var0 = [[AVPlayerItemAccessLogEvent alloc]init];

    org_xmlvm_ios_AVPlayerItemAccessLogEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getNumberOfSegmentsDownloaded__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfSegmentsDownloaded];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getPlaybackStartDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz playbackStartDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getURI__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz URI];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getServerAddress__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz serverAddress];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getNumberOfServerAddressChanges__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfServerAddressChanges];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getPlaybackSessionID__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz playbackSessionID];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getPlaybackStartOffset__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz playbackStartOffset];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getSegmentsDownloadedDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz segmentsDownloadedDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getDurationWatched__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz durationWatched];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getNumberOfStalls__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfStalls];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getNumberOfBytesTransferred__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz numberOfBytesTransferred];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getObservedBitrate__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz observedBitrate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getIndicatedBitrate__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz indicatedBitrate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemAccessLogEvent_getNumberOfDroppedVideoFrames__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfDroppedVideoFrames];
    
    return var0;
//XMLVM_END_WRAPPER
