#include "xmlvm.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_ADBannerView.h"

#include "org_xmlvm_iphone_ADBannerViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME ADBannerViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_ADBannerViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_ADBannerViewDelegate __TIB_org_xmlvm_iphone_ADBannerViewDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_ADBannerViewDelegate, // classInitializer
    "org.xmlvm.iphone.ADBannerViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_ADBannerViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_1ARRAY;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_ADBannerViewDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_ADBannerViewDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_ADBannerView,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_ADBannerView,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_ADBannerView,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_ADBannerView,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"didLoadAd",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldBegin",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didFailToReceiveAdWithError",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didFinish",
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
        org_xmlvm_iphone_ADBannerViewDelegate_didLoadAd___org_xmlvm_iphone_ADBannerView(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_ADBannerViewDelegate_shouldBegin___org_xmlvm_iphone_ADBannerView_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 2:
        org_xmlvm_iphone_ADBannerViewDelegate_didFailToReceiveAdWithError___org_xmlvm_iphone_ADBannerView_org_xmlvm_iphone_NSError(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_ADBannerViewDelegate_didFinish___org_xmlvm_iphone_ADBannerView(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_ADBannerViewDelegate()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_ADBannerViewDelegate);
    if (!__TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_ADBannerViewDelegate();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_ADBannerViewDelegate);
}

void __INIT_IMPL_org_xmlvm_iphone_ADBannerViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_ADBannerViewDelegate;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_ADBannerViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerViewDelegate_didLoadAd___org_xmlvm_iphone_ADBannerView;
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerViewDelegate_shouldBegin___org_xmlvm_iphone_ADBannerView_boolean;
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerViewDelegate_didFailToReceiveAdWithError___org_xmlvm_iphone_ADBannerView_org_xmlvm_iphone_NSError;
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_ADBannerViewDelegate_didFinish___org_xmlvm_iphone_ADBannerView;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_ADBannerViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_ADBannerViewDelegate);
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.clazz = __CLASS_org_xmlvm_iphone_ADBannerViewDelegate;
        __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerViewDelegate, 3);
        __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerViewDelegate, 2);
        __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerViewDelegate, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_ADBannerViewDelegate]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_ADBannerViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_ADBannerViewDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerViewDelegate(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_ADBannerViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_ADBannerViewDelegate();
    org_xmlvm_iphone_ADBannerViewDelegate* me = (org_xmlvm_iphone_ADBannerViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_ADBannerViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_ADBannerViewDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerViewDelegate(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_ADBannerViewDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_ADBannerViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_ADBannerViewDelegate();
    org_xmlvm_iphone_ADBannerViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_ADBannerViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerViewDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerViewDelegate_didLoadAd___org_xmlvm_iphone_ADBannerView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerViewDelegate_didLoadAd___org_xmlvm_iphone_ADBannerView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_ADBannerViewDelegate_shouldBegin___org_xmlvm_iphone_ADBannerView_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerViewDelegate_shouldBegin___org_xmlvm_iphone_ADBannerView_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerViewDelegate_didFailToReceiveAdWithError___org_xmlvm_iphone_ADBannerView_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerViewDelegate_didFailToReceiveAdWithError___org_xmlvm_iphone_ADBannerView_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_ADBannerViewDelegate_didFinish___org_xmlvm_iphone_ADBannerView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_ADBannerViewDelegate_didFinish___org_xmlvm_iphone_ADBannerView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

