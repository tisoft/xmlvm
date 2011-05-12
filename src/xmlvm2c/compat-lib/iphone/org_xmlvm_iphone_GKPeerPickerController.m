#include "xmlvm.h"
#include "org_xmlvm_iphone_GKPeerPickerControllerDelegate.h"

#include "org_xmlvm_iphone_GKPeerPickerController.h"

#define XMLVM_CURRENT_CLASS_NAME GKPeerPickerController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_GKPeerPickerController

__TIB_DEFINITION_org_xmlvm_iphone_GKPeerPickerController __TIB_org_xmlvm_iphone_GKPeerPickerController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_GKPeerPickerController, // classInitializer
    "org.xmlvm.iphone.GKPeerPickerController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_GKPeerPickerController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerController_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_GKPeerPickerController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_GKPeerPickerController___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_GKPeerPickerControllerDelegate,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getDelegate",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isVisible",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getConnectionTypesMask",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setConnectionTypesMask",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"show",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dismiss",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_GKPeerPickerController_getDelegate__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_GKPeerPickerController_setDelegate___org_xmlvm_iphone_GKPeerPickerControllerDelegate(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_GKPeerPickerController_isVisible__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_GKPeerPickerController_getConnectionTypesMask__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_GKPeerPickerController_setConnectionTypesMask___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 5:
        org_xmlvm_iphone_GKPeerPickerController_show__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_GKPeerPickerController_dismiss__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_GKPeerPickerController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_GKPeerPickerController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_GKPeerPickerController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_GKPeerPickerController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_GKPeerPickerController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_GKPeerPickerController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_GKPeerPickerController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_GKPeerPickerController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_GKPeerPickerController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_GKPeerPickerController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_GKPeerPickerController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_GKPeerPickerController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_GKPeerPickerController.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_GKPeerPickerController.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_GKPeerPickerController_getDelegate__;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_GKPeerPickerController_setDelegate___org_xmlvm_iphone_GKPeerPickerControllerDelegate;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_GKPeerPickerController_isVisible__;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_GKPeerPickerController_getConnectionTypesMask__;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_GKPeerPickerController_setConnectionTypesMask___int;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_GKPeerPickerController_show__;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_GKPeerPickerController_dismiss__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_GKPeerPickerController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_GKPeerPickerController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKPeerPickerController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_GKPeerPickerController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKPeerPickerController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_GKPeerPickerController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKPeerPickerController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_GKPeerPickerController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_GKPeerPickerController);
    __TIB_org_xmlvm_iphone_GKPeerPickerController.clazz = __CLASS_org_xmlvm_iphone_GKPeerPickerController;
    __TIB_org_xmlvm_iphone_GKPeerPickerController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_GKPeerPickerController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerPickerController);
    __CLASS_org_xmlvm_iphone_GKPeerPickerController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerPickerController_1ARRAY);
    __CLASS_org_xmlvm_iphone_GKPeerPickerController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKPeerPickerController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_GKPeerPickerController]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_GKPeerPickerController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_GKPeerPickerController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_GKPeerPickerController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerPickerController(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_GKPeerPickerController()
{
    if (!__TIB_org_xmlvm_iphone_GKPeerPickerController.classInitialized) __INIT_org_xmlvm_iphone_GKPeerPickerController();
    org_xmlvm_iphone_GKPeerPickerController* me = (org_xmlvm_iphone_GKPeerPickerController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_GKPeerPickerController));
    me->tib = &__TIB_org_xmlvm_iphone_GKPeerPickerController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerPickerController(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_GKPeerPickerController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKPeerPickerController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_GKPeerPickerController();
    org_xmlvm_iphone_GKPeerPickerController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_GKPeerPickerController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_GKPeerPickerController_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerController_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKPeerPickerController_setDelegate___org_xmlvm_iphone_GKPeerPickerControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerController_setDelegate___org_xmlvm_iphone_GKPeerPickerControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_GKPeerPickerController_isVisible__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerController_isVisible__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_GKPeerPickerController_getConnectionTypesMask__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerController_getConnectionTypesMask__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKPeerPickerController_setConnectionTypesMask___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerController_setConnectionTypesMask___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKPeerPickerController_show__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerController_show__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKPeerPickerController_dismiss__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKPeerPickerController_dismiss__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

