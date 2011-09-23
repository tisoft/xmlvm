#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler.h"
#include "org_xmlvm_iphone_UIBarButtonItem.h"
#include "org_xmlvm_iphone_NSData.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIPrintInteractionController.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME UIPrintInteractionController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIPrintInteractionController

__TIB_DEFINITION_org_xmlvm_iphone_UIPrintInteractionController __TIB_org_xmlvm_iphone_UIPrintInteractionController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIPrintInteractionController, // classInitializer
    "org.xmlvm.iphone.UIPrintInteractionController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIPrintInteractionController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPrintInteractionController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPrintInteractionController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPrintInteractionController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPrintInteractionController_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include <UIKit/UIPrintInteractionController.h>
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIPrintInteractionController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_boolean,
    &__CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIBarButtonItem,
    &__CLASS_boolean,
    &__CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
    &__CLASS_org_xmlvm_iphone_UIView,
    &__CLASS_boolean,
    &__CLASS_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSObject,
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"sharedPrintController",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isPrintingAvailable",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"canPrintData",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"canPrintURL",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"printableUTIs",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"presentAnimated",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"presentFromBarButtonItem",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"presentFromRect",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dismissAnimated",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPrintingItem",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setPrintingItem",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPrintingItems",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setPrintingItems",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIPrintInteractionController_sharedPrintController__();
        break;
    case 1:
        org_xmlvm_iphone_UIPrintInteractionController_isPrintingAvailable__();
        break;
    case 2:
        org_xmlvm_iphone_UIPrintInteractionController_canPrintData___org_xmlvm_iphone_NSData(argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UIPrintInteractionController_canPrintURL___org_xmlvm_iphone_NSURL(argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UIPrintInteractionController_printableUTIs__();
        break;
    case 5:
        org_xmlvm_iphone_UIPrintInteractionController_presentAnimated___boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_, argsArray[1]);
        break;
    case 6:
        org_xmlvm_iphone_UIPrintInteractionController_presentFromBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_, argsArray[2]);
        break;
    case 7:
        org_xmlvm_iphone_UIPrintInteractionController_presentFromRect___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView_boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler(receiver, argsArray[0], argsArray[1], ((java_lang_Boolean*) argsArray[2])->fields.java_lang_Boolean.value_, argsArray[3]);
        break;
    case 8:
        org_xmlvm_iphone_UIPrintInteractionController_dismissAnimated___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 9:
        org_xmlvm_iphone_UIPrintInteractionController_getPrintingItem__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UIPrintInteractionController_setPrintingItem___org_xmlvm_iphone_NSObject(receiver, argsArray[0]);
        break;
    case 11:
        org_xmlvm_iphone_UIPrintInteractionController_getPrintingItems__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UIPrintInteractionController_setPrintingItems___java_util_ArrayList(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIPrintInteractionController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIPrintInteractionController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIPrintInteractionController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIPrintInteractionController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIPrintInteractionController.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIPrintInteractionController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIPrintInteractionController()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPrintInteractionController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPrintInteractionController.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIPrintInteractionController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIPrintInteractionController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIPrintInteractionController);
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.clazz = __CLASS_org_xmlvm_iphone_UIPrintInteractionController;
    __TIB_org_xmlvm_iphone_UIPrintInteractionController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIPrintInteractionController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPrintInteractionController);
    __CLASS_org_xmlvm_iphone_UIPrintInteractionController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPrintInteractionController_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIPrintInteractionController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIPrintInteractionController_2ARRAY);
    org_xmlvm_iphone_UIPrintInteractionController___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPrintInteractionController]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIPrintInteractionController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPrintInteractionController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPrintInteractionController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPrintInteractionController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPrintInteractionController()
{
    if (!__TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitialized) __INIT_org_xmlvm_iphone_UIPrintInteractionController();
    org_xmlvm_iphone_UIPrintInteractionController* me = (org_xmlvm_iphone_UIPrintInteractionController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPrintInteractionController));
    me->tib = &__TIB_org_xmlvm_iphone_UIPrintInteractionController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPrintInteractionController(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPrintInteractionController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPrintInteractionController()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIPrintInteractionController_sharedPrintController__()
{
    if (!__TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitialized) __INIT_org_xmlvm_iphone_UIPrintInteractionController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_sharedPrintController__]
    JAVA_OBJECT me=__NEW_org_xmlvm_iphone_UIPrintInteractionController();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, [UIPrintInteractionController sharedPrintController]);
    return me;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIPrintInteractionController_isPrintingAvailable__()
{
    if (!__TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitialized) __INIT_org_xmlvm_iphone_UIPrintInteractionController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_isPrintingAvailable__]
    return [UIPrintInteractionController isPrintingAvailable];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIPrintInteractionController_canPrintData___org_xmlvm_iphone_NSData(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitialized) __INIT_org_xmlvm_iphone_UIPrintInteractionController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_canPrintData___org_xmlvm_iphone_NSData]
    XMLVM_VAR_IOS(NSData, data, n1);
    return [UIPrintInteractionController canPrintData:data];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIPrintInteractionController_canPrintURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitialized) __INIT_org_xmlvm_iphone_UIPrintInteractionController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_canPrintURL___org_xmlvm_iphone_NSURL]
    XMLVM_VAR_IOS(NSURL, url, n1);
    return [UIPrintInteractionController canPrintURL:url];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPrintInteractionController_printableUTIs__()
{
    if (!__TIB_org_xmlvm_iphone_UIPrintInteractionController.classInitialized) __INIT_org_xmlvm_iphone_UIPrintInteractionController();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_printableUTIs__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPrintInteractionController_presentAnimated___boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_presentAnimated___boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPrintInteractionController_presentFromBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_presentFromBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(UIBarButtonItem, item, n1);
    XMLVM_VAR_BOOLEAN(animated, n2);
    [thiz presentFromBarButtonItem:item animated:animated completionHandler:nil];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPrintInteractionController_presentFromRect___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView_boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_presentFromRect___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView_boolean_org_xmlvm_iphone_UIPrintInteractionController_UIPrintInteractionCompletionHandler]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPrintInteractionController_dismissAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_dismissAnimated___boolean]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_BOOLEAN(animated, n1);
    [thiz dismissAnimated:animated];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPrintInteractionController_getPrintingItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_getPrintingItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPrintInteractionController_setPrintingItem___org_xmlvm_iphone_NSObject(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_setPrintingItem___org_xmlvm_iphone_NSObject]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(NSObject, item, n1);
    [thiz setPrintingItem:item];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPrintInteractionController_getPrintingItems__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_getPrintingItems__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPrintInteractionController_setPrintingItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController_setPrintingItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPrintInteractionController___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPrintInteractionController___CLINIT___]
    //XMLVM_END_WRAPPER
}

