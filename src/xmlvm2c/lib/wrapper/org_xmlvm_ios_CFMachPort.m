
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFMachPort (CFMachPortWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFMachPort (CFMachPortWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFMachPort.classInitialized)
        __INIT_org_xmlvm_ios_CFMachPort();
}
@end

void org_xmlvm_ios_CFMachPort_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFMachPort class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFMachPort();
        org_xmlvm_ios_CFMachPort_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFMachPort]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFMachPort]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort___INIT____org_xmlvm_ios_CFAllocator_java_lang_Object_org_xmlvm_ios_Reference_byte_1ARRAY]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CFMachPortContext var3= toCFMachPortContext(jObject3);
    XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    CFMachPort* var0 = [[CFMachPort alloc] create:var1];
    org_xmlvm_ios_CFMachPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort___INIT___]
    CFMachPort* var0 = [[CFMachPort alloc ] init];
    org_xmlvm_ios_CFMachPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_createWithPort___org_xmlvm_ios_CFAllocator_int_java_lang_Object_org_xmlvm_ios_Reference_byte_1ARRAY]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFMachPortContext var4= toCFMachPortContext(jObject4);
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    CFMachPort* var0 = CFMachPortCreateWithPort(var1,n2,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,&var4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromCFMachPortContext(var4));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_getPort__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_getContext___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_invalidate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_isValid__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_getInvalidationCallBack__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_setInvalidationCallBack___java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPort_createRunLoopSource___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFMachPort_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFRunLoopSourceRef var0 = CFFileDescriptorCreateRunLoopSource(var1,(CFMachPort*) (((org_xmlvm_ios_CFMachPort*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3);
        XMLVM_VAR_INIT_REF(CFRunLoopSource, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER
