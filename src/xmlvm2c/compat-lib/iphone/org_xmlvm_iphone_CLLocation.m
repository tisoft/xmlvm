#include "xmlvm.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"

#include "org_xmlvm_iphone_CLLocation.h"

__TIB_DEFINITION_org_xmlvm_iphone_CLLocation __TIB_org_xmlvm_iphone_CLLocation = {
    0, // classInitialized
    "org.xmlvm.iphone.CLLocation", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation_ARRAYTYPE;

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

void __INIT_org_xmlvm_iphone_CLLocation()
{
    __TIB_org_xmlvm_iphone_CLLocation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CLLocation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLLocation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLLocation.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CLLocation.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocation_getAltitude__;
    __TIB_org_xmlvm_iphone_CLLocation.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocation_getCoordinate__;
    __TIB_org_xmlvm_iphone_CLLocation.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocation_getCourse__;
    __TIB_org_xmlvm_iphone_CLLocation.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocation_getHorizontalAccuracy__;
    __TIB_org_xmlvm_iphone_CLLocation.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocation_getSpeed__;
    __TIB_org_xmlvm_iphone_CLLocation.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocation_getTimestamp__;
    __TIB_org_xmlvm_iphone_CLLocation.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocation_getVerticalAccuracy__;
    __TIB_org_xmlvm_iphone_CLLocation.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CLLocation_distanceFromLocation___org_xmlvm_iphone_CLLocation;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CLLocation.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CLLocation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_CLLocation.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocation.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLLocation.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CLLocation.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocation.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CLLocation = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CLLocation);
    __TIB_org_xmlvm_iphone_CLLocation.clazz = __CLASS_org_xmlvm_iphone_CLLocation;
    __CLASS_org_xmlvm_iphone_CLLocation_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocation, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLLocation]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLLocation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLLocation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocation()
{
    if (!__TIB_org_xmlvm_iphone_CLLocation.classInitialized) __INIT_org_xmlvm_iphone_CLLocation();
    org_xmlvm_iphone_CLLocation* me = (org_xmlvm_iphone_CLLocation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLLocation));
    me->tib = &__TIB_org_xmlvm_iphone_CLLocation;
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

