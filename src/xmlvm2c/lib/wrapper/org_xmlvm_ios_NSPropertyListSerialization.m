
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSPropertyListSerialization (NSPropertyListSerializationWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSPropertyListSerialization (NSPropertyListSerializationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSPropertyListSerialization.classInitialized)
        __INIT_org_xmlvm_ios_NSPropertyListSerialization();
}
@end

void org_xmlvm_ios_NSPropertyListSerialization_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSPropertyListSerialization class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSPropertyListSerialization();
        org_xmlvm_ios_NSPropertyListSerialization_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSPropertyListSerialization]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSPropertyListSerialization]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization___INIT___]
    NSPropertyListSerialization* var0 = [[NSPropertyListSerialization alloc ] init];
    org_xmlvm_ios_NSPropertyListSerialization_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization___INIT___]

    NSPropertyListSerialization* var0 = [[NSPropertyListSerialization alloc]init];

    org_xmlvm_ios_NSPropertyListSerialization_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization_propertyList___java_lang_Object_int]

    BOOL var0 =  [NSPropertyListSerialization  propertyList:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj isValidForFormat:n2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization_dataWithPropertyList___java_lang_Object_int_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    NSData* var0 =  [NSPropertyListSerialization  dataWithPropertyList:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj format:n2 options:n3 error:&var4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization_writePropertyList___java_lang_Object_org_xmlvm_ios_NSOutputStream_int_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(NSError, var5, jObject5);
    
    int var0 =  [NSPropertyListSerialization  writePropertyList:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj toStream:(NSOutputStream*) (((org_xmlvm_ios_NSOutputStream*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) format:n3 options:n4 error:&var5];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization_propertyListWithData___org_xmlvm_ios_NSData_int_int_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    NSObject* var0 =  [NSPropertyListSerialization  propertyListWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 format:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization_propertyListWithStream___org_xmlvm_ios_NSInputStream_int_int_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    NSObject* var0 =  [NSPropertyListSerialization  propertyListWithStream:(NSInputStream*) (((org_xmlvm_ios_NSInputStream*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 format:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization_dataFromPropertyList___java_lang_Object_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    NSString* var3= toNSString(jObject3);
    
    NSData* var0 =  [NSPropertyListSerialization  dataFromPropertyList:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj format:n2 errorDescription:&var3];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyListSerialization_propertyListFromData___org_xmlvm_ios_NSData_int_int_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    NSString* var4= toNSString(jObject4);
    
    NSObject* var0 =  [NSPropertyListSerialization  propertyListFromData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) mutabilityOption:n2 format:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ errorDescription:&var4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
