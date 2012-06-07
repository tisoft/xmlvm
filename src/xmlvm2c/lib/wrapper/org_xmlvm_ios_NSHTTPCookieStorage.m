
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSHTTPCookieStorage (NSHTTPCookieStorageWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSHTTPCookieStorage (NSHTTPCookieStorageWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSHTTPCookieStorage.classInitialized)
        __INIT_org_xmlvm_ios_NSHTTPCookieStorage();
}
@end

void org_xmlvm_ios_NSHTTPCookieStorage_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSHTTPCookieStorage class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSHTTPCookieStorage();
        org_xmlvm_ios_NSHTTPCookieStorage_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSHTTPCookieStorage]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSHTTPCookieStorage]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage___INIT____org_xmlvm_ios_NSURL]

    NSHTTPCookieStorage* var0 = [[NSHTTPCookieStorage alloc] initWithStorageLocation:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSHTTPCookieStorage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage___INIT___]
    NSHTTPCookieStorage* var0 = [[NSHTTPCookieStorage alloc ] init];
    org_xmlvm_ios_NSHTTPCookieStorage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage___INIT___]

    NSHTTPCookieStorage* var0 = [[NSHTTPCookieStorage alloc]init];

    org_xmlvm_ios_NSHTTPCookieStorage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage_sharedHTTPCookieStorage__]

    NSHTTPCookieStorage* var0 =  [NSHTTPCookieStorage sharedHTTPCookieStorage];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage_cookies__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz cookies];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage_setCookie___org_xmlvm_ios_NSHTTPCookie]

    XMLVM_VAR_THIZ;
    [thiz  setCookie:(NSHTTPCookie*) (((org_xmlvm_ios_NSHTTPCookie*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage_deleteCookie___org_xmlvm_ios_NSHTTPCookie]

    XMLVM_VAR_THIZ;
    [thiz  deleteCookie:(NSHTTPCookie*) (((org_xmlvm_ios_NSHTTPCookie*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage_cookiesForURL___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  cookiesForURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage_setCookies___java_util_List_org_xmlvm_ios_NSURL_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setCookies:ObjCVar1 forURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) mainDocumentURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage_cookieAcceptPolicy__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz cookieAcceptPolicy];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPCookieStorage_setCookieAcceptPolicy___int]

    XMLVM_VAR_THIZ;
    [thiz  setCookieAcceptPolicy:n1];

    
//XMLVM_END_WRAPPER
