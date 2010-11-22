
#include "org_xmlvm_iphone_NSNumberFormatter.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSNumberFormatter __CLASS_org_xmlvm_iphone_NSNumberFormatter = {
    0, // classInitialized
    "org.xmlvm.iphone.NSNumberFormatter", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSNumberFormatter()
{
    __CLASS_org_xmlvm_iphone_NSNumberFormatter.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSNumberFormatter.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSNumberFormatter;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSNumberFormatter.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSNumberFormatter.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int;
    __CLASS_org_xmlvm_iphone_NSNumberFormatter.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSNumberFormatter_numberStyle__;
    __CLASS_org_xmlvm_iphone_NSNumberFormatter.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__;
    __CLASS_org_xmlvm_iphone_NSNumberFormatter.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSNumberFormatter.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSNumberFormatter.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSNumberFormatter]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSNumberFormatter(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSNumberFormatter]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNumberFormatter()
{
    if (!__CLASS_org_xmlvm_iphone_NSNumberFormatter.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatter();
    org_xmlvm_iphone_NSNumberFormatter* me = (org_xmlvm_iphone_NSNumberFormatter*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNumberFormatter));
    me->__class = &__CLASS_org_xmlvm_iphone_NSNumberFormatter;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSNumberFormatter]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNumberFormatter()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSNumberFormatter();
    org_xmlvm_iphone_NSNumberFormatter___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSNumberFormatter___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatter_numberStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter_numberStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

