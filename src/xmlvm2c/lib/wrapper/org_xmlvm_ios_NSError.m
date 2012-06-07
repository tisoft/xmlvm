
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSError (NSErrorWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSError (NSErrorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSError.classInitialized)
        __INIT_org_xmlvm_ios_NSError();
}
@end

void org_xmlvm_ios_NSError_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSError class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSError();
        org_xmlvm_ios_NSError_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSError]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSError]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError___INIT____java_lang_String_int_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError___INIT___]
    NSError* var0 = [[NSError alloc ] init];
    org_xmlvm_ios_NSError_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError___INIT___]

    NSError* var0 = [[NSError alloc]init];

    org_xmlvm_ios_NSError_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_errorWithDomain___java_lang_String_int_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_domain__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz domain];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_code__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz code];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_userInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_localizedDescription__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz localizedDescription];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_localizedFailureReason__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz localizedFailureReason];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_localizedRecoverySuggestion__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz localizedRecoverySuggestion];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_localizedRecoveryOptions__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz localizedRecoveryOptions];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_recoveryAttempter__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz recoveryAttempter];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSError_helpAnchor__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz helpAnchor];

    return fromNSString(var0);
//XMLVM_END_WRAPPER
