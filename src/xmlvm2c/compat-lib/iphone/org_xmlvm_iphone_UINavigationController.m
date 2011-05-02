#include "xmlvm.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UINavigationControllerDelegate.h"

#include "org_xmlvm_iphone_UINavigationController.h"

#define XMLVM_CURRENT_CLASS_NAME UINavigationController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UINavigationController

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationController __TIB_org_xmlvm_iphone_UINavigationController = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UINavigationController, // classInitializer
    "org.xmlvm.iphone.UINavigationController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIViewController, // extends
    sizeof(org_xmlvm_iphone_UINavigationController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationController_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIViewController,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UINavigationController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UINavigationController___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UINavigationController___INIT____org_xmlvm_iphone_UIViewController(obj, argsArray[0]);
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
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_util_ArrayList,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIViewController,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIViewController,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_boolean,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_boolean,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method17_arg_types[] = {
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UINavigationControllerDelegate,
};

static JAVA_OBJECT* __method19_arg_types[] = {
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"requestInternalFrame",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTopViewController",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getVisibleViewController",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getViewControllers",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setViewControllers",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setViewControllers",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"pushViewController",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"popViewControllerAnimated",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"popToRootViewControllerAnimated",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"popToViewController",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isNavigationBarHidden",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setNavigationBarHidden",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setNavigationBarHidden",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getNavigationBar",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isToolbarHidden",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setToolbarHidden",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setToolbarHidden",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getToolbar",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"loadView",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"updateViews",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UINavigationController_requestInternalFrame__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_UINavigationController_getTopViewController__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UINavigationController_getVisibleViewController__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UINavigationController_getViewControllers__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UINavigationController_setViewControllers___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UINavigationController_setViewControllers___java_util_ArrayList_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 6:
        org_xmlvm_iphone_UINavigationController_pushViewController___org_xmlvm_iphone_UIViewController_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 7:
        org_xmlvm_iphone_UINavigationController_popViewControllerAnimated___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 8:
        org_xmlvm_iphone_UINavigationController_popToRootViewControllerAnimated___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 9:
        org_xmlvm_iphone_UINavigationController_popToViewController___org_xmlvm_iphone_UIViewController_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 10:
        org_xmlvm_iphone_UINavigationController_isNavigationBarHidden__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_UINavigationController_setNavigationBarHidden___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 12:
        org_xmlvm_iphone_UINavigationController_setNavigationBarHidden___boolean_boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 13:
        org_xmlvm_iphone_UINavigationController_getNavigationBar__(receiver);
        break;
    case 14:
        org_xmlvm_iphone_UINavigationController_isToolbarHidden__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_UINavigationController_setToolbarHidden___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 16:
        org_xmlvm_iphone_UINavigationController_setToolbarHidden___boolean_boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_, ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 17:
        org_xmlvm_iphone_UINavigationController_getToolbar__(receiver);
        break;
    case 18:
        org_xmlvm_iphone_UINavigationController_setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate(receiver, argsArray[0]);
        break;
    case 19:
        org_xmlvm_iphone_UINavigationController_getDelegate__(receiver);
        break;
    case 20:
        org_xmlvm_iphone_UINavigationController_loadView__(receiver);
        break;
    case 21:
        org_xmlvm_iphone_UINavigationController_updateViews__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UINavigationController()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UINavigationController);
    if (!__TIB_org_xmlvm_iphone_UINavigationController.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UINavigationController();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UINavigationController);
}

void __INIT_IMPL_org_xmlvm_iphone_UINavigationController()
{
    if (!__TIB_org_xmlvm_iphone_UINavigationController.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UINavigationController.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIViewController();
        __TIB_org_xmlvm_iphone_UINavigationController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UINavigationController;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UINavigationController.vtable, __TIB_org_xmlvm_iphone_UIViewController.vtable, sizeof(__TIB_org_xmlvm_iphone_UIViewController.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_requestInternalFrame__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[62] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_getTopViewController__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[63] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_getVisibleViewController__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[64] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_getViewControllers__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[65] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_setViewControllers___java_util_ArrayList;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[66] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_setViewControllers___java_util_ArrayList_boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[67] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_pushViewController___org_xmlvm_iphone_UIViewController_boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[68] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_popViewControllerAnimated___boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_popToRootViewControllerAnimated___boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_popToViewController___org_xmlvm_iphone_UIViewController_boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_isNavigationBarHidden__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_setNavigationBarHidden___boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_setNavigationBarHidden___boolean_boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_getNavigationBar__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_isToolbarHidden__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_setToolbarHidden___boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_setToolbarHidden___boolean_boolean;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_getToolbar__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_getDelegate__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_loadView__;
        __TIB_org_xmlvm_iphone_UINavigationController.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationController_updateViews__;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UINavigationController.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UINavigationController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_UINavigationController.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UINavigationController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UINavigationController.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UINavigationController.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UINavigationController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UINavigationController.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UINavigationController.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UINavigationController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UINavigationController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UINavigationController);
        __TIB_org_xmlvm_iphone_UINavigationController.clazz = __CLASS_org_xmlvm_iphone_UINavigationController;
        __TIB_org_xmlvm_iphone_UINavigationController.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UINavigationController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationController);
        __CLASS_org_xmlvm_iphone_UINavigationController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationController_1ARRAY);
        __CLASS_org_xmlvm_iphone_UINavigationController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UINavigationController_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UINavigationController]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UINavigationController.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UINavigationController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UINavigationController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationController(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UINavigationController()
{
    if (!__TIB_org_xmlvm_iphone_UINavigationController.classInitialized) __INIT_org_xmlvm_iphone_UINavigationController();
    org_xmlvm_iphone_UINavigationController* me = (org_xmlvm_iphone_UINavigationController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UINavigationController));
    me->tib = &__TIB_org_xmlvm_iphone_UINavigationController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationController(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UINavigationController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UINavigationController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UINavigationController();
    org_xmlvm_iphone_UINavigationController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UINavigationController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController___INIT____org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController___INIT____org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_requestInternalFrame__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_requestInternalFrame__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_getTopViewController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_getTopViewController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_getVisibleViewController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_getVisibleViewController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_getViewControllers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_getViewControllers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_setViewControllers___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_setViewControllers___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_setViewControllers___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_setViewControllers___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_pushViewController___org_xmlvm_iphone_UIViewController_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_pushViewController___org_xmlvm_iphone_UIViewController_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_popViewControllerAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_popViewControllerAnimated___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_popToRootViewControllerAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_popToRootViewControllerAnimated___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_popToViewController___org_xmlvm_iphone_UIViewController_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_popToViewController___org_xmlvm_iphone_UIViewController_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UINavigationController_isNavigationBarHidden__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_isNavigationBarHidden__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_setNavigationBarHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_setNavigationBarHidden___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_setNavigationBarHidden___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_setNavigationBarHidden___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_getNavigationBar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_getNavigationBar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UINavigationController_isToolbarHidden__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_isToolbarHidden__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_setToolbarHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_setToolbarHidden___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_setToolbarHidden___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_setToolbarHidden___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_getToolbar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_getToolbar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationController_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_loadView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_loadView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationController_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationController_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

