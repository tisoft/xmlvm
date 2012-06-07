
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTTypeCopyDeclaration___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTCreateStringForOSType___int]

    NSString* var0 = UTCreateStringForOSType(n1);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTTypeCreateAllIdentifiersForTag___java_lang_String_java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTTypeEqual___java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    Byte var0 = UTTypeEqual(ObjCVar1,ObjCVar2);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTTypeCreatePreferredIdentifierForTag___java_lang_String_java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSString* var0 = UTTypeCreatePreferredIdentifierForTag(ObjCVar1,ObjCVar2,ObjCVar3);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTTypeCopyPreferredTagWithClass___java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = UTTypeCopyPreferredTagWithClass(ObjCVar1,ObjCVar2);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTTypeCopyDescription___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = UTTypeCopyDescription(ObjCVar1);
    
    [ObjCVar1 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTGetOSTypeFromString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = UTGetOSTypeFromString(ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTTypeConformsTo___java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    Byte var0 = UTTypeConformsTo(ObjCVar1,ObjCVar2);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MobileCoreServices_UTTypeCopyDeclaringBundleURL___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    CFURLRef var0 = UTTypeCopyDeclaringBundleURL(ObjCVar1);
    
    [ObjCVar1 release];
    XMLVM_VAR_INIT_REF(CFURL, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER
