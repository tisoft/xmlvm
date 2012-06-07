
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CFError_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFError]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError___INIT____org_xmlvm_ios_CFAllocator_java_lang_String_long_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError_getTypeID__]

    long var0 = CFErrorGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError_createWithUserInfoKeysAndValues___org_xmlvm_ios_CFAllocator_java_lang_String_long_byte_2ARRAY_byte_2ARRAY_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError_getDomain__]

    XMLVM_VAR_CFTHIZ;
    
    NSString* var0 = CFErrorGetDomain(thiz);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError_getCode__]

    XMLVM_VAR_CFTHIZ;
    
    long var0 = CFErrorGetCode(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError_copyUserInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError_copyDescription__]

    XMLVM_VAR_CFTHIZ;
    
    NSString* var0 = CFErrorCopyDescription(thiz);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError_copyFailureReason__]

    XMLVM_VAR_CFTHIZ;
    
    NSString* var0 = CFErrorCopyFailureReason(thiz);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFError_copyRecoverySuggestion__]

    XMLVM_VAR_CFTHIZ;
    
    NSString* var0 = CFErrorCopyRecoverySuggestion(thiz);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER
