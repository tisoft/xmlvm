
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMovieErrorLog (MPMovieErrorLogWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMovieErrorLog (MPMovieErrorLogWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMovieErrorLog.classInitialized)
        __INIT_org_xmlvm_ios_MPMovieErrorLog();
}
@end

void org_xmlvm_ios_MPMovieErrorLog_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMovieErrorLog class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMovieErrorLog();
        org_xmlvm_ios_MPMovieErrorLog_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMovieErrorLog]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMovieErrorLog]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLog___INIT___]
    MPMovieErrorLog* var0 = [[MPMovieErrorLog alloc ] init];
    org_xmlvm_ios_MPMovieErrorLog_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLog___INIT___]

    MPMovieErrorLog* var0 = [[MPMovieErrorLog alloc]init];

    org_xmlvm_ios_MPMovieErrorLog_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLog_getExtendedLogData__]

    XMLVM_VAR_THIZ;
    NSData* var0 = [thiz extendedLogData];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLog_getExtendedLogDataStringEncoding__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz extendedLogDataStringEncoding];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMovieErrorLog_getEvents__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz events];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
