
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapLittleLongToHost___long]

    long var0 = NSSwapLittleLongToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostLongToBig___long]

    long var0 = NSSwapHostLongToBig(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSLog___org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSMakeCollectable___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSObject* var0 = NSMakeCollectable(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostDoubleToBig___double]

    NSSwappedDouble var0 = NSSwapHostDoubleToBig(n1);
    
    return fromNSSwappedDouble(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapBigLongToHost___long]

    long var0 = NSSwapBigLongToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSIncrementExtraRefCount___java_lang_Object]
NSIncrementExtraRefCount(((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapInt___int]

    int var0 = NSSwapInt(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapLittleShortToHost___short]

    short var0 = NSSwapLittleShortToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSExtraRefCount___java_lang_Object]

    int var0 = NSExtraRefCount(((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSDeallocateMemoryPages___byte_1ARRAY_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    NSDeallocateMemoryPages(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSConvertHostFloatToSwapped___float]

    NSSwappedFloat var0 = NSConvertHostFloatToSwapped(n1);
    
    return fromNSSwappedFloat(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapBigShortToHost___short]

    short var0 = NSSwapBigShortToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSClassFromString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    Class* var0 = NSClassFromString(ObjCVar1);
    
    [ObjCVar1 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSRoundUpToMultipleOfPageSize___int]

    int var0 = NSRoundUpToMultipleOfPageSize(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSearchPathForDirectoriesInDomains___int_int_boolean]

    NSArray* var0 = NSSearchPathForDirectoriesInDomains(n1,n2,n3);
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSProtocolFromString___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapLittleIntToHost___int]

    int var0 = NSSwapLittleIntToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSelectorFromString___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostIntToBig___int]

    int var0 = NSSwapHostIntToBig(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapBigFloatToHost___org_xmlvm_ios_NSSwappedFloat]

    float var0 = NSSwapBigFloatToHost(toNSSwappedFloat(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSTemporaryDirectory__]

    NSString* var0 = NSTemporaryDirectory();
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSDeallocateObject___java_lang_Object]
NSDeallocateObject(((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSUncaughtExceptionHandler___org_xmlvm_ios_NSException]
NSUncaughtExceptionHandler((NSException*) (((org_xmlvm_ios_NSException*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSCopyMemoryPages___byte_1ARRAY_byte_1ARRAY_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    NSCopyMemoryPages(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NXReadNSObjectFromCoder___org_xmlvm_ios_NSCoder]

    NSObject* var0 = NXReadNSObjectFromCoder((NSCoder*) (((org_xmlvm_ios_NSCoder*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSLogPageSize__]

    int var0 = NSLogPageSize();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapFloat___org_xmlvm_ios_NSSwappedFloat]

    NSSwappedFloat var0 = NSSwapFloat(toNSSwappedFloat(n1));
    
    return fromNSSwappedFloat(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapLittleFloatToHost___org_xmlvm_ios_NSSwappedFloat]

    float var0 = NSSwapLittleFloatToHost(toNSSwappedFloat(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSCopyObject___java_lang_Object_int_org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostIntToLittle___int]

    int var0 = NSSwapHostIntToLittle(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSConvertSwappedFloatToHost___org_xmlvm_ios_NSSwappedFloat]

    float var0 = NSConvertSwappedFloatToHost(toNSSwappedFloat(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSHomeDirectory__]

    NSString* var0 = NSHomeDirectory();
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSConvertSwappedDoubleToHost___org_xmlvm_ios_NSSwappedDouble]

    double var0 = NSConvertSwappedDoubleToHost(toNSSwappedDouble(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSUnionRange___org_xmlvm_ios_NSRange_org_xmlvm_ios_NSRange]

    NSRange var0 = NSUnionRange(toNSRange(n1),toNSRange(n2));
    
    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSDecrementExtraRefCountWasZero___java_lang_Object]

    BOOL var0 = NSDecrementExtraRefCountWasZero(((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSAllocateCollectable___int_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapBigLongLongToHost___long]

    long var0 = NSSwapBigLongLongToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSUserName__]

    NSString* var0 = NSUserName();
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostLongToLittle___long]

    long var0 = NSSwapHostLongToLittle(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSIntersectionRange___org_xmlvm_ios_NSRange_org_xmlvm_ios_NSRange]

    NSRange var0 = NSIntersectionRange(toNSRange(n1),toNSRange(n2));
    
    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapLongLong___long]

    long var0 = NSSwapLongLong(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSRecycleZone___org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostShortToLittle___short]

    short var0 = NSSwapHostShortToLittle(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSMaxRange___org_xmlvm_ios_NSRange]

    int var0 = NSMaxRange(toNSRange(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSAllocateObject___org_xmlvm_ios_Class_int_org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSCreateZone___int_int_boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSLocationInRange___int_org_xmlvm_ios_NSRange]

    BOOL var0 = NSLocationInRange(n1,toNSRange(n2));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostFloatToBig___float]

    NSSwappedFloat var0 = NSSwapHostFloatToBig(n1);
    
    return fromNSSwappedFloat(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSPageSize__]

    int var0 = NSPageSize();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSAllocateMemoryPages___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSEqualRanges___org_xmlvm_ios_NSRange_org_xmlvm_ios_NSRange]

    BOOL var0 = NSEqualRanges(toNSRange(n1),toNSRange(n2));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapShort___short]

    short var0 = NSSwapShort(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSRoundDownToMultipleOfPageSize___int]

    int var0 = NSRoundDownToMultipleOfPageSize(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostLongLongToLittle___long]

    long var0 = NSSwapHostLongLongToLittle(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapBigIntToHost___int]

    int var0 = NSSwapBigIntToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSFullUserName__]

    NSString* var0 = NSFullUserName();
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapLittleDoubleToHost___org_xmlvm_ios_NSSwappedDouble]

    double var0 = NSSwapLittleDoubleToHost(toNSSwappedDouble(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSReallocateCollectable___byte_1ARRAY_int_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSShouldRetainWithZone___java_lang_Object_org_xmlvm_ios_NSZone]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapLong___long]

    long var0 = NSSwapLong(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSMakeRange___int_int]

    NSRange var0 = NSMakeRange(n1,n2);
    
    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSHomeDirectoryForUser___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = NSHomeDirectoryForUser(ObjCVar1);
    
    [ObjCVar1 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSDefaultMallocZone__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostLongLongToBig___long]

    long var0 = NSSwapHostLongLongToBig(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSLogv___java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    NSLogv(ObjCVar1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    [ObjCVar1 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSConvertHostDoubleToSwapped___double]

    NSSwappedDouble var0 = NSConvertHostDoubleToSwapped(n1);
    
    return fromNSSwappedDouble(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapBigDoubleToHost___org_xmlvm_ios_NSSwappedDouble]

    double var0 = NSSwapBigDoubleToHost(toNSSwappedDouble(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSGetUncaughtExceptionHandler__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostShortToBig___short]

    short var0 = NSSwapHostShortToBig(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSGetSizeAndAlignment___byte_1ARRAY_int_1ARRAY_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSOpenStepRootDirectory__]

    NSString* var0 = NSOpenStepRootDirectory();
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapDouble___org_xmlvm_ios_NSSwappedDouble]

    NSSwappedDouble var0 = NSSwapDouble(toNSSwappedDouble(n1));
    
    return fromNSSwappedDouble(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSRealMemoryAvailable__]

    int var0 = NSRealMemoryAvailable();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostDoubleToLittle___double]

    NSSwappedDouble var0 = NSSwapHostDoubleToLittle(n1);
    
    return fromNSSwappedDouble(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapHostFloatToLittle___float]

    NSSwappedFloat var0 = NSSwapHostFloatToLittle(n1);
    
    return fromNSSwappedFloat(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_Foundation_NSSwapLittleLongLongToHost___long]

    long var0 = NSSwapLittleLongLongToHost(n1);
    
    return var0;
//XMLVM_END_WRAPPER
