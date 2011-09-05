#include "xmlvm.h"
#include "org_xmlvm_iphone_GKSession.h"
#include "org_xmlvm_iphone_GKPeerPickerController.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_GKPeerPickerControllerDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME GKPeerPickerControllerDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_GKPeerPickerControllerDelegate

__TIB_DEFINITION_org_xmlvm_iphone_GKPeerPickerControllerDelegate __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_GKPeerPickerControllerDelegate, // classInitializer
    "org.xmlvm.iphone.GKPeerPickerControllerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_GKPeerPickerControllerDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_GKPeerPickerControllerDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_GKPeerPickerControllerDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_GKPeerPickerController,
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_GKPeerPickerController,
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_GKPeerPickerController,
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_GKSession,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_GKPeerPickerController,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"didSelectConnectionType",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"sessionForConnectionType",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didConnectPeer",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didCancel",
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
        org_xmlvm_iphone_GKPeerPickerControllerDelegate_didSelectConnectionType___org_xmlvm_iphone_GKPeerPickerController_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_GKPeerPickerControllerDelegate_sessionForConnectionType___org_xmlvm_iphone_GKPeerPickerController_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_GKPeerPickerControllerDelegate_didConnectPeer___org_xmlvm_iphone_GKPeerPickerController_java_lang_String_org_xmlvm_iphone_GKSession(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 3:
        org_xmlvm_iphone_GKPeerPickerControllerDelegate_didCancel___org_xmlvm_iphone_GKPeerPickerController(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_GKPeerPickerControllerDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_GKPeerPickerControllerDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_GKPeerPickerControllerDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_GKPeerPickerControllerDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate);
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.clazz = __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate;
    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate);
    __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_GKPeerPickerControllerDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_GKPeerPickerControllerDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_GKPeerPickerControllerDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerPickerControllerDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_GKPeerPickerControllerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate.classInitialized) __INIT_org_xmlvm_iphone_GKPeerPickerControllerDelegate();
    org_xmlvm_iphone_GKPeerPickerControllerDelegate* me = (org_xmlvm_iphone_GKPeerPickerControllerDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_GKPeerPickerControllerDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_GKPeerPickerControllerDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerPickerControllerDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_GKPeerPickerControllerDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKPeerPickerControllerDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_GKPeerPickerControllerDelegate();
    org_xmlvm_iphone_GKPeerPickerControllerDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_GKPeerPickerControllerDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerControllerDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKPeerPickerControllerDelegate_didSelectConnectionType___org_xmlvm_iphone_GKPeerPickerController_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerControllerDelegate_didSelectConnectionType___org_xmlvm_iphone_GKPeerPickerController_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_GKPeerPickerControllerDelegate_sessionForConnectionType___org_xmlvm_iphone_GKPeerPickerController_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerControllerDelegate_sessionForConnectionType___org_xmlvm_iphone_GKPeerPickerController_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKPeerPickerControllerDelegate_didConnectPeer___org_xmlvm_iphone_GKPeerPickerController_java_lang_String_org_xmlvm_iphone_GKSession(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerControllerDelegate_didConnectPeer___org_xmlvm_iphone_GKPeerPickerController_java_lang_String_org_xmlvm_iphone_GKSession]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKPeerPickerControllerDelegate_didCancel___org_xmlvm_iphone_GKPeerPickerController(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerControllerDelegate_didCancel___org_xmlvm_iphone_GKPeerPickerController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

