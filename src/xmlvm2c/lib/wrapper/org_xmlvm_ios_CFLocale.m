
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CFLocale_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFLocale class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFLocale();
        org_xmlvm_ios_CFLocale_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFLocale]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFLocale]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale___INIT____org_xmlvm_ios_CFAllocator_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    CFLocale* var0 = [[CFLocale alloc] create:var1];
    org_xmlvm_ios_CFLocale_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale___INIT___]
    CFLocale* var0 = [[CFLocale alloc ] init];
    org_xmlvm_ios_CFLocale_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_getSystem__]

    CFLocale* var0 = CFLocaleGetSystem();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_copyCurrent__]

    CFLocale* var0 = CFCalendarCopyCurrent();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_copyAvailableLocaleIdentifiers__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_copyISOLanguageCodes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_copyISOCountryCodes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_copyISOCurrencyCodes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_copyCommonISOCurrencyCodes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_copyPreferredLanguages__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_createCanonicalLanguageIdentifierFromString___org_xmlvm_ios_CFAllocator_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = CFLocaleCreateCanonicalLanguageIdentifierFromString(var1,ObjCVar2);
    
    [ObjCVar2 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_createCanonicalLocaleIdentifierFromString___org_xmlvm_ios_CFAllocator_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = CFLocaleCreateCanonicalLocaleIdentifierFromString(var1,ObjCVar2);
    
    [ObjCVar2 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_createCanonicalLocaleIdentifierFromScriptManagerCodes___org_xmlvm_ios_CFAllocator_short_short]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    NSString* var0 = CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(var1,n2,n3);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_createLocaleIdentifierFromWindowsLocaleCode___org_xmlvm_ios_CFAllocator_int]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    NSString* var0 = CFLocaleCreateLocaleIdentifierFromWindowsLocaleCode(var1,n2);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_getWindowsLocaleCodeFromLocaleIdentifier___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = CFLocaleGetWindowsLocaleCodeFromLocaleIdentifier(ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_getLanguageCharacterDirection___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    long var0 = CFLocaleGetLanguageCharacterDirection(ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_getLanguageLineDirection___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    long var0 = CFLocaleGetLanguageLineDirection(ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_createComponentsFromLocaleIdentifier___org_xmlvm_ios_CFAllocator_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_createLocaleIdentifierFromComponents___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_createCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFLocale]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFLocale* var0 = CFHostCreateCopy(var1,(CFLocale*) (((org_xmlvm_ios_CFLocale*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_getIdentifier__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_getValue___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFLocale_copyDisplayNameForPropertyValue___java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
