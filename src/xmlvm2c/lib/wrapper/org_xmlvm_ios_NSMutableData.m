
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableData (NSMutableDataWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableData (NSMutableDataWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableData.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableData();
}
@end

void org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSData_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableData class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableData();
        org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableData]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableData]
__DELETE_org_xmlvm_ios_NSData(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT____int_org_xmlvm_ios_NSMutableData_Data]

    if((org_xmlvm_ios_NSMutableData_Data*) n2 == org_xmlvm_ios_NSMutableData_Data_GET_Length())
    {
    NSMutableData* var0 = [[NSMutableData alloc] initWithLength:n1];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSMutableData_Data*) n2 == org_xmlvm_ios_NSMutableData_Data_GET_Capacity())
    {
    NSMutableData* var0 = [[NSMutableData alloc] initWithCapacity:n1];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT___]
    NSMutableData* var0 = [[NSMutableData alloc ] init];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT____byte_1ARRAY_int_org_xmlvm_ios_NSMutableData_Data]

    if((org_xmlvm_ios_NSMutableData_Data*) n3 == org_xmlvm_ios_NSMutableData_Data_GET_Reuse())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableData* var0 = [[NSMutableData alloc] initWithBytesNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSMutableData_Data*) n3 == org_xmlvm_ios_NSMutableData_Data_GET_Copy())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableData* var0 = [[NSMutableData alloc] initWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT____byte_1ARRAY_int_boolean]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSMutableData* var0 = [[NSMutableData alloc] initWithBytesNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 freeWhenDone:n3];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT____java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSMutableData* var0 = [[NSMutableData alloc] initWithContentsOfFile:ObjCVar1 options:n2 error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT____org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSMutableData* var0 = [[NSMutableData alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 error:&var3];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT____java_lang_String_org_xmlvm_ios_NSMutableData_File]

    if((org_xmlvm_ios_NSMutableData_File*) n2 == org_xmlvm_ios_NSMutableData_File_GET_Mapped())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSMutableData* var0 = [[NSMutableData alloc] initWithContentsOfMappedFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSMutableData_File*) n2 == org_xmlvm_ios_NSMutableData_File_GET_Regular())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSMutableData* var0 = [[NSMutableData alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT____org_xmlvm_ios_NSURL]

    NSMutableData* var0 = [[NSMutableData alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT____org_xmlvm_ios_NSData]

    NSMutableData* var0 = [[NSMutableData alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT___]
    NSMutableData* var0 = [[NSMutableData alloc ] init];
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData___INIT___]

    NSMutableData* var0 = [[NSMutableData alloc]init];

    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_mutableBytes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_setLength___int]

    XMLVM_VAR_THIZ;
    [thiz  setLength:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_appendBytes___byte_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  appendBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_appendData___org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    [thiz  appendData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_increaseLengthBy___int]

    XMLVM_VAR_THIZ;
    [thiz  increaseLengthBy:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_replaceBytesInRange___org_xmlvm_ios_NSRange_byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    [thiz  replaceBytesInRange:toNSRange(n1) withBytes:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_resetBytesInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  resetBytesInRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_setData___org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    [thiz  setData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_replaceBytesInRange___org_xmlvm_ios_NSRange_byte_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    [thiz  replaceBytesInRange:toNSRange(n1) withBytes:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_dataWithCapacity___int]

    NSMutableData* var0 =  [NSMutableData  dataWithCapacity:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableData_dataWithLength___int]

    NSMutableData* var0 =  [NSMutableData  dataWithLength:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
