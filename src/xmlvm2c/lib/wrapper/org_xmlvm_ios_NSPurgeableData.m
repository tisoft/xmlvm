
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSPurgeableData (NSPurgeableDataWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSPurgeableData (NSPurgeableDataWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSPurgeableData.classInitialized)
        __INIT_org_xmlvm_ios_NSPurgeableData();
}
@end

void org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSMutableData_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSPurgeableData class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSPurgeableData();
        org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSPurgeableData]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSPurgeableData]
__DELETE_org_xmlvm_ios_NSMutableData(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT___]
    NSPurgeableData* var0 = [[NSPurgeableData alloc ] init];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT____int_org_xmlvm_ios_NSPurgeableData_Data]

    if((org_xmlvm_ios_NSPurgeableData_Data*) n2 == org_xmlvm_ios_NSPurgeableData_Data_GET_Length())
    {
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithLength:n1];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSPurgeableData_Data*) n2 == org_xmlvm_ios_NSPurgeableData_Data_GET_Capacity())
    {
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithCapacity:n1];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT___]
    NSPurgeableData* var0 = [[NSPurgeableData alloc ] init];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT____byte_1ARRAY_int_org_xmlvm_ios_NSPurgeableData_Data]

    if((org_xmlvm_ios_NSPurgeableData_Data*) n3 == org_xmlvm_ios_NSPurgeableData_Data_GET_Reuse())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithBytesNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSPurgeableData_Data*) n3 == org_xmlvm_ios_NSPurgeableData_Data_GET_Copy())
    {XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT____byte_1ARRAY_int_boolean]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithBytesNoCopy:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 freeWhenDone:n3];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT____java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithContentsOfFile:ObjCVar1 options:n2 error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT____org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 error:&var3];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT____java_lang_String_org_xmlvm_ios_NSPurgeableData_File]

    if((org_xmlvm_ios_NSPurgeableData_File*) n2 == org_xmlvm_ios_NSPurgeableData_File_GET_Mapped())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithContentsOfMappedFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSPurgeableData_File*) n2 == org_xmlvm_ios_NSPurgeableData_File_GET_Regular())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT____org_xmlvm_ios_NSURL]

    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT____org_xmlvm_ios_NSData]

    NSPurgeableData* var0 = [[NSPurgeableData alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT___]
    NSPurgeableData* var0 = [[NSPurgeableData alloc ] init];
    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPurgeableData___INIT___]

    NSPurgeableData* var0 = [[NSPurgeableData alloc]init];

    org_xmlvm_ios_NSPurgeableData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
