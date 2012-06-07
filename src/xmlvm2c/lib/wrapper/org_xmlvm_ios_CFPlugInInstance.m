
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFPlugInInstance (CFPlugInInstanceWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFPlugInInstance (CFPlugInInstanceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFPlugInInstance.classInitialized)
        __INIT_org_xmlvm_ios_CFPlugInInstance();
}
@end

void org_xmlvm_ios_CFPlugInInstance_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFPlugInInstance class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFPlugInInstance();
        org_xmlvm_ios_CFPlugInInstance_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFPlugInInstance]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFPlugInInstance]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPlugInInstance___INIT____org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFUUID_org_xmlvm_ios_CFUUID]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFPlugInInstance* var0 = [[CFPlugInInstance alloc] create:var1];
    org_xmlvm_ios_CFPlugInInstance_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPlugInInstance___INIT___]
    CFPlugInInstance* var0 = [[CFPlugInInstance alloc ] init];
    org_xmlvm_ios_CFPlugInInstance_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPlugInInstance_getInterfaceFunctionTable___java_lang_String_byte_2ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPlugInInstance_getFactoryName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPlugInInstance_getInstanceData__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPlugInInstance_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFPlugInInstance_createWithInstanceDataSize___org_xmlvm_ios_CFAllocator_long_java_lang_Object_java_lang_String_java_lang_Object]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar4 = toNSString(n4);
    
    CFPlugInInstance* var0 = CFPlugInInstanceCreateWithInstanceDataSize(var1,n2,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,ObjCVar4,((org_xmlvm_ios_NSObject*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj);
    
    [ObjCVar4 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
