
#include "org_xmlvm_iphone_UIAcceleration.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIAcceleration __CLASS_org_xmlvm_iphone_UIAcceleration = {
    0, // classInitialized
    "org.xmlvm.iphone.UIAcceleration", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIAcceleration()
{
    __CLASS_org_xmlvm_iphone_UIAcceleration.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIAcceleration.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAcceleration;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIAcceleration.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIAcceleration.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIAcceleration_x__;
    __CLASS_org_xmlvm_iphone_UIAcceleration.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIAcceleration_y__;
    __CLASS_org_xmlvm_iphone_UIAcceleration.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIAcceleration_z__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIAcceleration.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIAcceleration.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAcceleration]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAcceleration()
{
    if (!__CLASS_org_xmlvm_iphone_UIAcceleration.classInitialized) __INIT_org_xmlvm_iphone_UIAcceleration();
    org_xmlvm_iphone_UIAcceleration* me = (org_xmlvm_iphone_UIAcceleration*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAcceleration));
    me->__class = &__CLASS_org_xmlvm_iphone_UIAcceleration;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAcceleration]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAcceleration()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_UIAcceleration(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAcceleration]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAcceleration___INIT____double_double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAcceleration___INIT____double_double_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_x__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAcceleration_x__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_y__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAcceleration_y__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_z__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAcceleration_z__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

