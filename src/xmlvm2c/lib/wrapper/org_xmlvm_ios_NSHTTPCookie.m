
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSHTTPCookie (NSHTTPCookieWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSHTTPCookie (NSHTTPCookieWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSHTTPCookie.classInitialized)
        __INIT_org_xmlvm_ios_NSHTTPCookie();
}
@end

void org_xmlvm_ios_NSHTTPCookie_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSHTTPCookie class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSHTTPCookie();
        org_xmlvm_ios_NSHTTPCookie_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSHTTPCookie]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSHTTPCookie]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie___INIT____java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie___INIT___]
    NSHTTPCookie* var0 = [[NSHTTPCookie alloc ] init];
    org_xmlvm_ios_NSHTTPCookie_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie___INIT___]

    NSHTTPCookie* var0 = [[NSHTTPCookie alloc]init];

    org_xmlvm_ios_NSHTTPCookie_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_cookieWithProperties___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_requestHeaderFieldsWithCookies___java_util_List]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_cookiesWithResponseHeaderFields___java_util_Map_org_xmlvm_ios_NSURL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_properties__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_version__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz version];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_value__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz value];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_expiresDate__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz expiresDate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_isSessionOnly__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isSessionOnly];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_domain__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz domain];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_path__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz path];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_isSecure__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isSecure];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_isHTTPOnly__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isHTTPOnly];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_comment__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz comment];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_commentURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz commentURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookie_portList__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz portList];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER
