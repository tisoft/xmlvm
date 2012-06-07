
//XMLVM_BEGIN_IMPLEMENTATION
@interface EAAccessory (EAAccessoryWrapperCategory)
+ (void) initialize_class;
@end

@implementation EAAccessory (EAAccessoryWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EAAccessory.classInitialized)
        __INIT_org_xmlvm_ios_EAAccessory();
}
@end

void org_xmlvm_ios_EAAccessory_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EAAccessory class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EAAccessory();
        org_xmlvm_ios_EAAccessory_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EAAccessory]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EAAccessory]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory___INIT___]
    EAAccessory* var0 = [[EAAccessory alloc ] init];
    org_xmlvm_ios_EAAccessory_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory___INIT___]

    EAAccessory* var0 = [[EAAccessory alloc]init];

    org_xmlvm_ios_EAAccessory_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_isConnected__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isConnected];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getConnectionID__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz connectionID];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getManufacturer__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz manufacturer];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz name];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getModelNumber__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz modelNumber];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getSerialNumber__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz serialNumber];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getFirmwareRevision__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz firmwareRevision];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getHardwareRevision__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz hardwareRevision];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getProtocolStrings__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz protocolStrings];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessory_setDelegate___org_xmlvm_ios_EAAccessoryDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_EAAccessoryDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_EAAccessoryDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER
