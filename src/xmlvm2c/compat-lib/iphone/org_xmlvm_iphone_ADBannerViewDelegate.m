#include "xmlvm.h"
#include "org_xmlvm_iphone_ADBannerView.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_ADBannerViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME ADBannerViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_ADBannerViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_ADBannerViewDelegate __TIB_org_xmlvm_iphone_ADBannerViewDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_ADBannerViewDelegate, // classInitializer
    "org.xmlvm.iphone.ADBannerViewDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_ADBannerViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_3ARRAY;
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
    staticInitializerLock(&__TIB_org_xmlvm_iphone_ADBannerViewDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_ADBannerViewDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_ADBannerViewDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_ADBannerViewDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_ADBannerViewDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_ADBannerViewDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_ADBannerViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_ADBannerViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_ADBannerViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
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
    __TIB_org_xmlvm_iphone_ADBannerViewDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerViewDelegate);
    __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerViewDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_ADBannerViewDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerViewDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_ADBannerViewDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_ADBannerViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_ADBannerViewDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerViewDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_ADBannerViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_ADBannerViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_ADBannerViewDelegate();
    org_xmlvm_iphone_ADBannerViewDelegate* me = (org_xmlvm_iphone_ADBannerViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_ADBannerViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_ADBannerViewDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerViewDelegate(me, 0);
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

