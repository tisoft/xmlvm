#include "org_xmlvm_iphone_NSDate.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CLHeading.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CLHeading __CLASS_org_xmlvm_iphone_CLHeading = {
    0, // classInitialized
    "org.xmlvm.iphone.CLHeading", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CLHeading()
{
    __CLASS_org_xmlvm_iphone_CLHeading.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CLHeading.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLHeading;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CLHeading.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_getHeadingAccuracy__;
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_getMagneticHeading__;
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_getTimestamp__;
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_getTrueHeading__;
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_getX__;
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_getY__;
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_getZ__;
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_description__;
    __CLASS_org_xmlvm_iphone_CLHeading.vtable[4] = (VTABLE_PTR) &org_xmlvm_iphone_CLHeading_toString__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CLHeading.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CLHeading.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLHeading]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLHeading(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLHeading]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLHeading()
{
    if (!__CLASS_org_xmlvm_iphone_CLHeading.classInitialized) __INIT_org_xmlvm_iphone_CLHeading();
    org_xmlvm_iphone_CLHeading* me = (org_xmlvm_iphone_CLHeading*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLHeading));
    me->__class = &__CLASS_org_xmlvm_iphone_CLHeading;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLHeading]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLHeading()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getHeadingAccuracy__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_getHeadingAccuracy__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getMagneticHeading__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_getMagneticHeading__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLHeading_getTimestamp__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_getTimestamp__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getTrueHeading__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_getTrueHeading__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getX__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_getX__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getY__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_getY__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getZ__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_getZ__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLHeading_description__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_description__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLHeading_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLHeading_toString__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}
