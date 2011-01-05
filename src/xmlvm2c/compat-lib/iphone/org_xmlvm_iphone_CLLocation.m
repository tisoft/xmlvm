#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"

#include "org_xmlvm_iphone_CLLocation.h"

__TIB_DEFINITION_org_xmlvm_iphone_CLLocation __TIB_org_xmlvm_iphone_CLLocation = {
    0, // classInitialized
    "org.xmlvm.iphone.CLLocation", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocation_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

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
    __CLASS_org_xmlvm_iphone_CLLocation = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_CLLocation);
    __TIB_org_xmlvm_iphone_CLLocation.clazz = __CLASS_org_xmlvm_iphone_CLLocation;

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

