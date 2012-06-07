
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFReadStream (CFReadStreamWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFReadStream (CFReadStreamWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFReadStream.classInitialized)
        __INIT_org_xmlvm_ios_CFReadStream();
}
@end

void org_xmlvm_ios_CFReadStream_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFReadStream class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFReadStream();
        org_xmlvm_ios_CFReadStream_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFReadStream]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFReadStream]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream___INIT___]
    CFReadStream* var0 = [[CFReadStream alloc ] init];
    org_xmlvm_ios_CFReadStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_createWithFTPURL___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_IOS_REF(CFURL, var2, n2);
    
    CFReadStream* var0 = CFReadStreamCreateWithFTPURL(var1,var2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_createForHTTPRequest___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFHTTPMessage]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFReadStream* var0 = CFReadStreamCreateForHTTPRequest(var1,(CFHTTPMessage*) (((org_xmlvm_ios_CFHTTPMessage*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_createForStreamedHTTPRequest___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFHTTPMessage_org_xmlvm_ios_CFReadStream]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFReadStream* var0 = CFReadStreamCreateForStreamedHTTPRequest(var1,(CFHTTPMessage*) (((org_xmlvm_ios_CFHTTPMessage*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFReadStream*) (((org_xmlvm_ios_CFReadStream*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_createWithBytesNoCopy___org_xmlvm_ios_CFAllocator_byte_1ARRAY_long_org_xmlvm_ios_CFAllocator]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    XMLVM_VAR_IOS_REF(CFAllocator, var4, n4);
    
    CFReadStream* var0 = CFDataCreateWithBytesNoCopy(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,var4);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_createWithFile___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_IOS_REF(CFURL, var2, n2);
    
    CFReadStream* var0 = CFReadStreamCreateWithFile(var1,var2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_getStatus__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_copyError__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_open__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_close__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_hasBytesAvailable__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_read___byte_1ARRAY_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_getBuffer___long_long_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_copyProperty___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_setProperty___java_lang_String_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_setClient___long_java_lang_Object_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_scheduleWithRunLoop___org_xmlvm_ios_CFRunLoop_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_unscheduleFromRunLoop___org_xmlvm_ios_CFRunLoop_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFReadStream_getError__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
