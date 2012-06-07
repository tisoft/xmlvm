
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVPlayerItemErrorLogEvent (AVPlayerItemErrorLogEventWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVPlayerItemErrorLogEvent (AVPlayerItemErrorLogEventWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVPlayerItemErrorLogEvent.classInitialized)
        __INIT_org_xmlvm_ios_AVPlayerItemErrorLogEvent();
}
@end

void org_xmlvm_ios_AVPlayerItemErrorLogEvent_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVPlayerItemErrorLogEvent class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVPlayerItemErrorLogEvent();
        org_xmlvm_ios_AVPlayerItemErrorLogEvent_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVPlayerItemErrorLogEvent]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVPlayerItemErrorLogEvent]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent___INIT___]
    AVPlayerItemErrorLogEvent* var0 = [[AVPlayerItemErrorLogEvent alloc ] init];
    org_xmlvm_ios_AVPlayerItemErrorLogEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent___INIT___]

    AVPlayerItemErrorLogEvent* var0 = [[AVPlayerItemErrorLogEvent alloc]init];

    org_xmlvm_ios_AVPlayerItemErrorLogEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent_getDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz date];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent_getURI__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz URI];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent_getServerAddress__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz serverAddress];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent_getPlaybackSessionID__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz playbackSessionID];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent_getErrorStatusCode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz errorStatusCode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent_getErrorDomain__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz errorDomain];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLogEvent_getErrorComment__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz errorComment];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER
