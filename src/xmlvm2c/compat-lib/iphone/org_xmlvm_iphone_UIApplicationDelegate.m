#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_UIApplication.h"

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
    "",
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
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIApplication,
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
    &__CLASS_org_xmlvm_iphone_NSURL,
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"applicationDidFinishLaunching",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"applicationWillTerminate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"applicationDidBecomeActive",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"applicationWillResignActive",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"applicationDidReceiveMemoryWarning",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"openURL",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UIApplicationDelegate_applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UIApplicationDelegate_applicationWillTerminate___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UIApplicationDelegate_applicationDidBecomeActive___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UIApplicationDelegate_applicationWillResignActive___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UIApplicationDelegate_applicationDidReceiveMemoryWarning___org_xmlvm_iphone_UIApplication(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UIApplicationDelegate_openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object(receiver, argsArray[0], argsArray[1], argsArray[2], argsArray[3]);
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
        __INIT_IMPL_org_xmlvm_iphone_UIApplicationDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIApplicationDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
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
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationDelegate();
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

void org_xmlvm_iphone_UIApplicationDelegate_applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_applicationDidFinishLaunching___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_applicationWillTerminate___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_applicationWillTerminate___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_applicationDidBecomeActive___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_applicationDidBecomeActive___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_applicationWillResignActive___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_applicationWillResignActive___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIApplicationDelegate_applicationDidReceiveMemoryWarning___org_xmlvm_iphone_UIApplication(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_applicationDidReceiveMemoryWarning___org_xmlvm_iphone_UIApplication]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIApplicationDelegate_openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIApplicationDelegate_openURL___org_xmlvm_iphone_UIApplication_org_xmlvm_iphone_NSURL_java_lang_String_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

