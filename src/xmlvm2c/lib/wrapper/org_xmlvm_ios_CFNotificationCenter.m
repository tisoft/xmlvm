
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFNotificationCenter (CFNotificationCenterWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFNotificationCenter (CFNotificationCenterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFNotificationCenter.classInitialized)
        __INIT_org_xmlvm_ios_CFNotificationCenter();
}
@end

void org_xmlvm_ios_CFNotificationCenter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFNotificationCenter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFNotificationCenter();
        org_xmlvm_ios_CFNotificationCenter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFNotificationCenter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFNotificationCenter]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter___INIT___]
    CFNotificationCenter* var0 = [[CFNotificationCenter alloc ] init];
    org_xmlvm_ios_CFNotificationCenter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_getLocalCenter__]

    CFNotificationCenter* var0 = CFNotificationCenterGetLocalCenter();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_getDistributedCenter__]

    CFNotificationCenter* var0 = CFNotificationCenterGetDistributedCenter();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_getDarwinNotifyCenter__]

    CFNotificationCenter* var0 = CFNotificationCenterGetDarwinNotifyCenter();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_addObserver___byte_1ARRAY_java_lang_Object_java_lang_String_byte_1ARRAY_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_removeObserver___byte_1ARRAY_java_lang_String_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_removeEveryObserver___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_postNotification___java_lang_String_byte_1ARRAY_org_xmlvm_ios_CFDictionary_byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNotificationCenter_postNotificationWithOptions___java_lang_String_byte_1ARRAY_org_xmlvm_ios_CFDictionary_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
