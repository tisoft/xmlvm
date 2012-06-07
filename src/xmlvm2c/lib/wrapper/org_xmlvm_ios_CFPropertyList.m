
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFPropertyList (CFPropertyListWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFPropertyList (CFPropertyListWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFPropertyList.classInitialized)
        __INIT_org_xmlvm_ios_CFPropertyList();
}
@end

void org_xmlvm_ios_CFPropertyList_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFPropertyList class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFPropertyList();
        org_xmlvm_ios_CFPropertyList_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFPropertyList]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFPropertyList]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList___INIT___]
    CFPropertyList* var0 = [[CFPropertyList alloc ] init];
    org_xmlvm_ios_CFPropertyList_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList___INIT___]
    CFPropertyList* var0 = [[CFPropertyList alloc ] init];
    org_xmlvm_ios_CFPropertyList_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_createFromXMLData___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFData_long_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_createXMLData___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFPropertyList]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_createDeepCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFPropertyList_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFPropertyList* var0 = CFPropertyListCreateDeepCopy(var1,(CFPropertyList*) (((org_xmlvm_ios_CFPropertyList*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_isValid___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_writeToStream___org_xmlvm_ios_CFWriteStream_long_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_createFromStream___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFReadStream_long_long_long_1ARRAY_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_LONG_ARRAY(a5, n5); 
    NSString * ObjCVar6 = toNSString(n6);
    
    CFPropertyList* var0 = CFPropertyListCreateFromStream(var1,(CFReadStream*) (((org_xmlvm_ios_CFReadStream*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,n4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_,ObjCVar6);
    
    [ObjCVar6 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_createWithData___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFData_long_long_1ARRAY_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_createWithStream___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFReadStream_long_long_long_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_LONG_ARRAY(a5, n5); 
    JAVA_OBJECT jObject6 = org_xmlvm_ios_Reference_get__(n6);
    XMLVM_VAR_IOS_REF(CFError, var6, jObject6);
    
    CFPropertyList* var0 = CFPropertyListCreateWithStream(var1,(CFReadStream*) (((org_xmlvm_ios_CFReadStream*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,n4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_,&var6);
    XMLVM_VAR_INIT_REF(CFError,refVar6, var6);
    org_xmlvm_ios_Reference_set___java_lang_Object(n6, refVar6);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_write___org_xmlvm_ios_CFWriteStream_long_long_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPropertyList_createData___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFPropertyList_long_long_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
