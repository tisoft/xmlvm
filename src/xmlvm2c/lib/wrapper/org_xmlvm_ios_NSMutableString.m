
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableString (NSMutableStringWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableString (NSMutableStringWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableString.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableString();
}
@end

void org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSString_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableString class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableString();
        org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableString]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableString]
__DELETE_org_xmlvm_ios_NSString(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____int]

    NSMutableString* var0 = [[NSMutableString alloc] initWithCapacity:n1];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT___]
    NSMutableString* var0 = [[NSMutableString alloc ] init];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT___]

    NSMutableString* var0 = [[NSMutableString alloc]init];

    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____short_1ARRAY_int_boolean]
XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithCharactersNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 freeWhenDone:n3];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____short_1ARRAY_int]
XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithCharacters:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____byte_1ARRAY_org_xmlvm_ios_NSMutableString_CStringNullTerminated]

    if((org_xmlvm_ios_NSMutableString_CStringNullTerminated*) n2 == org_xmlvm_ios_NSMutableString_CStringNullTerminated_GET_Default())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSMutableString_CStringNullTerminated*) n2 == org_xmlvm_ios_NSMutableString_CStringNullTerminated_GET_UTF8())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithUTF8String:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____java_lang_String_org_xmlvm_ios_NSMutableString_Type]

    if((org_xmlvm_ios_NSMutableString_Type*) n2 == org_xmlvm_ios_NSMutableString_Type_GET_String())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithString:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSMutableString_Type*) n2 == org_xmlvm_ios_NSMutableString_Type_GET_File())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithFormat:ObjCVar1 arguments:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____java_lang_String_org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____java_lang_String_java_lang_Object_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithFormat:ObjCVar1 locale:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj arguments:a3->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____org_xmlvm_ios_NSData_int]

    NSMutableString* var0 = [[NSMutableString alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) encoding:n2];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____byte_1ARRAY_int_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 encoding:n3];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____byte_1ARRAY_int_int_boolean]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithBytesNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 encoding:n3 freeWhenDone:n4];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____byte_1ARRAY_int_org_xmlvm_ios_NSMutableString_CString]

    if((org_xmlvm_ios_NSMutableString_CString*) n3 == org_xmlvm_ios_NSMutableString_CString_GET_Default())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSMutableString_CString*) n3 == org_xmlvm_ios_NSMutableString_CString_GET_UTF8())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ encoding:n2];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) encoding:n2 error:&var3];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithContentsOfFile:ObjCVar1 encoding:n2 error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____org_xmlvm_ios_NSURL_int_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) usedEncoding:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var3];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____java_lang_String_int_1ARRAY_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithContentsOfFile:ObjCVar1 usedEncoding:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____org_xmlvm_ios_NSURL]

    NSMutableString* var0 = [[NSMutableString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT____byte_1ARRAY_int_boolean]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableString* var0 = [[NSMutableString alloc] initWithCStringNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 freeWhenDone:n3];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString___INIT___]
    NSMutableString* var0 = [[NSMutableString alloc ] init];
    org_xmlvm_ios_NSMutableString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString_replaceCharactersInRange___org_xmlvm_ios_NSRange_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  replaceCharactersInRange:toNSRange(n1) withString:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString_insertString___java_lang_String_int]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  insertString:ObjCVar1 atIndex:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString_deleteCharactersInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  deleteCharactersInRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString_appendString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  appendString:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString_appendFormat___org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString_setString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setString:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString_stringWithCapacity___int]

    NSMutableString* var0 =  [NSMutableString  stringWithCapacity:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableString_replaceOccurrencesOfString___java_lang_String_java_lang_String_int_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    int var0 = [thiz  replaceOccurrencesOfString:ObjCVar1 withString:ObjCVar2 options:n3 range:toNSRange(n4)];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER
