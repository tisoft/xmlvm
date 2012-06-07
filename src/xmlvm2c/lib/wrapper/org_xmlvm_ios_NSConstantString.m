
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSConstantString (NSConstantStringWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSConstantString (NSConstantStringWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSConstantString.classInitialized)
        __INIT_org_xmlvm_ios_NSConstantString();
}
@end

void org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSSimpleCString_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSConstantString class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSConstantString();
        org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSConstantString]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSConstantString]
__DELETE_org_xmlvm_ios_NSSimpleCString(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT___]
    NSConstantString* var0 = [[NSConstantString alloc ] init];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT___]
    NSConstantString* var0 = [[NSConstantString alloc ] init];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT___]

    NSConstantString* var0 = [[NSConstantString alloc]init];

    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____short_1ARRAY_int_boolean]
XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithCharactersNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 freeWhenDone:n3];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____short_1ARRAY_int]
XMLVM_VAR_SHORT_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithCharacters:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____byte_1ARRAY_org_xmlvm_ios_NSConstantString_CStringNullTerminated]

    if((org_xmlvm_ios_NSConstantString_CStringNullTerminated*) n2 == org_xmlvm_ios_NSConstantString_CStringNullTerminated_GET_Default())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSConstantString_CStringNullTerminated*) n2 == org_xmlvm_ios_NSConstantString_CStringNullTerminated_GET_UTF8())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithUTF8String:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____java_lang_String_org_xmlvm_ios_NSConstantString_Type]

    if((org_xmlvm_ios_NSConstantString_Type*) n2 == org_xmlvm_ios_NSConstantString_Type_GET_String())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithString:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSConstantString_Type*) n2 == org_xmlvm_ios_NSConstantString_Type_GET_File())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithFormat:ObjCVar1 arguments:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];

    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____java_lang_String_org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____java_lang_String_java_lang_Object_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithFormat:ObjCVar1 locale:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj arguments:a3->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];

    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____org_xmlvm_ios_NSData_int]

    NSConstantString* var0 = [[NSConstantString alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) encoding:n2];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____byte_1ARRAY_int_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 encoding:n3];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____byte_1ARRAY_int_int_boolean]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithBytesNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 encoding:n3 freeWhenDone:n4];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____byte_1ARRAY_int_org_xmlvm_ios_NSConstantString_CString]

    if((org_xmlvm_ios_NSConstantString_CString*) n3 == org_xmlvm_ios_NSConstantString_CString_GET_Default())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSConstantString_CString*) n3 == org_xmlvm_ios_NSConstantString_CString_GET_UTF8())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithCString:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ encoding:n2];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) encoding:n2 error:&var3];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithContentsOfFile:ObjCVar1 encoding:n2 error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____org_xmlvm_ios_NSURL_int_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) usedEncoding:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var3];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____java_lang_String_int_1ARRAY_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithContentsOfFile:ObjCVar1 usedEncoding:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____org_xmlvm_ios_NSURL]

    NSConstantString* var0 = [[NSConstantString alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT____byte_1ARRAY_int_boolean]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSConstantString* var0 = [[NSConstantString alloc] initWithCStringNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 freeWhenDone:n3];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConstantString___INIT___]
    NSConstantString* var0 = [[NSConstantString alloc ] init];
    org_xmlvm_ios_NSConstantString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
