
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMovieAccessLogEvent (MPMovieAccessLogEventWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMovieAccessLogEvent (MPMovieAccessLogEventWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMovieAccessLogEvent.classInitialized)
        __INIT_org_xmlvm_ios_MPMovieAccessLogEvent();
}
@end

void org_xmlvm_ios_MPMovieAccessLogEvent_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMovieAccessLogEvent class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMovieAccessLogEvent();
        org_xmlvm_ios_MPMovieAccessLogEvent_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMovieAccessLogEvent]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMovieAccessLogEvent]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent___INIT___]
    MPMovieAccessLogEvent* var0 = [[MPMovieAccessLogEvent alloc ] init];
    org_xmlvm_ios_MPMovieAccessLogEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent___INIT___]

    MPMovieAccessLogEvent* var0 = [[MPMovieAccessLogEvent alloc]init];

    org_xmlvm_ios_MPMovieAccessLogEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getNumberOfSegmentsDownloaded__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfSegmentsDownloaded];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getPlaybackStartDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz playbackStartDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getURI__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz URI];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getServerAddress__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz serverAddress];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getNumberOfServerAddressChanges__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfServerAddressChanges];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getPlaybackSessionID__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz playbackSessionID];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getPlaybackStartOffset__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz playbackStartOffset];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getSegmentsDownloadedDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz segmentsDownloadedDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getDurationWatched__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz durationWatched];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getNumberOfStalls__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfStalls];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getNumberOfBytesTransferred__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz numberOfBytesTransferred];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getObservedBitrate__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz observedBitrate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getIndicatedBitrate__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz indicatedBitrate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieAccessLogEvent_getNumberOfDroppedVideoFrames__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfDroppedVideoFrames];
    
    return var0;
//XMLVM_END_WRAPPER
