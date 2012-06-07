
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFConvertFloat32SwappedToHost___org_xmlvm_ios_CFSwappedFloat32]

    float var0 = CFConvertFloat32SwappedToHost(toCFSwappedFloat32(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInCreate___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_IOS_REF(CFURL, var2, n2);
    
    CFBundle* var0 = CFPlugInCreate(var1,var2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFConvertDoubleHostToSwapped___double]

    CFSwappedFloat64 var0 = CFConvertDoubleHostToSwapped(n1);
    
    return fromCFSwappedFloat64(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFConvertFloatHostToSwapped___float]

    CFSwappedFloat32 var0 = CFConvertFloatHostToSwapped(n1);
    
    return fromCFSwappedFloat32(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFConvertDoubleSwappedToHost___org_xmlvm_ios_CFSwappedFloat64]

    double var0 = CFConvertDoubleSwappedToHost(toCFSwappedFloat64(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFEqual___byte_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    Byte var0 = CFEqual(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt32LittleToHost___int]

    int var0 = CFSwapInt32LittleToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFAbsoluteTimeGetDayOfWeek___double_org_xmlvm_ios_NSTimeZone]

    int var0 = CFAbsoluteTimeGetDayOfWeek(n1,(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFCopyTypeIDDescription___long]

    NSString* var0 = CFCopyTypeIDDescription(n1);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFAbsoluteTimeAddGregorianUnits___double_org_xmlvm_ios_NSTimeZone_org_xmlvm_ios_CFGregorianUnits]

    double var0 = CFAbsoluteTimeAddGregorianUnits(n1,(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFGregorianUnits(n3));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesGetAppBooleanValue___java_lang_String_java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    Byte var0 = CFPreferencesGetAppBooleanValue(ObjCVar1,ObjCVar2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt64HostToBig___long]

    long var0 = CFSwapInt64HostToBig(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt16BigToHost___short]

    short var0 = CFSwapInt16BigToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFAbsoluteTimeGetDayOfYear___double_org_xmlvm_ios_NSTimeZone]

    int var0 = CFAbsoluteTimeGetDayOfYear(n1,(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFAbsoluteTimeGetWeekOfYear___double_org_xmlvm_ios_NSTimeZone]

    int var0 = CFAbsoluteTimeGetWeekOfYear(n1,(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesCopyValue___java_lang_String_java_lang_String_java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    CFPropertyList* var0 = CFPreferencesCopyValue(ObjCVar1,ObjCVar2,ObjCVar3,ObjCVar4);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];

    [ObjCVar4 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesSetAppValue___java_lang_String_org_xmlvm_ios_CFPropertyList_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar3 = toNSString(n3);
    CFPreferencesSetAppValue(ObjCVar1,(CFPropertyList*) (((org_xmlvm_ios_CFPropertyList*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar3);
    
    [ObjCVar1 release];

    [ObjCVar3 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesCopyMultiple___org_xmlvm_ios_CFArray_java_lang_String_java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesSetMultiple___org_xmlvm_ios_CFDictionary_org_xmlvm_ios_CFArray_java_lang_String_java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt32HostToBig___int]

    int var0 = CFSwapInt32HostToBig(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFAbsoluteTimeGetGregorianDate___double_org_xmlvm_ios_NSTimeZone]

    CFGregorianDate var0 = CFAbsoluteTimeGetGregorianDate(n1,(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return fromCFGregorianDate(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFByteOrderGetCurrent__]

    long var0 = CFByteOrderGetCurrent();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFRetain___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInRegisterFactoryFunctionByName___org_xmlvm_ios_CFUUID_org_xmlvm_ios_CFBundle_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    
    Byte var0 = CFPlugInRegisterFactoryFunctionByName((CFUUID*) (((org_xmlvm_ios_CFUUID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFBundle*) (((org_xmlvm_ios_CFBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar3);
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFHash___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    long var0 = CFHash(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInFindFactoriesForPlugInTypeInPlugIn___org_xmlvm_ios_CFUUID_org_xmlvm_ios_CFBundle]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFRelease___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CFRelease(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInRegisterFactoryFunction___org_xmlvm_ios_CFUUID_java_lang_Object]

    Byte var0 = CFPlugInRegisterFactoryFunction((CFUUID*) (((org_xmlvm_ios_CFUUID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesCopyKeyList___java_lang_String_java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFConvertFloat32HostToSwapped___float]

    CFSwappedFloat32 var0 = CFConvertFloat32HostToSwapped(n1);
    
    return fromCFSwappedFloat32(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesCopyAppValue___java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    CFPropertyList* var0 = CFPreferencesCopyAppValue(ObjCVar1,ObjCVar2);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInUnregisterPlugInType___org_xmlvm_ios_CFUUID_org_xmlvm_ios_CFUUID]

    Byte var0 = CFPlugInUnregisterPlugInType((CFUUID*) (((org_xmlvm_ios_CFUUID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFUUID*) (((org_xmlvm_ios_CFUUID*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFStreamCreatePairWithSocket___org_xmlvm_ios_CFAllocator_int_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(CFReadStream, var3, jObject3);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(CFWriteStream, var4, jObject4);
    CFStreamCreatePairWithSocket(var1,n2,&var3,&var4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, xmlvm_get_associated_c_object (var4));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFCopyDescription___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = CFCopyDescription(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInSetLoadOnDemand___org_xmlvm_ios_CFBundle_byte]
CFPlugInSetLoadOnDemand((CFBundle*) (((org_xmlvm_ios_CFBundle*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInRegisterPlugInType___org_xmlvm_ios_CFUUID_org_xmlvm_ios_CFUUID]

    Byte var0 = CFPlugInRegisterPlugInType((CFUUID*) (((org_xmlvm_ios_CFUUID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFUUID*) (((org_xmlvm_ios_CFUUID*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFAbsoluteTimeGetCurrent__]

    double var0 = CFAbsoluteTimeGetCurrent();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFAbsoluteTimeGetDifferenceAsGregorianUnits___double_double_org_xmlvm_ios_NSTimeZone_long]

    CFGregorianUnits var0 = CFAbsoluteTimeGetDifferenceAsGregorianUnits(n1,n2,(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj),n4);
    
    return fromCFGregorianUnits(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInRemoveInstanceForFactory___org_xmlvm_ios_CFUUID]
CFPlugInRemoveInstanceForFactory((CFUUID*) (((org_xmlvm_ios_CFUUID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFGetRetainCount___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    long var0 = CFGetRetainCount(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesCopyApplicationList___java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt16___short]

    short var0 = CFSwapInt16(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt64LittleToHost___long]

    long var0 = CFSwapInt64LittleToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesSetValue___java_lang_String_org_xmlvm_ios_CFPropertyList_java_lang_String_java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    NSString * ObjCVar5 = toNSString(n5);
    CFPreferencesSetValue(ObjCVar1,(CFPropertyList*) (((org_xmlvm_ios_CFPropertyList*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar3,ObjCVar4,ObjCVar5);
    
    [ObjCVar1 release];

    [ObjCVar3 release];

    [ObjCVar4 release];

    [ObjCVar5 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInIsLoadOnDemand___org_xmlvm_ios_CFBundle]

    Byte var0 = CFPlugInIsLoadOnDemand((CFBundle*) (((org_xmlvm_ios_CFBundle*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesSynchronize___java_lang_String_java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    Byte var0 = CFPreferencesSynchronize(ObjCVar1,ObjCVar2,ObjCVar3);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInGetBundle___org_xmlvm_ios_CFBundle]

    CFBundle* var0 = CFPlugInGetBundle((CFBundle*) (((org_xmlvm_ios_CFBundle*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt64___long]

    long var0 = CFSwapInt64(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFGetTypeID___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    long var0 = CFGetTypeID(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFMakeCollectable___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFConvertFloat64SwappedToHost___org_xmlvm_ios_CFSwappedFloat64]

    double var0 = CFConvertFloat64SwappedToHost(toCFSwappedFloat64(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFGetAllocator___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    CFAllocatorRef var0 = CFGetAllocator(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
        XMLVM_VAR_INIT_REF(CFAllocator, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFStreamCreateBoundPair___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(CFReadStream, var2, jObject2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(CFWriteStream, var3, jObject3);
    CFStreamCreateBoundPair(var1,&var2,&var3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, xmlvm_get_associated_c_object (var3));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFShow___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CFShow(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesRemoveSuitePreferencesFromApp___java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    CFPreferencesRemoveSuitePreferencesFromApp(ObjCVar1,ObjCVar2);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFConvertFloatSwappedToHost___org_xmlvm_ios_CFSwappedFloat32]

    float var0 = CFConvertFloatSwappedToHost(toCFSwappedFloat32(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt16HostToLittle___short]

    short var0 = CFSwapInt16HostToLittle(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt32___int]

    int var0 = CFSwapInt32(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt16LittleToHost___short]

    short var0 = CFSwapInt16LittleToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt64BigToHost___long]

    long var0 = CFSwapInt64BigToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesAppSynchronize___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    Byte var0 = CFPreferencesAppSynchronize(ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFStreamCreatePairWithSocketToHost___org_xmlvm_ios_CFAllocator_java_lang_String_int_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(CFReadStream, var4, jObject4);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(CFWriteStream, var5, jObject5);
    CFStreamCreatePairWithSocketToHost(var1,ObjCVar2,n3,&var4,&var5);
    org_xmlvm_ios_Reference_set___java_lang_Object(n5, xmlvm_get_associated_c_object (var5));
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesAppValueIsForced___java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    Byte var0 = CFPreferencesAppValueIsForced(ObjCVar1,ObjCVar2);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt64HostToLittle___long]

    long var0 = CFSwapInt64HostToLittle(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInUnregisterFactory___org_xmlvm_ios_CFUUID]

    Byte var0 = CFPlugInUnregisterFactory((CFUUID*) (((org_xmlvm_ios_CFUUID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFConvertFloat64HostToSwapped___double]

    CFSwappedFloat64 var0 = CFConvertFloat64HostToSwapped(n1);
    
    return fromCFSwappedFloat64(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesGetAppIntegerValue___java_lang_String_java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    long var0 = CFPreferencesGetAppIntegerValue(ObjCVar1,ObjCVar2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt32HostToLittle___int]

    int var0 = CFSwapInt32HostToLittle(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInAddInstanceForFactory___org_xmlvm_ios_CFUUID]
CFPlugInAddInstanceForFactory((CFUUID*) (((org_xmlvm_ios_CFUUID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPreferencesAddSuitePreferencesToApp___java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    CFPreferencesAddSuitePreferencesToApp(ObjCVar1,ObjCVar2);
    
    [ObjCVar1 release];

    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInGetTypeID__]

    long var0 = CFPlugInGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt16HostToBig___short]

    short var0 = CFSwapInt16HostToBig(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFPlugInFindFactoriesForPlugInType___org_xmlvm_ios_CFUUID]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFStreamCreatePairWithPeerSocketSignature___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CFSocketSignature var2= toCFSocketSignature(jObject2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(CFReadStream, var3, jObject3);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(CFWriteStream, var4, jObject4);
    CFStreamCreatePairWithPeerSocketSignature(var1,&var2,&var3,&var4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, xmlvm_get_associated_c_object (var4));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFShowStr___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    CFShowStr(ObjCVar1);
    
    [ObjCVar1 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreFoundation_CFSwapInt32BigToHost___int]

    int var0 = CFSwapInt32BigToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER
