#include "xmlvm.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UISearchBarDelegate.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UISearchBar.h"

#define XMLVM_CURRENT_CLASS_NAME UISearchBar
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UISearchBar

__TIB_DEFINITION_org_xmlvm_iphone_UISearchBar __TIB_org_xmlvm_iphone_UISearchBar = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UISearchBar, // classInitializer
    "org.xmlvm.iphone.UISearchBar", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
    sizeof(org_xmlvm_iphone_UISearchBar), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UISearchBar();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UISearchBar___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UISearchBar___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
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
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UISearchBarDelegate,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
};

static JAVA_OBJECT* __method22_arg_types[] = {
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method24_arg_types[] = {
};

static JAVA_OBJECT* __method25_arg_types[] = {
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method26_arg_types[] = {
};

static JAVA_OBJECT* __method27_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method28_arg_types[] = {
};

static JAVA_OBJECT* __method29_arg_types[] = {
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getAutocapitalizationType",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAutocapitalizationType",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getAutocorrectionType",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAutocorrectionType",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getBarStyle",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBarStyle",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getKeyboardType",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setKeyboardType",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPlaceholder",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setPlaceholder",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPrompt",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setPrompt",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isShowsBookmarkButton",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShowsBookmarkButton",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isShowsCancelButton",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShowsCancelButton",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getText",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setText",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTintColor",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTintColor",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isTranslucent",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTranslucent",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getScopeButtonTitles",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setScopeButtonTitles",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSelectedScopeButtonIndex",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSelectedScopeButtonIndex",
    &__method27_arg_types[0],
    sizeof(__method27_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isShowsScopeBar",
    &__method28_arg_types[0],
    sizeof(__method28_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShowsScopeBar",
    &__method29_arg_types[0],
    sizeof(__method29_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_UISearchBar_getAutocorrectionType__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 4:
        org_xmlvm_iphone_UISearchBar_getBarStyle__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UISearchBar_setBarStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 6:
        org_xmlvm_iphone_UISearchBar_getDelegate__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_UISearchBar_getKeyboardType__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UISearchBar_setKeyboardType___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 10:
        org_xmlvm_iphone_UISearchBar_getPlaceholder__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String(receiver, argsArray[0]);
        break;
    case 12:
        org_xmlvm_iphone_UISearchBar_getPrompt__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String(receiver, argsArray[0]);
        break;
    case 14:
        org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 16:
        org_xmlvm_iphone_UISearchBar_isShowsCancelButton__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 18:
        org_xmlvm_iphone_UISearchBar_getText__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_UISearchBar_setText___java_lang_String(receiver, argsArray[0]);
        break;
    case 20:
        org_xmlvm_iphone_UISearchBar_getTintColor__(receiver);
        break;
    case 21:
        org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor(receiver, argsArray[0]);
        break;
    case 22:
        org_xmlvm_iphone_UISearchBar_isTranslucent__(receiver);
        break;
    case 23:
        org_xmlvm_iphone_UISearchBar_setTranslucent___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 24:
        org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__(receiver);
        break;
    case 25:
        org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList(receiver, argsArray[0]);
        break;
    case 26:
        org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__(receiver);
        break;
    case 27:
        org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 28:
        org_xmlvm_iphone_UISearchBar_isShowsScopeBar__(receiver);
        break;
    case 29:
        org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UISearchBar()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UISearchBar);
    if (!__TIB_org_xmlvm_iphone_UISearchBar.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UISearchBar();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UISearchBar);
}

void __INIT_IMPL_org_xmlvm_iphone_UISearchBar()
{
    if (!__TIB_org_xmlvm_iphone_UISearchBar.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UISearchBar.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIControl();
        __TIB_org_xmlvm_iphone_UISearchBar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISearchBar;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISearchBar.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getAutocorrectionType__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getBarStyle__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setBarStyle___int;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getDelegate__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getKeyboardType__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setKeyboardType___int;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getPlaceholder__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getPrompt__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_isShowsCancelButton__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getText__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setText___java_lang_String;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[93] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getTintColor__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[94] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[95] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_isTranslucent__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[96] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setTranslucent___boolean;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[97] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[98] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[99] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[100] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[101] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_isShowsScopeBar__;
        __TIB_org_xmlvm_iphone_UISearchBar.vtable[102] = (VTABLE_PTR) &org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UISearchBar.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UISearchBar.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_UISearchBar.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UISearchBar.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UISearchBar.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UISearchBar.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UISearchBar.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UISearchBar.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UISearchBar.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UISearchBar.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UISearchBar = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UISearchBar);
        __TIB_org_xmlvm_iphone_UISearchBar.clazz = __CLASS_org_xmlvm_iphone_UISearchBar;
        __CLASS_org_xmlvm_iphone_UISearchBar_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISearchBar, 3);
        __CLASS_org_xmlvm_iphone_UISearchBar_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISearchBar, 2);
        __CLASS_org_xmlvm_iphone_UISearchBar_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISearchBar, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISearchBar]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UISearchBar.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UISearchBar(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISearchBar]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISearchBar()
{
    if (!__TIB_org_xmlvm_iphone_UISearchBar.classInitialized) __INIT_org_xmlvm_iphone_UISearchBar();
    org_xmlvm_iphone_UISearchBar* me = (org_xmlvm_iphone_UISearchBar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISearchBar));
    me->tib = &__TIB_org_xmlvm_iphone_UISearchBar;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISearchBar(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISearchBar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISearchBar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISearchBar();
    org_xmlvm_iphone_UISearchBar___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UISearchBar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getAutocorrectionType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getAutocorrectionType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getBarStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getBarStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setBarStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getKeyboardType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getKeyboardType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setKeyboardType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setKeyboardType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getPlaceholder__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getPlaceholder__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getPrompt__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getPrompt__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsCancelButton__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_isShowsCancelButton__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getText__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getText__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setText___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getTintColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getTintColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isTranslucent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_isTranslucent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setTranslucent___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsScopeBar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_isShowsScopeBar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

