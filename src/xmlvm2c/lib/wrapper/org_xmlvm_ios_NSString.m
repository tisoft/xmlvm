
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSString (NSStringWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSString (NSStringWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSString.classInitialized)
        __INIT_org_xmlvm_ios_NSString();
}
@end

void org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSString class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSString();
        org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSString]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSString]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT___]

    NSString* var0 = [[NSString alloc]init];

    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____short_1ARRAY_int_boolean]
XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithCharactersNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 freeWhenDone:n3];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____short_1ARRAY_int]
XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithCharacters:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____byte_1ARRAY_org_xmlvm_ios_NSString_CStringNullTerminated]

    if((org_xmlvm_ios_NSString_CStringNullTerminated*) n2 == org_xmlvm_ios_NSString_CStringNullTerminated_GET_Default())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSString_CStringNullTerminated*) n2 == org_xmlvm_ios_NSString_CStringNullTerminated_GET_UTF8())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithUTF8String:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____java_lang_String_org_xmlvm_ios_NSString_Type]

    if((org_xmlvm_ios_NSString_Type*) n2 == org_xmlvm_ios_NSString_Type_GET_String())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [[NSString alloc] initWithString:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSString_Type*) n2 == org_xmlvm_ios_NSString_Type_GET_File())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [[NSString alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSString* var0 = [[NSString alloc] initWithFormat:ObjCVar1 arguments:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];

    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____java_lang_String_org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____java_lang_String_java_lang_Object_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    NSString* var0 = [[NSString alloc] initWithFormat:ObjCVar1 locale:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj arguments:a3->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];

    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____org_xmlvm_ios_NSData_int]

    NSString* var0 = [[NSString alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) encoding:n2];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____byte_1ARRAY_int_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 encoding:n3];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____byte_1ARRAY_int_int_boolean]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithBytesNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 encoding:n3 freeWhenDone:n4];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____byte_1ARRAY_int_org_xmlvm_ios_NSString_CString]

    if((org_xmlvm_ios_NSString_CString*) n3 == org_xmlvm_ios_NSString_CString_GET_Default())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSString_CString*) n3 == org_xmlvm_ios_NSString_CString_GET_UTF8())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ encoding:n2];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSString* var0 = [[NSString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) encoding:n2 error:&var3];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSString* var0 = [[NSString alloc] initWithContentsOfFile:ObjCVar1 encoding:n2 error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____org_xmlvm_ios_NSURL_int_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSString* var0 = [[NSString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) usedEncoding:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var3];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____java_lang_String_int_1ARRAY_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSString* var0 = [[NSString alloc] initWithContentsOfFile:ObjCVar1 usedEncoding:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____org_xmlvm_ios_NSURL]

    NSString* var0 = [[NSString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT____byte_1ARRAY_int_boolean]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 = [[NSString alloc] initWithCStringNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 freeWhenDone:n3];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString___INIT___]
    NSString* var0 = [[NSString alloc ] init];
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_pathWithComponents___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSString* var0 =  [NSString  pathWithComponents:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_pathComponents__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz pathComponents];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_isAbsolutePath__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isAbsolutePath];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_lastPathComponent__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz lastPathComponent];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByDeletingLastPathComponent__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz stringByDeletingLastPathComponent];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByAppendingPathComponent___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [thiz  stringByAppendingPathComponent:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_pathExtension__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz pathExtension];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByDeletingPathExtension__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz stringByDeletingPathExtension];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByAppendingPathExtension___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [thiz  stringByAppendingPathExtension:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByAbbreviatingWithTildeInPath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz stringByAbbreviatingWithTildeInPath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByExpandingTildeInPath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz stringByExpandingTildeInPath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByStandardizingPath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz stringByStandardizingPath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByResolvingSymlinksInPath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz stringByResolvingSymlinksInPath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringsByAppendingPaths___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    
    NSArray* var0 = [thiz  stringsByAppendingPaths:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_completePathIntoString___org_xmlvm_ios_Reference_boolean_org_xmlvm_ios_Reference_java_util_List]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    NSString* var1= toNSString(jObject1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    NSArray* var3= toNSArray(jObject3);
    NSArray * ObjCVar4 = toNSArray(n4);
    
    int var0 = [thiz  completePathIntoString:&var1 caseSensitive:n2 matchesIntoArray:&var3 filterTypes:ObjCVar4];
    [ObjCVar4 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fileSystemRepresentation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getFileSystemRepresentation___byte_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  getFileSystemRepresentation:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ maxLength:n2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_length__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz length];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_characterAtIndex___int]

    XMLVM_VAR_THIZ;
    
    short var0 = [thiz  characterAtIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getCharacters___short_1ARRAY_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    [thiz  getCharacters:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ range:toNSRange(n2)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_substringFromIndex___int]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  substringFromIndex:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_substringToIndex___int]

    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  substringToIndex:n1];
    [ p release];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_substringWithRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  substringWithRange:toNSRange(n1)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_compare___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  compare:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_compare___java_lang_String_int]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  compare:ObjCVar1 options:n2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_compare___java_lang_String_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  compare:ObjCVar1 options:n2 range:toNSRange(n3)];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_compare___java_lang_String_int_org_xmlvm_ios_NSRange_java_lang_Object]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  compare:ObjCVar1 options:n2 range:toNSRange(n3) locale:((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_caseInsensitiveCompare___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  caseInsensitiveCompare:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_localizedCompare___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  localizedCompare:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_localizedCaseInsensitiveCompare___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  localizedCaseInsensitiveCompare:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_localizedStandardCompare___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  localizedStandardCompare:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_isEqualToString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  isEqualToString:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_hasPrefix___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  hasPrefix:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_hasSuffix___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  hasSuffix:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSRange var0 = [thiz  rangeOfString:ObjCVar1];
    [ObjCVar1 release];


    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfString___java_lang_String_int]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSRange var0 = [thiz  rangeOfString:ObjCVar1 options:n2];
    [ObjCVar1 release];


    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfString___java_lang_String_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSRange var0 = [thiz  rangeOfString:ObjCVar1 options:n2 range:toNSRange(n3)];
    [ObjCVar1 release];


    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfString___java_lang_String_int_org_xmlvm_ios_NSRange_org_xmlvm_ios_NSLocale]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSRange var0 = [thiz  rangeOfString:ObjCVar1 options:n2 range:toNSRange(n3) locale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfCharacterFromSet___org_xmlvm_ios_NSCharacterSet]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  rangeOfCharacterFromSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfCharacterFromSet___org_xmlvm_ios_NSCharacterSet_int]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  rangeOfCharacterFromSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfCharacterFromSet___org_xmlvm_ios_NSCharacterSet_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  rangeOfCharacterFromSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 range:toNSRange(n3)];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfComposedCharacterSequenceAtIndex___int]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  rangeOfComposedCharacterSequenceAtIndex:n1];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_rangeOfComposedCharacterSequencesForRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  rangeOfComposedCharacterSequencesForRange:toNSRange(n1)];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByAppendingString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [thiz  stringByAppendingString:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByAppendingFormat___org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_doubleValue__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz doubleValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_floatValue__]

    XMLVM_VAR_THIZ;
    
    float var0 = [thiz floatValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_intValue__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz intValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_integerValue__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz integerValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_longLongValue__]

    XMLVM_VAR_THIZ;
    
    long var0 = [thiz longLongValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_boolValue__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz boolValue];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_componentsSeparatedByString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  componentsSeparatedByString:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_componentsSeparatedByCharactersInSet___org_xmlvm_ios_NSCharacterSet]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  componentsSeparatedByCharactersInSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_commonPrefixWithString___java_lang_String_int]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [thiz  commonPrefixWithString:ObjCVar1 options:n2];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_uppercaseString__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz uppercaseString];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_lowercaseString__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz lowercaseString];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_capitalizedString__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz capitalizedString];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByTrimmingCharactersInSet___org_xmlvm_ios_NSCharacterSet]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  stringByTrimmingCharactersInSet:(NSCharacterSet*) (((org_xmlvm_ios_NSCharacterSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByPaddingToLength___int_java_lang_String_int]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = [thiz  stringByPaddingToLength:n1 withString:ObjCVar2 startingAtIndex:n3];
    [ObjCVar2 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getLineStart___int_1ARRAY_int_1ARRAY_int_1ARRAY_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT_ARRAY(a1, n1); 
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    XMLVM_VAR_INT_ARRAY(a3, n3); 
    [thiz  getLineStart:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ end:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ contentsEnd:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ forRange:toNSRange(n4)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_lineRangeForRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  lineRangeForRange:toNSRange(n1)];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getParagraphStart___int_1ARRAY_int_1ARRAY_int_1ARRAY_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT_ARRAY(a1, n1); 
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    XMLVM_VAR_INT_ARRAY(a3, n3); 
    [thiz  getParagraphStart:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ end:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ contentsEnd:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ forRange:toNSRange(n4)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_paragraphRangeForRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz  paragraphRangeForRange:toNSRange(n1)];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_enumerateSubstringsInRange___org_xmlvm_ios_NSRange_int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateSubstringsInRange:toNSRange(n1) options:n2 usingBlock:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_enumerateLinesUsingBlock___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateLinesUsingBlock:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_description__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz description];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_hash__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz hash];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fastestEncoding__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz fastestEncoding];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_smallestEncoding__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz smallestEncoding];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_dataUsingEncoding___int_boolean]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz  dataUsingEncoding:n1 allowLossyConversion:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_dataUsingEncoding___int]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz  dataUsingEncoding:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_canBeConvertedToEncoding___int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  canBeConvertedToEncoding:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_cStringUsingEncoding___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getCString___byte_1ARRAY_int_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    BOOL var0 = [thiz  getCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ maxLength:n2 encoding:n3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getBytes___byte_1ARRAY_int_int_1ARRAY_int_int_org_xmlvm_ios_NSRange_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_INT_ARRAY(a3, n3); 
    JAVA_OBJECT jObject7 = org_xmlvm_ios_Reference_get__(n7);
    NSRange var7= toNSRange(jObject7);
    
    BOOL var0 = [thiz  getBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ maxLength:n2 usedLength:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ encoding:n4 options:n5 range:toNSRange(n6) remainingRange:&var7];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_maximumLengthOfBytesUsingEncoding___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  maximumLengthOfBytesUsingEncoding:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_lengthOfBytesUsingEncoding___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  lengthOfBytesUsingEncoding:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_decomposedStringWithCanonicalMapping__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz decomposedStringWithCanonicalMapping];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_precomposedStringWithCanonicalMapping__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz precomposedStringWithCanonicalMapping];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_decomposedStringWithCompatibilityMapping__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz decomposedStringWithCompatibilityMapping];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_precomposedStringWithCompatibilityMapping__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz precomposedStringWithCompatibilityMapping];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByFoldingWithOptions___int_org_xmlvm_ios_NSLocale]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  stringByFoldingWithOptions:n1 locale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByReplacingOccurrencesOfString___java_lang_String_java_lang_String_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = [thiz  stringByReplacingOccurrencesOfString:ObjCVar1 withString:ObjCVar2 options:n3 range:toNSRange(n4)];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByReplacingOccurrencesOfString___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = [thiz  stringByReplacingOccurrencesOfString:ObjCVar1 withString:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByReplacingCharactersInRange___org_xmlvm_ios_NSRange_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = [thiz  stringByReplacingCharactersInRange:toNSRange(n1) withString:ObjCVar2];
    [ObjCVar2 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_UTF8String__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_defaultCStringEncoding__]

    int var0 =  [NSString defaultCStringEncoding];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_availableStringEncodings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_localizedNameOfStringEncoding___int]

    NSString* var0 =  [NSString  localizedNameOfStringEncoding:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_string__]

    NSString* var0 =  [NSString string];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 =  [NSString  stringWithString:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithCharacters___short_1ARRAY_int]
XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    
    NSString* var0 =  [NSString  stringWithCharacters:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithUTF8String___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 =  [NSString  stringWithUTF8String:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithFormat___org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_localizedStringWithFormat___org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithCString___byte_1ARRAY_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 =  [NSString  stringWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ encoding:n2];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithContentsOfURL___org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSString* var0 =  [NSString  stringWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) encoding:n2 error:&var3];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithContentsOfFile___java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSString* var0 =  [NSString  stringWithContentsOfFile:ObjCVar1 encoding:n2 error:&var3];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithContentsOfURL___org_xmlvm_ios_NSURL_int_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSString* var0 =  [NSString  stringWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) usedEncoding:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var3];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithContentsOfFile___java_lang_String_int_1ARRAY_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSString* var0 =  [NSString  stringWithContentsOfFile:ObjCVar1 usedEncoding:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var3];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_writeToURL___org_xmlvm_ios_NSURL_boolean_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 = [thiz  writeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) atomically:n2 encoding:n3 error:&var4];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_writeToFile___java_lang_String_boolean_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 = [thiz  writeToFile:ObjCVar1 atomically:n2 encoding:n3 error:&var4];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_propertyList__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz propertyList];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_propertyListFromStringsFileFormat__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_cString__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_lossyCString__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_cStringLength__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz cStringLength];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getCString___byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  getCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getCString___byte_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  getCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ maxLength:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getCString___byte_1ARRAY_int_org_xmlvm_ios_NSRange_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    NSRange var4= toNSRange(jObject4);
    [thiz  getCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ maxLength:n2 range:toNSRange(n3) remainingRange:&var4];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_writeToFile___java_lang_String_boolean]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  writeToFile:ObjCVar1 atomically:n2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_writeToURL___org_xmlvm_ios_NSURL_boolean]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  writeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) atomically:n2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithContentsOfFile___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 =  [NSString  stringWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithContentsOfURL___org_xmlvm_ios_NSURL]

    NSString* var0 =  [NSString  stringWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithCString___byte_1ARRAY_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 =  [NSString  stringWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringWithCString___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSString* var0 =  [NSString  stringWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_getCharacters___short_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    [thiz  getCharacters:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByAddingPercentEscapesUsingEncoding___int]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  stringByAddingPercentEscapesUsingEncoding:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_stringByReplacingPercentEscapesUsingEncoding___int]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  stringByReplacingPercentEscapesUsingEncoding:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_sizeWithFont___org_xmlvm_ios_UIFont]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  sizeWithFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_sizeWithFont___org_xmlvm_ios_UIFont_float_int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  sizeWithFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forWidth:n2 lineBreakMode:n3];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_drawAtPoint___org_xmlvm_ios_CGPoint_org_xmlvm_ios_UIFont]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  drawAtPoint:toCGPoint(n1) withFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_drawAtPoint___org_xmlvm_ios_CGPoint_float_org_xmlvm_ios_UIFont_int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  drawAtPoint:toCGPoint(n1) forWidth:n2 withFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) lineBreakMode:n4];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_sizeWithFont___org_xmlvm_ios_UIFont_org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  sizeWithFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) constrainedToSize:toCGSize(n2)];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_sizeWithFont___org_xmlvm_ios_UIFont_org_xmlvm_ios_CGSize_int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  sizeWithFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) constrainedToSize:toCGSize(n2) lineBreakMode:n3];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_drawInRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIFont]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  drawInRect:toCGRect(n1) withFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_drawInRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIFont_int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  drawInRect:toCGRect(n1) withFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) lineBreakMode:n3];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_drawInRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIFont_int_int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  drawInRect:toCGRect(n1) withFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) lineBreakMode:n3 alignment:n4];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_sizeWithFont___org_xmlvm_ios_UIFont_float_float_1ARRAY_float_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    
    CGSize var0 = [thiz  sizeWithFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) minFontSize:n2 actualFontSize:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ forWidth:n4 lineBreakMode:n5];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_drawAtPoint___org_xmlvm_ios_CGPoint_float_org_xmlvm_ios_UIFont_float_int_int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  drawAtPoint:toCGPoint(n1) forWidth:n2 withFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) fontSize:n4 lineBreakMode:n5 baselineAdjustment:n6];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_drawAtPoint___org_xmlvm_ios_CGPoint_float_org_xmlvm_ios_UIFont_float_float_1ARRAY_int_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT_ARRAY(a5, n5); 
    
    CGSize var0 = [thiz  drawAtPoint:toCGPoint(n1) forWidth:n2 withFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) minFontSize:n4 actualFontSize:a5->fields.org_xmlvm_runtime_XMLVMArray.array_ lineBreakMode:n6 baselineAdjustment:n7];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromClass___org_xmlvm_ios_Class]

    NSString* var0 = NSStringFromClass((Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromProtocol___org_xmlvm_ios_Protocol]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromRange___org_xmlvm_ios_NSRange]

    NSString* var0 = NSStringFromRange(toNSRange(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromCGPoint___org_xmlvm_ios_CGPoint]

    NSString* var0 = NSStringFromCGPoint(toCGPoint(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromCGSize___org_xmlvm_ios_CGSize]

    NSString* var0 = NSStringFromCGSize(toCGSize(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromCGRect___org_xmlvm_ios_CGRect]

    NSString* var0 = NSStringFromCGRect(toCGRect(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromCGAffineTransform___org_xmlvm_ios_CGAffineTransform]

    NSString* var0 = NSStringFromCGAffineTransform(toCGAffineTransform(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_fromUIEdgeInsets___org_xmlvm_ios_UIEdgeInsets]

    NSString* var0 = NSStringFromUIEdgeInsets(toUIEdgeInsets(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSString_toString__]

                return fromNSString(((org_xmlvm_ios_NSObject*) me)->fields.org_xmlvm_ios_NSObject.wrappedObj);
            
//XMLVM_END_WRAPPER