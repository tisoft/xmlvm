
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFTimeZone (CFTimeZoneWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFTimeZone (CFTimeZoneWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFTimeZone.classInitialized)
        __INIT_org_xmlvm_ios_CFTimeZone();
}
@end

void org_xmlvm_ios_CFTimeZone_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFTimeZone class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFTimeZone();
        org_xmlvm_ios_CFTimeZone_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFTimeZone]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFTimeZone]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone___INIT____org_xmlvm_ios_CFAllocator_java_lang_String_org_xmlvm_ios_CFData]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    CFTimeZone* var0 = [[CFTimeZone alloc] create:var1];
    org_xmlvm_ios_CFTimeZone_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone___INIT___]
    CFTimeZone* var0 = [[CFTimeZone alloc ] init];
    org_xmlvm_ios_CFTimeZone_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_copySystem__]

    NSTimeZone* var0 = CFTimeZoneCopySystem();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_resetSystem__]
CFTimeZoneResetSystem();
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_copyDefault__]

    NSTimeZone* var0 = CFTimeZoneCopyDefault();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_setDefault__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_copyKnownNames__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_copyAbbreviationDictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_setAbbreviationDictionary___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_createWithTimeIntervalFromGMT___org_xmlvm_ios_CFAllocator_double]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    NSTimeZone* var0 = CFTimeZoneCreateWithTimeIntervalFromGMT(var1,n2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_createWithName___org_xmlvm_ios_CFAllocator_java_lang_String_byte]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSTimeZone* var0 = CFHostCreateWithName(var1,ObjCVar2,n3);
    
    [ObjCVar2 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_getName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_getData__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_getSecondsFromGMT___double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_copyAbbreviation___double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_isDaylightSavingTime___double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_getDaylightSavingTimeOffset___double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_getNextDaylightSavingTimeTransition___double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTimeZone_copyLocalizedName___long_org_xmlvm_ios_CFLocale]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
