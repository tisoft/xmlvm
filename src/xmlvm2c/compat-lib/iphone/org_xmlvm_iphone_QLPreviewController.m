#include "xmlvm.h"
#include "org_xmlvm_iphone_QLPreviewControllerDataSource.h"
#include "org_xmlvm_iphone_QLPreviewControllerDelegate.h"
#include "org_xmlvm_iphone_QLPreviewItem.h"

#include "org_xmlvm_iphone_QLPreviewController.h"

#define XMLVM_CURRENT_CLASS_NAME QLPreviewController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_QLPreviewController

__TIB_DEFINITION_org_xmlvm_iphone_QLPreviewController __TIB_org_xmlvm_iphone_QLPreviewController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_QLPreviewController, // classInitializer
    "org.xmlvm.iphone.QLPreviewController", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIViewController, // extends
    sizeof(org_xmlvm_iphone_QLPreviewController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewController_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_QLPreviewController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_QLPreviewController___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_QLPreviewItem,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource,
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

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_QLPreviewControllerDelegate,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"canPreviewItem",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/QLPreviewItem;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"getDataSource",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/QLPreviewControllerDataSource;",
    JAVA_NULL,
    JAVA_NULL},
    {"setDataSource",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/QLPreviewControllerDataSource;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentPreviewItemIndex",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setCurrentPreviewItemIndex",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentPreviewItem",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/QLPreviewItem;",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/QLPreviewControllerDelegate;",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/QLPreviewControllerDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"reloadData",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"refreshCurrentPreviewItem",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
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
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_QLPreviewController_canPreviewItem___org_xmlvm_iphone_QLPreviewItem(argsArray[0]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_QLPreviewController_getDataSource__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_QLPreviewController_setDataSource___org_xmlvm_iphone_QLPreviewControllerDataSource(receiver, argsArray[0]);
        break;
    case 3:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_QLPreviewController_getCurrentPreviewItemIndex__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 4:
        org_xmlvm_iphone_QLPreviewController_setCurrentPreviewItemIndex___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 5:
        result = (JAVA_OBJECT) org_xmlvm_iphone_QLPreviewController_getCurrentPreviewItem__(receiver);
        break;
    case 6:
        result = (JAVA_OBJECT) org_xmlvm_iphone_QLPreviewController_getDelegate__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_QLPreviewController_setDelegate___org_xmlvm_iphone_QLPreviewControllerDelegate(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_QLPreviewController_reloadData__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_QLPreviewController_refreshCurrentPreviewItem__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_QLPreviewController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_QLPreviewController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_QLPreviewController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_QLPreviewController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_QLPreviewController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_QLPreviewController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_QLPreviewController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_QLPreviewController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_QLPreviewController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_QLPreviewController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_org_xmlvm_iphone_UIViewController();
    __TIB_org_xmlvm_iphone_QLPreviewController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_QLPreviewController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_QLPreviewController.vtable, __TIB_org_xmlvm_iphone_UIViewController.vtable, sizeof(__TIB_org_xmlvm_iphone_UIViewController.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_QLPreviewController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_QLPreviewController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_QLPreviewController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_QLPreviewController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_QLPreviewController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_QLPreviewController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_QLPreviewController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_QLPreviewController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_QLPreviewController);
    __TIB_org_xmlvm_iphone_QLPreviewController.clazz = __CLASS_org_xmlvm_iphone_QLPreviewController;
    __TIB_org_xmlvm_iphone_QLPreviewController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_QLPreviewController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewController);
    __CLASS_org_xmlvm_iphone_QLPreviewController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewController_1ARRAY);
    __CLASS_org_xmlvm_iphone_QLPreviewController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_QLPreviewController]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_QLPreviewController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_QLPreviewController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_QLPreviewController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_QLPreviewController()
{
    if (!__TIB_org_xmlvm_iphone_QLPreviewController.classInitialized) __INIT_org_xmlvm_iphone_QLPreviewController();
    org_xmlvm_iphone_QLPreviewController* me = (org_xmlvm_iphone_QLPreviewController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_QLPreviewController));
    me->tib = &__TIB_org_xmlvm_iphone_QLPreviewController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewController(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_QLPreviewController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_QLPreviewController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_QLPreviewController();
    org_xmlvm_iphone_QLPreviewController___INIT___(me);
    return me;
}

JAVA_BOOLEAN org_xmlvm_iphone_QLPreviewController_canPreviewItem___org_xmlvm_iphone_QLPreviewItem(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_QLPreviewController.classInitialized) __INIT_org_xmlvm_iphone_QLPreviewController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_canPreviewItem___org_xmlvm_iphone_QLPreviewItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_QLPreviewController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_QLPreviewController_getDataSource__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_getDataSource__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_QLPreviewController_setDataSource___org_xmlvm_iphone_QLPreviewControllerDataSource(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_setDataSource___org_xmlvm_iphone_QLPreviewControllerDataSource]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_QLPreviewController_getCurrentPreviewItemIndex__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_getCurrentPreviewItemIndex__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_QLPreviewController_setCurrentPreviewItemIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_setCurrentPreviewItemIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_QLPreviewController_getCurrentPreviewItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_getCurrentPreviewItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_QLPreviewController_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_QLPreviewController_setDelegate___org_xmlvm_iphone_QLPreviewControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_setDelegate___org_xmlvm_iphone_QLPreviewControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_QLPreviewController_reloadData__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_reloadData__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_QLPreviewController_refreshCurrentPreviewItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewController_refreshCurrentPreviewItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

