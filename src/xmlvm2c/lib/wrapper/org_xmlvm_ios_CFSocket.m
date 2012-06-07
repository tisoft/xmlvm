
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFSocket (CFSocketWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFSocket (CFSocketWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFSocket.classInitialized)
        __INIT_org_xmlvm_ios_CFSocket();
}
@end

void org_xmlvm_ios_CFSocket_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFSocket class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFSocket();
        org_xmlvm_ios_CFSocket_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFSocket]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFSocket]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket___INIT____org_xmlvm_ios_CFAllocator_int_int_int_long_java_lang_Object_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject7 = org_xmlvm_ios_Reference_get__(n7);
    CFSocketContext var7= toCFSocketContext(jObject7);
    
    CFSocket* var0 = [[CFSocket alloc] create:var1];
    org_xmlvm_ios_CFSocket_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket___INIT___]
    CFSocket* var0 = [[CFSocket alloc ] init];
    org_xmlvm_ios_CFSocket_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_streamSOCKSGetErrorSubdomain___org_xmlvm_ios_Reference]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFStreamError var1= toCFStreamError(jObject1);
    
    int var0 = CFSocketStreamSOCKSGetErrorSubdomain(&var1);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCFStreamError(var1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_streamSOCKSGetError___org_xmlvm_ios_Reference]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFStreamError var1= toCFStreamError(jObject1);
    
    int var0 = CFSocketStreamSOCKSGetError(&var1);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCFStreamError(var1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_streamPairSetSecurityProtocol___org_xmlvm_ios_CFReadStream_org_xmlvm_ios_CFWriteStream_int]

    Byte var0 = CFSocketStreamPairSetSecurityProtocol((CFReadStream*) (((org_xmlvm_ios_CFReadStream*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFWriteStream*) (((org_xmlvm_ios_CFWriteStream*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_createWithNative___org_xmlvm_ios_CFAllocator_int_long_java_lang_Object_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    CFSocketContext var5= toCFSocketContext(jObject5);
    
    CFSocket* var0 = CFSocketCreateWithNative(var1,n2,n3,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj,&var5);
    org_xmlvm_ios_Reference_set___java_lang_Object(n5, fromCFSocketContext(var5));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_createWithSocketSignature___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_Reference_long_java_lang_Object_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CFSocketSignature var2= toCFSocketSignature(jObject2);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    CFSocketContext var5= toCFSocketContext(jObject5);
    
    CFSocket* var0 = CFSocketCreateWithSocketSignature(var1,&var2,n3,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj,&var5);
    org_xmlvm_ios_Reference_set___java_lang_Object(n5, fromCFSocketContext(var5));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_createConnectedToSocketSignature___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_Reference_long_java_lang_Object_org_xmlvm_ios_Reference_double]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CFSocketSignature var2= toCFSocketSignature(jObject2);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    CFSocketContext var5= toCFSocketContext(jObject5);
    
    CFSocket* var0 = CFSocketCreateConnectedToSocketSignature(var1,&var2,n3,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj,&var5,n6);
    org_xmlvm_ios_Reference_set___java_lang_Object(n5, fromCFSocketContext(var5));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_setAddress___org_xmlvm_ios_CFData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_connectToAddress___org_xmlvm_ios_CFData_double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_invalidate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_isValid__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_copyAddress__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_copyPeerAddress__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_getContext___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_getNative__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_createRunLoopSource___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFSocket_long]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFRunLoopSourceRef var0 = CFFileDescriptorCreateRunLoopSource(var1,(CFSocket*) (((org_xmlvm_ios_CFSocket*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3);
        XMLVM_VAR_INIT_REF(CFRunLoopSource, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_getSocketFlags__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_setSocketFlags___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_disableCallBacks___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_enableCallBacks___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_sendData___org_xmlvm_ios_CFData_org_xmlvm_ios_CFData_double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_registerValue___org_xmlvm_ios_Reference_double_java_lang_String_org_xmlvm_ios_CFPropertyList]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFSocketSignature var1= toCFSocketSignature(jObject1);
    NSString * ObjCVar3 = toNSString(n3);
    
    long var0 = CFSocketRegisterValue(&var1,n2,ObjCVar3,(CFPropertyList*) (((org_xmlvm_ios_CFPropertyList*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCFSocketSignature(var1));
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_copyRegisteredValue___org_xmlvm_ios_Reference_double_java_lang_String_org_xmlvm_ios_CFPropertyList_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFSocketSignature var1= toCFSocketSignature(jObject1);
    NSString * ObjCVar3 = toNSString(n3);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(CFData, var5, jObject5);
    
    long var0 = CFSocketCopyRegisteredValue(&var1,n2,ObjCVar3,(CFPropertyList*) (((org_xmlvm_ios_CFPropertyList*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj),&var5);
    org_xmlvm_ios_Reference_set___java_lang_Object(n5, xmlvm_get_associated_c_object (var5));
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_registerSocketSignature___org_xmlvm_ios_Reference_double_java_lang_String_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFSocketSignature var1= toCFSocketSignature(jObject1);
    NSString * ObjCVar3 = toNSString(n3);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFSocketSignature var4= toCFSocketSignature(jObject4);
    
    long var0 = CFSocketRegisterSocketSignature(&var1,n2,ObjCVar3,&var4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromCFSocketSignature(var4));
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_copyRegisteredSocketSignature___org_xmlvm_ios_Reference_double_java_lang_String_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFSocketSignature var1= toCFSocketSignature(jObject1);
    NSString * ObjCVar3 = toNSString(n3);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFSocketSignature var4= toCFSocketSignature(jObject4);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(CFData, var5, jObject5);
    
    long var0 = CFSocketCopyRegisteredSocketSignature(&var1,n2,ObjCVar3,&var4,&var5);
    org_xmlvm_ios_Reference_set___java_lang_Object(n5, xmlvm_get_associated_c_object (var5));
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_unregister___org_xmlvm_ios_Reference_double_java_lang_String]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFSocketSignature var1= toCFSocketSignature(jObject1);
    NSString * ObjCVar3 = toNSString(n3);
    
    long var0 = CFSocketUnregister(&var1,n2,ObjCVar3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCFSocketSignature(var1));
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_setDefaultNameRegistryPortNumber___short]
CFSocketSetDefaultNameRegistryPortNumber(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocket_getDefaultNameRegistryPortNumber__]

    short var0 = CFSocketGetDefaultNameRegistryPortNumber();
    
    return var0;
//XMLVM_END_WRAPPER
