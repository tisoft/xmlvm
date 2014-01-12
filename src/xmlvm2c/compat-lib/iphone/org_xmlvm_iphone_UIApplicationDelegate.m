#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_UIApplication.h"
#include "org_xmlvm_iphone_UILocalNotification.h"

#include "org_xmlvm_iphone_UIApplicationDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UIApplicationDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIApplicationDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UIApplicationDelegate __TIB_org_xmlvm_iphone_UIApplicationDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIApplicationDelegate, // classInitializer
    "org.xmlvm.iphone.UIApplicationDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIApplicationDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplicationDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplicationDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplicationDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplicationDelegate_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIApplicationDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIApplicationDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_java_util_Map,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_org_xmlvm_iphone_NSURL,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_java_util_Map,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_org_xmlvm_iphone_NSData,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_org_xmlvm_iphone_UILocalNotification,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_int,
    &__CLASS_double,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_int,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"didFinishLaunchingWithOptions",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;Ljava/util/Map;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"openURL",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;Lorg/xmlvm/iphone/NSURL;Ljava/lang/String;Ljava/lang/Object;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"didBecomeActive",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"willResignActive",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didEnterBackground",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"willEnterForeground",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"willTerminate",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didReceiveRemoteNotification",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;Ljava/util/Map;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didRegisterForRemoteNotificationsWithDeviceToken",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;Lorg/xmlvm/iphone/NSData;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didFailToRegisterForRemoteNotificationsWithError",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;Lorg/xmlvm/iphone/NSError;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didReceiveLocalNotification",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;Lorg/xmlvm/iphone/UILocalNotification;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didReceiveMemoryWarning",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"significantTimeChange",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"willChangeStatusBarOrientation",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;ID)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didChangeStatusBarOrientation",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"willChangeStatusBarFrame",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didChangeStatusBarFrame",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"protectedDataWillBecomeUnavailable",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"protectedDataDidBecomeAvailable",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIApplication;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIApplicationDelegate_didFinishLaunchingWithOptions___org_xmlvm_iphone_UIApplication_java_util_Map(receiver, argsArray[0], argsArray[1]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 1:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIApplicationDelegate_openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object(receiver, argsArray[0], argsArray[1], argsArray[2], argsArray[3]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 2:
        org_xmlvm_iphone_UIApplicationDelegate_didBecomeActive___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UIApplicationDelegate_willResignActive___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UIApplicationDelegate_didEnterBackground___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UIApplicationDelegate_willEnterForeground___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UIApplicationDelegate_willTerminate___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_UIApplicationDelegate_didReceiveRemoteNotification___org_xmlvm_iphone_UIApplication_java_util_Map(receiver, argsArray[0], argsArray[1]);
        break;
    case 8:
        org_xmlvm_iphone_UIApplicationDelegate_didRegisterForRemoteNotificationsWithDeviceToken___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSData(receiver, argsArray[0], argsArray[1]);
        break;
    case 9:
        org_xmlvm_iphone_UIApplicationDelegate_didFailToRegisterForRemoteNotificationsWithError___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSError(receiver, argsArray[0], argsArray[1]);
        break;
    case 10:
        org_xmlvm_iphone_UIApplicationDelegate_didReceiveLocalNotification___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_UILocalNotification(receiver, argsArray[0], argsArray[1]);
        break;
    case 11:
        org_xmlvm_iphone_UIApplicationDelegate_didReceiveMemoryWarning___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 12:
        org_xmlvm_iphone_UIApplicationDelegate_significantTimeChange___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 13:
        org_xmlvm_iphone_UIApplicationDelegate_willChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int_double(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Double*) argsArray[2])->fields.java_lang_Double.value_);
        break;
    case 14:
        org_xmlvm_iphone_UIApplicationDelegate_didChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 15:
        org_xmlvm_iphone_UIApplicationDelegate_willChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect(receiver, argsArray[0], argsArray[1]);
        break;
    case 16:
        org_xmlvm_iphone_UIApplicationDelegate_didChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect(receiver, argsArray[0], argsArray[1]);
        break;
    case 17:
        org_xmlvm_iphone_UIApplicationDelegate_protectedDataWillBecomeUnavailable___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 18:
        org_xmlvm_iphone_UIApplicationDelegate_protectedDataDidBecomeAvailable___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIApplicationDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIApplicationDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIApplicationDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIApplicationDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIApplicationDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIApplicationDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIApplicationDelegate.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIApplicationDelegate")
        __INIT_IMPL_org_xmlvm_iphone_UIApplicationDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIApplicationDelegate()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIApplicationDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIApplicationDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIApplicationDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIApplicationDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIApplicationDelegate);
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.clazz = __CLASS_org_xmlvm_iphone_UIApplicationDelegate;
    __TIB_org_xmlvm_iphone_UIApplicationDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIApplicationDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIApplicationDelegate);
    __CLASS_org_xmlvm_iphone_UIApplicationDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIApplicationDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIApplicationDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIApplicationDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIApplicationDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIApplicationDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIApplicationDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIApplicationDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplicationDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplicationDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIApplicationDelegate()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIApplicationDelegate)
org_xmlvm_iphone_UIApplicationDelegate* me = (org_xmlvm_iphone_UIApplicationDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIApplicationDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UIApplicationDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplicationDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIApplicationDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIApplicationDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIApplicationDelegate();
    org_xmlvm_iphone_UIApplicationDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIApplicationDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate___INIT___]
    org_xmlvm_iphone_NSObject___INIT___(me);
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIApplicationDelegate_didFinishLaunchingWithOptions___org_xmlvm_iphone_UIApplication_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didFinishLaunchingWithOptions___org_xmlvm_iphone_UIApplication_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIApplicationDelegate_openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didBecomeActive___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didBecomeActive___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_willResignActive___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_willResignActive___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didEnterBackground___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didEnterBackground___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_willEnterForeground___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_willEnterForeground___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_willTerminate___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_willTerminate___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didReceiveRemoteNotification___org_xmlvm_iphone_UIApplication_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didReceiveRemoteNotification___org_xmlvm_iphone_UIApplication_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didRegisterForRemoteNotificationsWithDeviceToken___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didRegisterForRemoteNotificationsWithDeviceToken___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSData]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didFailToRegisterForRemoteNotificationsWithError___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didFailToRegisterForRemoteNotificationsWithError___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didReceiveLocalNotification___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_UILocalNotification(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didReceiveLocalNotification___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_UILocalNotification]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didReceiveMemoryWarning___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didReceiveMemoryWarning___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_significantTimeChange___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_significantTimeChange___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_willChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int_double(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_DOUBLE n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_willChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didChangeStatusBarOrientation___org_xmlvm_iphone_UIApplication_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_willChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_willChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_didChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_didChangeStatusBarFrame___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_protectedDataWillBecomeUnavailable___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_protectedDataWillBecomeUnavailable___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_protectedDataDidBecomeAvailable___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_protectedDataDidBecomeAvailable___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

