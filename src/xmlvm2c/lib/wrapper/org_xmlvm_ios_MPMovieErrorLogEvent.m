
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMovieErrorLogEvent (MPMovieErrorLogEventWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMovieErrorLogEvent (MPMovieErrorLogEventWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMovieErrorLogEvent.classInitialized)
        __INIT_org_xmlvm_ios_MPMovieErrorLogEvent();
}
@end

void org_xmlvm_ios_MPMovieErrorLogEvent_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMovieErrorLogEvent class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMovieErrorLogEvent();
        org_xmlvm_ios_MPMovieErrorLogEvent_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMovieErrorLogEvent]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMovieErrorLogEvent]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent___INIT___]
    MPMovieErrorLogEvent* var0 = [[MPMovieErrorLogEvent alloc ] init];
    org_xmlvm_ios_MPMovieErrorLogEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent___INIT___]

    MPMovieErrorLogEvent* var0 = [[MPMovieErrorLogEvent alloc]init];

    org_xmlvm_ios_MPMovieErrorLogEvent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent_getDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz date];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent_getURI__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz URI];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent_getServerAddress__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz serverAddress];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent_getPlaybackSessionID__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz playbackSessionID];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent_getErrorStatusCode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz errorStatusCode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent_getErrorDomain__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz errorDomain];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLogEvent_getErrorComment__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz errorComment];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER
