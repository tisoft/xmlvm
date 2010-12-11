#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CLRegion.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CLRegion __CLASS_org_xmlvm_iphone_CLRegion = {
    0, // classInitialized
    "org.xmlvm.iphone.CLRegion", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CLRegion()
{
    __CLASS_org_xmlvm_iphone_CLRegion.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CLRegion.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLRegion;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CLRegion.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CLRegion.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getCenter__;
    __CLASS_org_xmlvm_iphone_CLRegion.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getIdentifier__;
    __CLASS_org_xmlvm_iphone_CLRegion.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getRadius__;
    __CLASS_org_xmlvm_iphone_CLRegion.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CLRegion.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CLRegion.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLRegion(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLRegion()
{
    if (!__CLASS_org_xmlvm_iphone_CLRegion.classInitialized) __INIT_org_xmlvm_iphone_CLRegion();
    org_xmlvm_iphone_CLRegion* me = (org_xmlvm_iphone_CLRegion*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLRegion));
    me->__class = &__CLASS_org_xmlvm_iphone_CLRegion;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLRegion()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CLRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLRegion_getCenter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getCenter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLRegion_getIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLRegion_getRadius__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getRadius__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

