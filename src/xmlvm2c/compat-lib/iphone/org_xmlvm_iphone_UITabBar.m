#include "xmlvm.h"
#include "org_xmlvm_iphone_UITabBarDelegate.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UITabBarController.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "org_xmlvm_iphone_UITabBarItem.h"

#include "org_xmlvm_iphone_UITabBar.h"

#define XMLVM_CURRENT_CLASS_NAME UITabBar
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITabBar

__TIB_DEFINITION_org_xmlvm_iphone_UITabBar __TIB_org_xmlvm_iphone_UITabBar = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITabBar, // classInitializer
    "org.xmlvm.iphone.UITabBar", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UITabBar), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"tbcontrol",
    &__CLASS_org_xmlvm_iphone_UITabBarController,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UITabBar, fields.org_xmlvm_iphone_UITabBar.tbcontrol_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITabBar();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITabBar___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UITabBar___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
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
    &__CLASS_org_xmlvm_iphone_UITabBarDelegate,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_util_ArrayList,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITabBarItem,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
};

static JAVA_OBJECT* __method15_arg_types[] = {
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method17_arg_types[] = {
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
    {"getItems",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setItems",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setItems",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSelectedItem",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectedItem",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectedIndex",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"beginCustomizingItems",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"endCustomizingAnimated",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isCustomizing",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBarStyle",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBarStyle",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTintColor",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTintColor",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isTranslucent",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTranslucent",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"updateViews",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITabBar_getDelegate__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UITabBar_getItems__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 5:
        org_xmlvm_iphone_UITabBar_getSelectedItem__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_UITabBar_setSelectedIndex___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 8:
        org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 9:
        org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 10:
        org_xmlvm_iphone_UITabBar_isCustomizing__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_UITabBar_getBarStyle__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UITabBar_setBarStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 13:
        org_xmlvm_iphone_UITabBar_getTintColor__(receiver);
        break;
    case 14:
        org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor(receiver, argsArray[0]);
        break;
    case 15:
        org_xmlvm_iphone_UITabBar_isTranslucent__(receiver);
        break;
    case 16:
        org_xmlvm_iphone_UITabBar_setTranslucent___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 17:
        org_xmlvm_iphone_UITabBar_updateViews__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITabBar()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UITabBar);
    if (!__TIB_org_xmlvm_iphone_UITabBar.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UITabBar();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UITabBar);
}

void __INIT_IMPL_org_xmlvm_iphone_UITabBar()
{
    if (!__TIB_org_xmlvm_iphone_UITabBar.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UITabBar.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIView();
        __TIB_org_xmlvm_iphone_UITabBar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBar;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBar.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UITabBar.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getDelegate__;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getItems__;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getSelectedItem__;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setSelectedIndex___int;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_isCustomizing__;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getBarStyle__;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setBarStyle___int;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getTintColor__;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_isTranslucent__;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setTranslucent___boolean;
        __TIB_org_xmlvm_iphone_UITabBar.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_updateViews__;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_UITabBar.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UITabBar.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_UITabBar.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITabBar.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITabBar.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UITabBar.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITabBar.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITabBar.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UITabBar.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITabBar.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UITabBar = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITabBar);
        __TIB_org_xmlvm_iphone_UITabBar.clazz = __CLASS_org_xmlvm_iphone_UITabBar;
        __CLASS_org_xmlvm_iphone_UITabBar_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBar, 3);
        __CLASS_org_xmlvm_iphone_UITabBar_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBar, 2);
        __CLASS_org_xmlvm_iphone_UITabBar_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITabBar, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBar]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UITabBar.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UITabBar(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBar]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBar(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
    ((org_xmlvm_iphone_UITabBar*) me)->fields.org_xmlvm_iphone_UITabBar.tbcontrol_ = (org_xmlvm_iphone_UITabBarController*) JAVA_NULL;
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBar()
{
    if (!__TIB_org_xmlvm_iphone_UITabBar.classInitialized) __INIT_org_xmlvm_iphone_UITabBar();
    org_xmlvm_iphone_UITabBar* me = (org_xmlvm_iphone_UITabBar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBar));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBar;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBar(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBar();
    org_xmlvm_iphone_UITabBar___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getItems__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getItems__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getSelectedItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getSelectedItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setSelectedIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setSelectedIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_isCustomizing__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_isCustomizing__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITabBar_getBarStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getBarStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setBarStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getTintColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getTintColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_isTranslucent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_isTranslucent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setTranslucent___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

