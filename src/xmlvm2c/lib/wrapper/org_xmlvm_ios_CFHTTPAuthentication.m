
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFHTTPAuthentication (CFHTTPAuthenticationWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFHTTPAuthentication (CFHTTPAuthenticationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFHTTPAuthentication.classInitialized)
        __INIT_org_xmlvm_ios_CFHTTPAuthentication();
}
@end

void org_xmlvm_ios_CFHTTPAuthentication_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFHTTPAuthentication class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFHTTPAuthentication();
        org_xmlvm_ios_CFHTTPAuthentication_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFHTTPAuthentication]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFHTTPAuthentication]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication___INIT___]
    CFHTTPAuthentication* var0 = [[CFHTTPAuthentication alloc ] init];
    org_xmlvm_ios_CFHTTPAuthentication_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_createFromResponse___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFHTTPMessage]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFHTTPAuthentication* var0 = CFHTTPAuthenticationCreateFromResponse(var1,(CFHTTPMessage*) (((org_xmlvm_ios_CFHTTPMessage*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_isValid___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_appliesToRequest___org_xmlvm_ios_CFHTTPMessage]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_requiresOrderedRequests__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_copyRealm__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_copyDomains__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_copyMethod__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_requiresUserNameAndPassword__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPAuthentication_requiresAccountDomain__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
