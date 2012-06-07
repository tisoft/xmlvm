
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFMessagePort (CFMessagePortWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFMessagePort (CFMessagePortWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFMessagePort.classInitialized)
        __INIT_org_xmlvm_ios_CFMessagePort();
}
@end

void org_xmlvm_ios_CFMessagePort_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFMessagePort class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFMessagePort();
        org_xmlvm_ios_CFMessagePort_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFMessagePort]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFMessagePort]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort___INIT___]
    CFMessagePort* var0 = [[CFMessagePort alloc ] init];
    org_xmlvm_ios_CFMessagePort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_createLocal___org_xmlvm_ios_CFAllocator_java_lang_String_java_lang_Object_org_xmlvm_ios_Reference_byte_1ARRAY]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFMessagePortContext var4= toCFMessagePortContext(jObject4);
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    CFMessagePort* var0 = CFMessagePortCreateLocal(var1,ObjCVar2,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,&var4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromCFMessagePortContext(var4));
    
    [ObjCVar2 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_createRemote___org_xmlvm_ios_CFAllocator_java_lang_String]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    CFMessagePort* var0 = CFMessagePortCreateRemote(var1,ObjCVar2);
    
    [ObjCVar2 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_isRemote__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_getName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_setName___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_getContext___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_invalidate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_isValid__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_getInvalidationCallBack__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_setInvalidationCallBack___java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_sendRequest___int_org_xmlvm_ios_CFData_double_double_java_lang_String_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_createRunLoopSource___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFMessagePort_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFRunLoopSourceRef var0 = CFFileDescriptorCreateRunLoopSource(var1,(CFMessagePort*) (((org_xmlvm_ios_CFMessagePort*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3);
        XMLVM_VAR_INIT_REF(CFRunLoopSource, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePort_setDispatchQueue___java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
