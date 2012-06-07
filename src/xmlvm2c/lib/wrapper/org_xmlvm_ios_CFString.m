
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFString (CFStringWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFString (CFStringWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFString.classInitialized)
        __INIT_org_xmlvm_ios_CFString();
}
@end

void org_xmlvm_ios_CFString_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFString class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFString();
        org_xmlvm_ios_CFString_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFString]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFString]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString___INIT___]
    CFString* var0 = [[CFString alloc ] init];
    org_xmlvm_ios_CFString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithPascalString___org_xmlvm_ios_CFAllocator_byte_1ARRAY_int]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSString* var0 = CFStringCreateWithPascalString(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithCString___org_xmlvm_ios_CFAllocator_byte_1ARRAY_int]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSString* var0 = CFStringCreateWithCString(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithBytes___org_xmlvm_ios_CFAllocator_byte_1ARRAY_long_int_byte]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSString* var0 = CFStringCreateWithBytes(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,n4,n5);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithCharacters___org_xmlvm_ios_CFAllocator_short_1ARRAY_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_SHORT_ARRAY(a2, n2); 
    
    NSString* var0 = CFStringCreateWithCharacters(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithPascalStringNoCopy___org_xmlvm_ios_CFAllocator_byte_1ARRAY_int_org_xmlvm_ios_CFAllocator]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    XMLVM_VAR_IOS_REF(CFAllocator, var4, n4);
    
    NSString* var0 = CFStringCreateWithPascalStringNoCopy(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,var4);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithCStringNoCopy___org_xmlvm_ios_CFAllocator_byte_1ARRAY_int_org_xmlvm_ios_CFAllocator]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    XMLVM_VAR_IOS_REF(CFAllocator, var4, n4);
    
    NSString* var0 = CFStringCreateWithCStringNoCopy(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,var4);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithBytesNoCopy___org_xmlvm_ios_CFAllocator_byte_1ARRAY_long_int_byte_org_xmlvm_ios_CFAllocator]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    XMLVM_VAR_IOS_REF(CFAllocator, var6, n6);
    
    NSString* var0 = CFDataCreateWithBytesNoCopy(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,n4,n5,var6);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithCharactersNoCopy___org_xmlvm_ios_CFAllocator_short_1ARRAY_long_org_xmlvm_ios_CFAllocator]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_SHORT_ARRAY(a2, n2); 
    XMLVM_VAR_IOS_REF(CFAllocator, var4, n4);
    
    NSString* var0 = CFStringCreateWithCharactersNoCopy(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,var4);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithSubstring___org_xmlvm_ios_CFAllocator_java_lang_String_org_xmlvm_ios_CFRange]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = CFAttributedStringCreateWithSubstring(var1,ObjCVar2,toCFRange(n3));
    
    [ObjCVar2 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createCopy___org_xmlvm_ios_CFAllocator_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = CFHostCreateCopy(var1,ObjCVar2);
    
    [ObjCVar2 release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithFormat___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithFormatAndArguments___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFDictionary_java_lang_String_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createMutable___org_xmlvm_ios_CFAllocator_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFString* var0 = ABMultiValueCreateMutable(var1,n2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createMutableCopy___org_xmlvm_ios_CFAllocator_long_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar3 = toNSString(n3);
    
    CFString* var0 = ABMultiValueCreateMutableCopy(var1,n2,ObjCVar3);
    
    [ObjCVar3 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createMutableWithExternalCharactersNoCopy___org_xmlvm_ios_CFAllocator_short_1ARRAY_long_long_org_xmlvm_ios_CFAllocator]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_SHORT_ARRAY(a2, n2); 
    XMLVM_VAR_IOS_REF(CFAllocator, var5, n5);
    
    CFString* var0 = CFStringCreateMutableWithExternalCharactersNoCopy(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,n4,var5);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getLength__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getCharacterAtIndex___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getCharacters___org_xmlvm_ios_CFRange_short_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getPascalString___byte_1ARRAY_long_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getCString___byte_1ARRAY_long_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getPascalStringPtr___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getCStringPtr___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getCharactersPtr__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getBytes___org_xmlvm_ios_CFRange_int_byte_byte_byte_1ARRAY_long_long_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createFromExternalRepresentation___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFData_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createExternalRepresentation___org_xmlvm_ios_CFAllocator_java_lang_String_int_byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getSmallestEncoding__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getFastestEncoding__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getSystemEncoding__]

    int var0 = CFStringGetSystemEncoding();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getMaximumSizeForEncoding___long_int]

    long var0 = CFStringGetMaximumSizeForEncoding(n1,n2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getFileSystemRepresentation___byte_1ARRAY_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getMaximumSizeOfFileSystemRepresentation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createWithFileSystemRepresentation___org_xmlvm_ios_CFAllocator_byte_1ARRAY]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSString* var0 = CFStringCreateWithFileSystemRepresentation(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_compareWithOptionsAndLocale___java_lang_String_org_xmlvm_ios_CFRange_long_org_xmlvm_ios_CFLocale]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_compareWithOptions___java_lang_String_org_xmlvm_ios_CFRange_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_compare___java_lang_String_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_findWithOptionsAndLocale___java_lang_String_org_xmlvm_ios_CFRange_long_org_xmlvm_ios_CFLocale_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_findWithOptions___java_lang_String_org_xmlvm_ios_CFRange_long_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createArrayWithFindResults___org_xmlvm_ios_CFAllocator_java_lang_String_java_lang_String_org_xmlvm_ios_CFRange_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_find___java_lang_String_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_hasPrefix___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_hasSuffix___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getRangeOfComposedCharactersAtIndex___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_findCharacterFromSet___org_xmlvm_ios_CFCharacterSet_org_xmlvm_ios_CFRange_long_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getLineBounds___org_xmlvm_ios_CFRange_long_1ARRAY_long_1ARRAY_long_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getParagraphBounds___org_xmlvm_ios_CFRange_long_1ARRAY_long_1ARRAY_long_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getHyphenationLocationBeforeIndex___long_org_xmlvm_ios_CFRange_long_org_xmlvm_ios_CFLocale_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_isHyphenationAvailableForLocale___org_xmlvm_ios_CFLocale]

    Byte var0 = CFStringIsHyphenationAvailableForLocale((CFLocale*) (((org_xmlvm_ios_CFLocale*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createByCombiningStrings___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFArray_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_createArrayBySeparatingStrings___org_xmlvm_ios_CFAllocator_java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getIntValue__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getDoubleValue__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_append___org_xmlvm_ios_CFString_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    CFStringAppend((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_appendCharacters___org_xmlvm_ios_CFString_short_1ARRAY_long]
XMLVM_VAR_SHORT_ARRAY(a2, n2); 
    CFStringAppendCharacters((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_appendPascalString___org_xmlvm_ios_CFString_byte_1ARRAY_int]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFStringAppendPascalString((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_appendCString___org_xmlvm_ios_CFString_byte_1ARRAY_int]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFStringAppendCString((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_appendFormat___org_xmlvm_ios_CFString_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_appendFormatAndArguments___org_xmlvm_ios_CFString_org_xmlvm_ios_CFDictionary_java_lang_String_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_insert___org_xmlvm_ios_CFString_long_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    CFStringInsert((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,ObjCVar3);
    
    [ObjCVar3 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_delete___org_xmlvm_ios_CFString_org_xmlvm_ios_CFRange]
CFStringDelete((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_replace___org_xmlvm_ios_CFString_org_xmlvm_ios_CFRange_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    CFStringReplace((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n2),ObjCVar3);
    
    [ObjCVar3 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_replaceAll___org_xmlvm_ios_CFString_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    CFStringReplaceAll((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_findAndReplace___org_xmlvm_ios_CFString_java_lang_String_java_lang_String_org_xmlvm_ios_CFRange_long]
NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    long var0 = CFStringFindAndReplace((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2,ObjCVar3,toCFRange(n4),n5);
    
    [ObjCVar2 release];

    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_setExternalCharactersNoCopy___org_xmlvm_ios_CFString_short_1ARRAY_long_long]
XMLVM_VAR_SHORT_ARRAY(a2, n2); 
    CFStringSetExternalCharactersNoCopy((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_pad___org_xmlvm_ios_CFString_java_lang_String_long_long]
NSString * ObjCVar2 = toNSString(n2);
    CFStringPad((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2,n3,n4);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_trim___org_xmlvm_ios_CFString_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    CFStringTrim((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_trimWhitespace___org_xmlvm_ios_CFString]
CFStringTrimWhitespace((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_lowercase___org_xmlvm_ios_CFString_org_xmlvm_ios_CFLocale]
CFStringLowercase((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFLocale*) (((org_xmlvm_ios_CFLocale*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_uppercase___org_xmlvm_ios_CFString_org_xmlvm_ios_CFLocale]
CFStringUppercase((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFLocale*) (((org_xmlvm_ios_CFLocale*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_capitalize___org_xmlvm_ios_CFString_org_xmlvm_ios_CFLocale]
CFStringCapitalize((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFLocale*) (((org_xmlvm_ios_CFLocale*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_lowercase___org_xmlvm_ios_CFString_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFStringLowercase((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_uppercase___org_xmlvm_ios_CFString_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFStringUppercase((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_capitalize___org_xmlvm_ios_CFString_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFStringCapitalize((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_normalize___org_xmlvm_ios_CFString_long]
CFStringNormalize((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_fold___org_xmlvm_ios_CFString_long_org_xmlvm_ios_CFLocale]
CFStringFold((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,(CFLocale*) (((org_xmlvm_ios_CFLocale*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_transform___org_xmlvm_ios_CFString_org_xmlvm_ios_Reference_java_lang_String_byte]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CFRange var2= toCFRange(jObject2);
    NSString * ObjCVar3 = toNSString(n3);
    
    Byte var0 = CFStringTransform((CFString*) (((org_xmlvm_ios_CFString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),&var2,ObjCVar3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCFRange(var2));
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_isEncodingAvailable___int]

    Byte var0 = CFStringIsEncodingAvailable(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getListOfAvailableEncodings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getNameOfEncoding___int]

    NSString* var0 = CFStringGetNameOfEncoding(n1);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_convertEncodingToNSStringEncoding___int]

    long var0 = CFStringConvertEncodingToNSStringEncoding(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_convertNSStringEncodingToEncoding___long]

    int var0 = CFStringConvertNSStringEncodingToEncoding(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_convertEncodingToWindowsCodepage___int]

    int var0 = CFStringConvertEncodingToWindowsCodepage(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_convertWindowsCodepageToEncoding___int]

    int var0 = CFStringConvertWindowsCodepageToEncoding(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_convertIANACharSetNameToEncoding__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_convertEncodingToIANACharSetName___int]

    NSString* var0 = CFStringConvertEncodingToIANACharSetName(n1);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getMostCompatibleMacStringEncoding___int]

    int var0 = CFStringGetMostCompatibleMacStringEncoding(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_initInlineBuffer___org_xmlvm_ios_Reference_org_xmlvm_ios_CFRange]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getCharacterFromInlineBuffer___org_xmlvm_ios_Reference_long]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFStringInlineBuffer var1= toCFStringInlineBuffer(jObject1);
    
    short var0 = CFStringGetCharacterFromInlineBuffer(&var1,n2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCFStringInlineBuffer(var1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_isSurrogateHighCharacter___short]

    Byte var0 = CFStringIsSurrogateHighCharacter(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_isSurrogateLowCharacter___short]

    Byte var0 = CFStringIsSurrogateLowCharacter(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getLongCharacterForSurrogatePair___short_short]

    int var0 = CFStringGetLongCharacterForSurrogatePair(n1,n2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_getSurrogatePairForLongCharacter___int_short_1ARRAY]
XMLVM_VAR_SHORT_ARRAY(a2, n2); 
    
    Byte var0 = CFStringGetSurrogatePairForLongCharacter(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFString_makeConstantString___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = CFStringMakeConstantString(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER
