#include "xmlvm.h"
#include "org_xmlvm_iphone_MKReverseGeocoderDelegate.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"

#include "org_xmlvm_iphone_MKReverseGeocoder.h"

#define XMLVM_CURRENT_CLASS_NAME MKReverseGeocoder
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKReverseGeocoder

__TIB_DEFINITION_org_xmlvm_iphone_MKReverseGeocoder __TIB_org_xmlvm_iphone_MKReverseGeocoder = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKReverseGeocoder, // classInitializer
    "org.xmlvm.iphone.MKReverseGeocoder", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKReverseGeocoder), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKReverseGeocoder;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKReverseGeocoder_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKReverseGeocoder();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKReverseGeocoder___INIT____org_xmlvm_iphone_CLLocationCoordinate2D(obj, argsArray[0]);
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
    &__CLASS_org_xmlvm_iphone_MKReverseGeocoderDelegate,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getCoordinate",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPlacemark",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isQuerying",
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
    {"start",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"cancel",
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
        org_xmlvm_iphone_MKReverseGeocoder_getCoordinate__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_MKReverseGeocoder_getPlacemark__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_MKReverseGeocoder_isQuerying__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_MKReverseGeocoder_getDelegate__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_MKReverseGeocoder_setDelegate___org_xmlvm_iphone_MKReverseGeocoderDelegate(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_MKReverseGeocoder_start__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_MKReverseGeocoder_cancel__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKReverseGeocoder()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_MKReverseGeocoder);
    if (!__TIB_org_xmlvm_iphone_MKReverseGeocoder.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_MKReverseGeocoder();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_MKReverseGeocoder);
}

void __INIT_IMPL_org_xmlvm_iphone_MKReverseGeocoder()
{
    if (!__TIB_org_xmlvm_iphone_MKReverseGeocoder.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKReverseGeocoder;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKReverseGeocoder.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_MKReverseGeocoder_getCoordinate__;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_MKReverseGeocoder_getPlacemark__;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_MKReverseGeocoder_isQuerying__;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_MKReverseGeocoder_getDelegate__;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_MKReverseGeocoder_setDelegate___org_xmlvm_iphone_MKReverseGeocoderDelegate;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_MKReverseGeocoder_start__;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_MKReverseGeocoder_cancel__;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_MKReverseGeocoder.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_MKReverseGeocoder = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKReverseGeocoder);
        __TIB_org_xmlvm_iphone_MKReverseGeocoder.clazz = __CLASS_org_xmlvm_iphone_MKReverseGeocoder;
        __CLASS_org_xmlvm_iphone_MKReverseGeocoder_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKReverseGeocoder, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKReverseGeocoder]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_MKReverseGeocoder.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_MKReverseGeocoder(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKReverseGeocoder]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKReverseGeocoder(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKReverseGeocoder()
{
    if (!__TIB_org_xmlvm_iphone_MKReverseGeocoder.classInitialized) __INIT_org_xmlvm_iphone_MKReverseGeocoder();
    org_xmlvm_iphone_MKReverseGeocoder* me = (org_xmlvm_iphone_MKReverseGeocoder*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKReverseGeocoder));
    me->tib = &__TIB_org_xmlvm_iphone_MKReverseGeocoder;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKReverseGeocoder(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKReverseGeocoder]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKReverseGeocoder()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKReverseGeocoder___INIT____org_xmlvm_iphone_CLLocationCoordinate2D(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKReverseGeocoder___INIT____org_xmlvm_iphone_CLLocationCoordinate2D]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKReverseGeocoder_getCoordinate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKReverseGeocoder_getCoordinate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKReverseGeocoder_getPlacemark__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKReverseGeocoder_getPlacemark__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKReverseGeocoder_isQuerying__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKReverseGeocoder_isQuerying__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKReverseGeocoder_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKReverseGeocoder_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKReverseGeocoder_setDelegate___org_xmlvm_iphone_MKReverseGeocoderDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKReverseGeocoder_setDelegate___org_xmlvm_iphone_MKReverseGeocoderDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKReverseGeocoder_start__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKReverseGeocoder_start__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKReverseGeocoder_cancel__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKReverseGeocoder_cancel__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

