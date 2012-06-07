
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFFileDescriptor (CFFileDescriptorWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFFileDescriptor (CFFileDescriptorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFFileDescriptor.classInitialized)
        __INIT_org_xmlvm_ios_CFFileDescriptor();
}
@end

void org_xmlvm_ios_CFFileDescriptor_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFFileDescriptor class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFFileDescriptor();
        org_xmlvm_ios_CFFileDescriptor_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFFileDescriptor]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFFileDescriptor]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor___INIT____org_xmlvm_ios_CFAllocator_int_byte_java_lang_Object_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    CFFileDescriptorContext var5= toCFFileDescriptorContext(jObject5);
    
    CFFileDescriptor* var0 = [[CFFileDescriptor alloc] create:var1];
    org_xmlvm_ios_CFFileDescriptor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor___INIT___]
    CFFileDescriptor* var0 = [[CFFileDescriptor alloc ] init];
    org_xmlvm_ios_CFFileDescriptor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor_getNativeDescriptor__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor_getContext___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor_enableCallBacks___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor_disableCallBacks___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor_invalidate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor_isValid__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptor_createRunLoopSource___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFFileDescriptor_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFRunLoopSourceRef var0 = CFFileDescriptorCreateRunLoopSource(var1,(CFFileDescriptor*) (((org_xmlvm_ios_CFFileDescriptor*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3);
        XMLVM_VAR_INIT_REF(CFRunLoopSource, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER
