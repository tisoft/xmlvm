#include "xmlvm.h"
#include "org_xmlvm_iphone_ADBannerViewDelegate.h"
#include "java_util_Set.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_ADBannerView.h"

#define XMLVM_CURRENT_CLASS_NAME ADBannerView
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_ADBannerView

__TIB_DEFINITION_org_xmlvm_iphone_ADBannerView __TIB_org_xmlvm_iphone_ADBannerView = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_ADBannerView, // classInitializer
    "org.xmlvm.iphone.ADBannerView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_ADBannerView), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerView_ARRAYTYPE;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_ADBannerView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_ADBannerView___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_ADBannerViewDelegate,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_java_util_Set,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"sizeFromBannerContentSizeIdentifier",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getAdvertisingSection",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAdvertisingSection",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentContentSizeIdentifier",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setCurrentContentSizeIdentifier",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getRequiredContentSizeIdentifiers",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setRequiredContentSizeIdentifiers",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isBannerLoaded",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isBannerViewActionInProgress",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"cancelBannerViewAction",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_ADBannerView_sizeFromBannerContentSizeIdentifier___java_lang_String(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_ADBannerView_getDelegate__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_ADBannerView_setDelegate___org_xmlvm_iphone_ADBannerViewDelegate(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_ADBannerView_getAdvertisingSection__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_ADBannerView_setAdvertisingSection___java_lang_String(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_ADBannerView_getCurrentContentSizeIdentifier__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_ADBannerView_setCurrentContentSizeIdentifier___java_lang_String(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_ADBannerView_getRequiredContentSizeIdentifiers__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_ADBannerView_setRequiredContentSizeIdentifiers___java_util_Set(receiver, argsArray[0]);
        break;
    case 9:
        org_xmlvm_iphone_ADBannerView_isBannerLoaded__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_ADBannerView_isBannerViewActionInProgress__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_ADBannerView_cancelBannerViewAction__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_ADBannerView()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_ADBannerView);
    if (!__TIB_org_xmlvm_iphone_ADBannerView.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_ADBannerView();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_ADBannerView);
}

void __INIT_IMPL_org_xmlvm_iphone_ADBannerView()
{
    if (!__TIB_org_xmlvm_iphone_ADBannerView.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_ADBannerView.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIView();
        __TIB_org_xmlvm_iphone_ADBannerView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_ADBannerView;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_ADBannerView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_getDelegate__;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_setDelegate___org_xmlvm_iphone_ADBannerViewDelegate;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_getAdvertisingSection__;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_setAdvertisingSection___java_lang_String;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_getCurrentContentSizeIdentifier__;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_setCurrentContentSizeIdentifier___java_lang_String;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_getRequiredContentSizeIdentifiers__;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_setRequiredContentSizeIdentifiers___java_util_Set;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_isBannerLoaded__;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_isBannerViewActionInProgress__;
        __TIB_org_xmlvm_iphone_ADBannerView.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerView_cancelBannerViewAction__;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_ADBannerView.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_ADBannerView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_ADBannerView.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_ADBannerView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_ADBannerView.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_ADBannerView.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_ADBannerView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_ADBannerView.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_ADBannerView.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_ADBannerView.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_ADBannerView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_ADBannerView);
        __TIB_org_xmlvm_iphone_ADBannerView.clazz = __CLASS_org_xmlvm_iphone_ADBannerView;
        __CLASS_org_xmlvm_iphone_ADBannerView_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerView, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_ADBannerView]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_ADBannerView.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_ADBannerView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_ADBannerView]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerView(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_ADBannerView()
{
    if (!__TIB_org_xmlvm_iphone_ADBannerView.classInitialized) __INIT_org_xmlvm_iphone_ADBannerView();
    org_xmlvm_iphone_ADBannerView* me = (org_xmlvm_iphone_ADBannerView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_ADBannerView));
    me->tib = &__TIB_org_xmlvm_iphone_ADBannerView;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerView(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_ADBannerView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_ADBannerView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_ADBannerView();
    org_xmlvm_iphone_ADBannerView___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_ADBannerView_sizeFromBannerContentSizeIdentifier___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_ADBannerView.classInitialized) __INIT_org_xmlvm_iphone_ADBannerView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_sizeFromBannerContentSizeIdentifier___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_ADBannerView_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerView_setDelegate___org_xmlvm_iphone_ADBannerViewDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_setDelegate___org_xmlvm_iphone_ADBannerViewDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_ADBannerView_getAdvertisingSection__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_getAdvertisingSection__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerView_setAdvertisingSection___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_setAdvertisingSection___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_ADBannerView_getCurrentContentSizeIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_getCurrentContentSizeIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerView_setCurrentContentSizeIdentifier___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_setCurrentContentSizeIdentifier___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_ADBannerView_getRequiredContentSizeIdentifiers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_getRequiredContentSizeIdentifiers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerView_setRequiredContentSizeIdentifiers___java_util_Set(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_setRequiredContentSizeIdentifiers___java_util_Set]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_ADBannerView_isBannerLoaded__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_isBannerLoaded__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_ADBannerView_isBannerViewActionInProgress__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_isBannerViewActionInProgress__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerView_cancelBannerViewAction__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerView_cancelBannerViewAction__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

