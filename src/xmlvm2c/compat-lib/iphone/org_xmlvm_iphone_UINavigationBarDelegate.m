#include "xmlvm.h"
#include "org_xmlvm_iphone_UINavigationBar.h"
#include "org_xmlvm_iphone_UINavigationItem.h"

#include "org_xmlvm_iphone_UINavigationBarDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UINavigationBarDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UINavigationBarDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationBarDelegate __TIB_org_xmlvm_iphone_UINavigationBarDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UINavigationBarDelegate, // classInitializer
    "org.xmlvm.iphone.UINavigationBarDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UINavigationBarDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UINavigationBarDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UINavigationBarDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UINavigationBar,
    &__CLASS_org_xmlvm_iphone_UINavigationItem,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UINavigationBar,
    &__CLASS_org_xmlvm_iphone_UINavigationItem,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UINavigationBar,
    &__CLASS_org_xmlvm_iphone_UINavigationItem,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UINavigationBar,
    &__CLASS_org_xmlvm_iphone_UINavigationItem,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"shouldPushItem",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didPushItem",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldPopItem",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didPopItem",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UINavigationBarDelegate_shouldPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem(receiver, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_UINavigationBarDelegate_didPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem(receiver, argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_UINavigationBarDelegate_shouldPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_UINavigationBarDelegate_didPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UINavigationBarDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UINavigationBarDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UINavigationBarDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UINavigationBarDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UINavigationBarDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UINavigationBarDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UINavigationBarDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UINavigationBarDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UINavigationBarDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UINavigationBarDelegate);
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.clazz = __CLASS_org_xmlvm_iphone_UINavigationBarDelegate;
    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationBarDelegate);
    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationBarDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UINavigationBarDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationBarDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UINavigationBarDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UINavigationBarDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UINavigationBarDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationBarDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationBarDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UINavigationBarDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UINavigationBarDelegate.classInitialized) __INIT_org_xmlvm_iphone_UINavigationBarDelegate();
    org_xmlvm_iphone_UINavigationBarDelegate* me = (org_xmlvm_iphone_UINavigationBarDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UINavigationBarDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UINavigationBarDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationBarDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UINavigationBarDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UINavigationBarDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UINavigationBarDelegate();
    org_xmlvm_iphone_UINavigationBarDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UINavigationBarDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBarDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UINavigationBarDelegate_shouldPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBarDelegate_shouldPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBarDelegate_didPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBarDelegate_didPushItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UINavigationBarDelegate_shouldPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBarDelegate_shouldPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBarDelegate_didPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBarDelegate_didPopItem___org_xmlvm_iphone_UINavigationBar_org_xmlvm_iphone_UINavigationItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

