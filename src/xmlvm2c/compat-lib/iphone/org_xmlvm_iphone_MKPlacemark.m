#include "xmlvm.h"
#include "java_util_Map.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"

#include "org_xmlvm_iphone_MKPlacemark.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME MKPlacemark
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKPlacemark

__TIB_DEFINITION_org_xmlvm_iphone_MKPlacemark __TIB_org_xmlvm_iphone_MKPlacemark = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MKPlacemark, // classInitializer
    "org.xmlvm.iphone.MKPlacemark", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_MKAnnotation, // extends
    sizeof(org_xmlvm_iphone_MKPlacemark), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPlacemark;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPlacemark_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPlacemark_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPlacemark_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
    &__CLASS_java_util_Map,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKPlacemark();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKPlacemark___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_java_util_Map(obj, argsArray[0], argsArray[1]);
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
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getAddressDictionary",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getAdministrativeArea",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCountry",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCountryCode",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getLocality",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPostalCode",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSubAdministrativeArea",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSubLocality",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSubThoroughfare",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getThoroughfare",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCoordinate",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"title",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"subtitle",
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
        org_xmlvm_iphone_MKPlacemark_getAddressDictionary__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_MKPlacemark_getAdministrativeArea__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_MKPlacemark_getCountry__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_MKPlacemark_getCountryCode__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_MKPlacemark_getLocality__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_MKPlacemark_getPostalCode__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_MKPlacemark_getSubAdministrativeArea__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_MKPlacemark_getSubLocality__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_MKPlacemark_getSubThoroughfare__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_MKPlacemark_getThoroughfare__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_MKPlacemark_getCoordinate__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_MKPlacemark_title__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_MKPlacemark_subtitle__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKPlacemark()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MKPlacemark);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MKPlacemark.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MKPlacemark.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MKPlacemark);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MKPlacemark.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MKPlacemark.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MKPlacemark.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MKPlacemark();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MKPlacemark()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_MKAnnotation.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotation();
    __TIB_org_xmlvm_iphone_MKPlacemark.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKPlacemark;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKPlacemark.vtable, __TIB_org_xmlvm_iphone_MKAnnotation.vtable, sizeof(__TIB_org_xmlvm_iphone_MKAnnotation.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_MKPlacemark.vtable[7] = (VTABLE_PTR) &org_xmlvm_iphone_MKPlacemark_getCoordinate__;
    __TIB_org_xmlvm_iphone_MKPlacemark.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_MKPlacemark_title__;
    __TIB_org_xmlvm_iphone_MKPlacemark.vtable[8] = (VTABLE_PTR) &org_xmlvm_iphone_MKPlacemark_subtitle__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MKPlacemark.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKPlacemark.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_MKPlacemark.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKPlacemark.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKPlacemark.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKPlacemark.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKPlacemark.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKPlacemark.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MKPlacemark.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKPlacemark.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKPlacemark = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKPlacemark);
    __TIB_org_xmlvm_iphone_MKPlacemark.clazz = __CLASS_org_xmlvm_iphone_MKPlacemark;
    __TIB_org_xmlvm_iphone_MKPlacemark.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MKPlacemark_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKPlacemark);
    __CLASS_org_xmlvm_iphone_MKPlacemark_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKPlacemark_1ARRAY);
    __CLASS_org_xmlvm_iphone_MKPlacemark_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKPlacemark_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKPlacemark]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MKPlacemark.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MKPlacemark(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKPlacemark]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKPlacemark(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKAnnotation(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKPlacemark]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKPlacemark()
{
    if (!__TIB_org_xmlvm_iphone_MKPlacemark.classInitialized) __INIT_org_xmlvm_iphone_MKPlacemark();
    org_xmlvm_iphone_MKPlacemark* me = (org_xmlvm_iphone_MKPlacemark*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKPlacemark));
    me->tib = &__TIB_org_xmlvm_iphone_MKPlacemark;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKPlacemark(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKPlacemark]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKPlacemark()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKPlacemark___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getAddressDictionary__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getAddressDictionary__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getAdministrativeArea__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getAdministrativeArea__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getCountry__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getCountry__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getCountryCode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getCountryCode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getLocality__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getLocality__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getPostalCode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getPostalCode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getSubAdministrativeArea__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getSubAdministrativeArea__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getSubLocality__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getSubLocality__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getSubThoroughfare__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getSubThoroughfare__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getThoroughfare__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getThoroughfare__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_getCoordinate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_getCoordinate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_title__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_title__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKPlacemark_subtitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKPlacemark_subtitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

