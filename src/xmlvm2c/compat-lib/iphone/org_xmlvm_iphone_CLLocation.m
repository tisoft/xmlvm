#include "xmlvm.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#include "org_xmlvm_iphone_NSDate.h"

#include "org_xmlvm_iphone_CLLocation.h"

#define XMLVM_CURRENT_CLASS_NAME CLLocation
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CLLocation

__TIB_DEFINITION_org_xmlvm_iphone_CLLocation __TIB_org_xmlvm_iphone_CLLocation = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CLLocation, // classInitializer
    "org.xmlvm.iphone.CLLocation", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CLLocation), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_double,
    &__CLASS_double,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
    &__CLASS_double,
    &__CLASS_double,
    &__CLASS_double,
    &__CLASS_org_xmlvm_iphone_NSDate,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(DD)V",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CLLocationCoordinate2D;DDDLorg/xmlvm/iphone/NSDate;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CLLocation();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CLLocation___INIT____double_double(obj, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
        break;
    case 1:
        org_xmlvm_iphone_CLLocation___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_double_double_org_xmlvm_iphone_NSDate(obj, argsArray[0], ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[2])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[3])->fields.java_lang_Double.value_, argsArray[4]);
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
    &__CLASS_org_xmlvm_iphone_CLLocation,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getAltitude",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"getCoordinate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CLLocationCoordinate2D;",
    JAVA_NULL,
    JAVA_NULL},
    {"getCourse",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"getHorizontalAccuracy",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"getSpeed",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"getTimestamp",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSDate;",
    JAVA_NULL,
    JAVA_NULL},
    {"getVerticalAccuracy",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"distanceFromLocation",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CLLocation;)D",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CLLocation_getAltitude__(receiver);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CLLocation_getCoordinate__(receiver);
        break;
    case 2:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CLLocation_getCourse__(receiver);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 3:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CLLocation_getHorizontalAccuracy__(receiver);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 4:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CLLocation_getSpeed__(receiver);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 5:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CLLocation_getTimestamp__(receiver);
        break;
    case 6:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CLLocation_getVerticalAccuracy__(receiver);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 7:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CLLocation_distanceFromLocation___org_xmlvm_iphone_CLLocation(receiver, argsArray[0]);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CLLocation()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CLLocation);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CLLocation.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CLLocation.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CLLocation);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CLLocation.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CLLocation.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CLLocation.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CLLocation();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CLLocation()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CLLocation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLLocation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLLocation.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CLLocation.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CLLocation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CLLocation.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocation.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLLocation.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CLLocation.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocation.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLLocation.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CLLocation.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocation.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CLLocation = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CLLocation);
    __TIB_org_xmlvm_iphone_CLLocation.clazz = __CLASS_org_xmlvm_iphone_CLLocation;
    __TIB_org_xmlvm_iphone_CLLocation.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CLLocation_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocation);
    __CLASS_org_xmlvm_iphone_CLLocation_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocation_1ARRAY);
    __CLASS_org_xmlvm_iphone_CLLocation_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocation_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLLocation]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CLLocation.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CLLocation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLLocation]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocation()
{
    if (!__TIB_org_xmlvm_iphone_CLLocation.classInitialized) __INIT_org_xmlvm_iphone_CLLocation();
    org_xmlvm_iphone_CLLocation* me = (org_xmlvm_iphone_CLLocation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLLocation));
    me->tib = &__TIB_org_xmlvm_iphone_CLLocation;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocation(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLLocation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocation()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CLLocation___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation___INIT____double_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CLLocation___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_double_double_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3, JAVA_DOUBLE n4, JAVA_OBJECT n5)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_double_double_org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getAltitude__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation_getAltitude__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLLocation_getCoordinate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation_getCoordinate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getCourse__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation_getCourse__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getHorizontalAccuracy__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation_getHorizontalAccuracy__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getSpeed__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation_getSpeed__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLLocation_getTimestamp__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation_getTimestamp__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocation_getVerticalAccuracy__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation_getVerticalAccuracy__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLLocation_distanceFromLocation___org_xmlvm_iphone_CLLocation(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocation_distanceFromLocation___org_xmlvm_iphone_CLLocation]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

