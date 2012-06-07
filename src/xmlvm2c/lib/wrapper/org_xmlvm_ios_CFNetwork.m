
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFHTTPReadStreamSetRedirectsAutomatically___org_xmlvm_ios_CFReadStream_byte]
CFHTTPReadStreamSetRedirectsAutomatically((CFReadStream*) (((org_xmlvm_ios_CFReadStream*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFStreamCreatePairWithSocketToCFHost___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFHost_int_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(CFReadStream, var4, jObject4);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(CFWriteStream, var5, jObject5);
    CFStreamCreatePairWithSocketToCFHost(var1,(CFHost*) (((org_xmlvm_ios_CFHost*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,&var4,&var5);
    org_xmlvm_ios_Reference_set___java_lang_Object(n5, xmlvm_get_associated_c_object (var5));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFNetworkCopyProxiesForAutoConfigurationScript___java_lang_String_org_xmlvm_ios_CFURL_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFFTPCreateParsedResourceListing___org_xmlvm_ios_CFAllocator_byte_1ARRAY_long_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(CFDictionary, var4, jObject4);
    
    long var0 = CFFTPCreateParsedResourceListing(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,&var4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, xmlvm_get_associated_c_object (var4));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFStreamCreatePairWithSocketToNetService___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFNetService_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(CFReadStream, var3, jObject3);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(CFWriteStream, var4, jObject4);
    CFStreamCreatePairWithSocketToNetService(var1,(CFNetService*) (((org_xmlvm_ios_CFNetService*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),&var3,&var4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, xmlvm_get_associated_c_object (var4));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFNetworkExecuteProxyAutoConfigurationScript___java_lang_String_org_xmlvm_ios_CFURL_java_lang_Object_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_IOS_REF(CFURL, var2, n2);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFStreamClientContext var4= toCFStreamClientContext(jObject4);
    
    CFRunLoopSourceRef var0 = CFNetworkExecuteProxyAutoConfigurationScript(ObjCVar1,var2,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,&var4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromCFStreamClientContext(var4));
    
    [ObjCVar1 release];
    XMLVM_VAR_INIT_REF(CFRunLoopSource, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFNetworkExecuteProxyAutoConfigurationURL___org_xmlvm_ios_CFURL_org_xmlvm_ios_CFURL_java_lang_Object_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    XMLVM_VAR_IOS_REF(CFURL, var2, n2);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFStreamClientContext var4= toCFStreamClientContext(jObject4);
    
    CFRunLoopSourceRef var0 = CFNetworkExecuteProxyAutoConfigurationURL(var1,var2,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,&var4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromCFStreamClientContext(var4));
        XMLVM_VAR_INIT_REF(CFRunLoopSource, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFNetworkCopyProxiesForURL___org_xmlvm_ios_CFURL_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFNetworkCopySystemProxySettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetwork_CFHTTPReadStreamSetProxy___org_xmlvm_ios_CFReadStream_java_lang_String_long]
NSString * ObjCVar2 = toNSString(n2);
    CFHTTPReadStreamSetProxy((CFReadStream*) (((org_xmlvm_ios_CFReadStream*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2,n3);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER
