
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFHTTPMessage (CFHTTPMessageWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFHTTPMessage (CFHTTPMessageWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFHTTPMessage.classInitialized)
        __INIT_org_xmlvm_ios_CFHTTPMessage();
}
@end

void org_xmlvm_ios_CFHTTPMessage_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFHTTPMessage class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFHTTPMessage();
        org_xmlvm_ios_CFHTTPMessage_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFHTTPMessage]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFHTTPMessage]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage___INIT___]
    CFHTTPMessage* var0 = [[CFHTTPMessage alloc ] init];
    org_xmlvm_ios_CFHTTPMessage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_applyCredentials___org_xmlvm_ios_CFHTTPAuthentication_java_lang_String_java_lang_String_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_applyCredentialDictionary___org_xmlvm_ios_CFHTTPAuthentication_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_createRequest___org_xmlvm_ios_CFAllocator_java_lang_String_org_xmlvm_ios_CFURL_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    XMLVM_VAR_IOS_REF(CFURL, var3, n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    CFHTTPMessage* var0 = CFHTTPMessageCreateRequest(var1,ObjCVar2,var3,ObjCVar4);
    
    [ObjCVar2 release];

    [ObjCVar4 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_createResponse___org_xmlvm_ios_CFAllocator_long_java_lang_String_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    CFHTTPMessage* var0 = CFHTTPMessageCreateResponse(var1,n2,ObjCVar3,ObjCVar4);
    
    [ObjCVar3 release];

    [ObjCVar4 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_createEmpty___org_xmlvm_ios_CFAllocator_byte]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFHTTPMessage* var0 = CFHTTPMessageCreateEmpty(var1,n2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_createCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFHTTPMessage]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFHTTPMessage* var0 = CFHostCreateCopy(var1,(CFHTTPMessage*) (((org_xmlvm_ios_CFHTTPMessage*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_isRequest__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_copyVersion__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_copyBody__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_setBody___org_xmlvm_ios_CFData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_copyHeaderFieldValue___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_copyAllHeaderFields__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_setHeaderFieldValue___java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_appendBytes___byte_1ARRAY_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_isHeaderComplete__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_copySerializedMessage__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_copyRequestURL__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_copyRequestMethod__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_addAuthentication___org_xmlvm_ios_CFHTTPMessage_java_lang_String_java_lang_String_java_lang_String_byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_getResponseStatusCode__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHTTPMessage_copyResponseStatusLine__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
