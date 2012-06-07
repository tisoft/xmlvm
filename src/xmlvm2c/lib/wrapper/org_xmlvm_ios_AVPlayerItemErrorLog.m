
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVPlayerItemErrorLog (AVPlayerItemErrorLogWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVPlayerItemErrorLog (AVPlayerItemErrorLogWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVPlayerItemErrorLog.classInitialized)
        __INIT_org_xmlvm_ios_AVPlayerItemErrorLog();
}
@end

void org_xmlvm_ios_AVPlayerItemErrorLog_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVPlayerItemErrorLog class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVPlayerItemErrorLog();
        org_xmlvm_ios_AVPlayerItemErrorLog_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVPlayerItemErrorLog]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVPlayerItemErrorLog]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLog___INIT___]
    AVPlayerItemErrorLog* var0 = [[AVPlayerItemErrorLog alloc ] init];
    org_xmlvm_ios_AVPlayerItemErrorLog_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLog___INIT___]

    AVPlayerItemErrorLog* var0 = [[AVPlayerItemErrorLog alloc]init];

    org_xmlvm_ios_AVPlayerItemErrorLog_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLog_extendedLogData__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz extendedLogData];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLog_extendedLogDataStringEncoding__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz extendedLogDataStringEncoding];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVPlayerItemErrorLog_getEvents__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz events];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
