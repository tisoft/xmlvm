#include "xmlvm.h"

#include "org_xmlvm_iphone_CLLocationAccuracy.h"

#define XMLVM_CURRENT_CLASS_NAME CLLocationAccuracy
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CLLocationAccuracy

__TIB_DEFINITION_org_xmlvm_iphone_CLLocationAccuracy __TIB_org_xmlvm_iphone_CLLocationAccuracy = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CLLocationAccuracy, // classInitializer
    "org.xmlvm.iphone.CLLocationAccuracy", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CLLocationAccuracy), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationAccuracy;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationAccuracy_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer;
static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"BestForNavigation",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation,
    "",
    JAVA_NULL},
    {"Best",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best,
    "",
    JAVA_NULL},
    {"NearestTenMeters",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters,
    "",
    JAVA_NULL},
    {"HundredMeters",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters,
    "",
    JAVA_NULL},
    {"Kilometer",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer,
    "",
    JAVA_NULL},
    {"ThreeKilometers",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CLLocationAccuracy();
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

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CLLocationAccuracy()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_CLLocationAccuracy);
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_CLLocationAccuracy();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_CLLocationAccuracy);
}

void __INIT_IMPL_org_xmlvm_iphone_CLLocationAccuracy()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLLocationAccuracy;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLLocationAccuracy.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
        _STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation = -2.0;
        _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best = -1.0;
        _STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters = 10.0;
        _STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters = 100.0;
        _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer = 1000.0;
        _STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers = 3000.0;

        __TIB_org_xmlvm_iphone_CLLocationAccuracy.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_CLLocationAccuracy = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CLLocationAccuracy);
        __TIB_org_xmlvm_iphone_CLLocationAccuracy.clazz = __CLASS_org_xmlvm_iphone_CLLocationAccuracy;
        __CLASS_org_xmlvm_iphone_CLLocationAccuracy_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocationAccuracy, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLLocationAccuracy]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_CLLocationAccuracy(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLLocationAccuracy]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationAccuracy(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocationAccuracy()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    org_xmlvm_iphone_CLLocationAccuracy* me = (org_xmlvm_iphone_CLLocationAccuracy*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLLocationAccuracy));
    me->tib = &__TIB_org_xmlvm_iphone_CLLocationAccuracy;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationAccuracy(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLLocationAccuracy]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocationAccuracy()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_BestForNavigation()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_BestForNavigation(JAVA_DOUBLE v)
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_BestForNavigation = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_Best()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_Best(JAVA_DOUBLE v)
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Best = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_NearestTenMeters()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_NearestTenMeters(JAVA_DOUBLE v)
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_NearestTenMeters = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_HundredMeters()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_HundredMeters(JAVA_DOUBLE v)
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_HundredMeters = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_Kilometer()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_Kilometer(JAVA_DOUBLE v)
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_Kilometer = v;
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocationAccuracy_GET_ThreeKilometers()
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    return _STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers;
}

void org_xmlvm_iphone_CLLocationAccuracy_PUT_ThreeKilometers(JAVA_DOUBLE v)
{
    if (!__TIB_org_xmlvm_iphone_CLLocationAccuracy.classInitialized) __INIT_org_xmlvm_iphone_CLLocationAccuracy();
    _STATIC_org_xmlvm_iphone_CLLocationAccuracy_ThreeKilometers = v;
}

