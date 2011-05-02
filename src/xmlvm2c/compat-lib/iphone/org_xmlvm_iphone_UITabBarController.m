#include "xmlvm.h"
#include "org_xmlvm_iphone_UITabBarControllerDelegate.h"
#include "java_util_ArrayList.h"

#include "org_xmlvm_iphone_UITabBarController.h"

#define XMLVM_CURRENT_CLASS_NAME UITabBarController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITabBarController

__TIB_DEFINITION_org_xmlvm_iphone_UITabBarController __TIB_org_xmlvm_iphone_UITabBarController = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITabBarController, // classInitializer
    "org.xmlvm.iphone.UITabBarController", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIViewController, // extends
    sizeof(org_xmlvm_iphone_UITabBarController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarController_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITabBarController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITabBarController___INIT___(obj);
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
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarControllerDelegate,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIViewController,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_java_util_ArrayList,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method14_arg_types[] = {
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
    {"getCustomizableViewControllers",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setCustomizableViewControllers",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getMoreNavigationController",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSelectedViewController",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectedViewController",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSelectedIndex",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectedIndex",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTabBar",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getViewControllers",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setViewControllers",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setViewControllers",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"updateViews",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITabBarController_requestInternalFrame__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UITabBarController_getDelegate__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UITabBarController_getMoreNavigationController__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_UITabBarController_getSelectedViewController__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_UITabBarController_getSelectedIndex__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UITabBarController_setSelectedIndex___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 10:
        org_xmlvm_iphone_UITabBarController_getTabBar__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_UITabBarController_getViewControllers__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 13:
        org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 14:
        org_xmlvm_iphone_UITabBarController_updateViews__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITabBarController()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UITabBarController);
    if (!__TIB_org_xmlvm_iphone_UITabBarController.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UITabBarController();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UITabBarController);
}

void __INIT_IMPL_org_xmlvm_iphone_UITabBarController()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarController.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UITabBarController.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIViewController.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIViewController();
        __TIB_org_xmlvm_iphone_UITabBarController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarController;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBarController.vtable, __TIB_org_xmlvm_iphone_UIViewController.vtable, sizeof(__TIB_org_xmlvm_iphone_UIViewController.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_requestInternalFrame__;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[62] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[63] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_ArrayList;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[64] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getDelegate__;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[65] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[66] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getMoreNavigationController__;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[67] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getSelectedViewController__;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[68] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getSelectedIndex__;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setSelectedIndex___int;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getTabBar__;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_getViewControllers__;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList_boolean;
        __TIB_org_xmlvm_iphone_UITabBarController.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarController_updateViews__;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UITabBarController.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UITabBarController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_UITabBarController.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITabBarController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITabBarController.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UITabBarController.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITabBarController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITabBarController.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UITabBarController.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITabBarController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UITabBarController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITabBarController);
        __TIB_org_xmlvm_iphone_UITabBarController.clazz = __CLASS_org_xmlvm_iphone_UITabBarController;
        __TIB_org_xmlvm_iphone_UITabBarController.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UITabBarController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarController);
        __CLASS_org_xmlvm_iphone_UITabBarController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarController_1ARRAY);
        __CLASS_org_xmlvm_iphone_UITabBarController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBarController_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarController]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UITabBarController.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UITabBarController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarController]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarController(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewController(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarController()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarController.classInitialized) __INIT_org_xmlvm_iphone_UITabBarController();
    org_xmlvm_iphone_UITabBarController* me = (org_xmlvm_iphone_UITabBarController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarController));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBarController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarController(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarController();
    org_xmlvm_iphone_UITabBarController___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_requestInternalFrame__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_requestInternalFrame__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getCustomizableViewControllers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setCustomizableViewControllers___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setDelegate___org_xmlvm_iphone_UITabBarControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getMoreNavigationController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getMoreNavigationController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getSelectedViewController__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getSelectedViewController__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setSelectedViewController___org_xmlvm_iphone_UIViewController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITabBarController_getSelectedIndex__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getSelectedIndex__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setSelectedIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setSelectedIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getTabBar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getTabBar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarController_getViewControllers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_getViewControllers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_setViewControllers___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarController_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarController_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

