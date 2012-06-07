
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_DHCPClientPreferencesCopyApplicationOptions___java_lang_String_long_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_SCCopyLastError__]

    CFErrorRef var0 = SCCopyLastError();
        XMLVM_VAR_INIT_REF(CFError, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_CNSetSupportedSSIDs___org_xmlvm_ios_CFArray]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_CNCopySupportedInterfaces__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_CNCopyCurrentNetworkInfo___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_DHCPInfoGetLeaseStartTime___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_DHCPClientPreferencesSetApplicationOptions___java_lang_String_byte_1ARRAY_long]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    Byte var0 = DHCPClientPreferencesSetApplicationOptions(ObjCVar1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_SCNetworkCheckReachabilityByAddress___int_1ARRAY_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a1, n1); 
    XMLVM_VAR_INT_ARRAY(a3, n3); 
    
    Byte var0 = SCNetworkCheckReachabilityByAddress(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_DHCPInfoGetOptionData___org_xmlvm_ios_CFDictionary_byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_SCError__]

    int var0 = SCError();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_CNMarkPortalOnline___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    Byte var0 = CNMarkPortalOnline(ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_SCNetworkCheckReachabilityByName___byte_1ARRAY_int_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    
    Byte var0 = SCNetworkCheckReachabilityByName(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_CNMarkPortalOffline___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    Byte var0 = CNMarkPortalOffline(ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SystemConfiguration_SCErrorString___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
