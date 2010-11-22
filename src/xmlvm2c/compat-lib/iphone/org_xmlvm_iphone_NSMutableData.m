
#include "org_xmlvm_iphone_NSMutableData.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSMutableData __CLASS_org_xmlvm_iphone_NSMutableData = {
    0, // classInitialized
    "org.xmlvm.iphone.NSMutableData", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSData, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSMutableData()
{
    __CLASS_org_xmlvm_iphone_NSMutableData.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    __CLASS_org_xmlvm_iphone_NSMutableData.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSMutableData;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSMutableData.vtable, __CLASS_org_xmlvm_iphone_NSData.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSData.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSMutableData.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableData_byteCount__;
    __CLASS_org_xmlvm_iphone_NSMutableData.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableData_getByte___int;
    __CLASS_org_xmlvm_iphone_NSMutableData.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableData_appendByte___int;
    __CLASS_org_xmlvm_iphone_NSMutableData.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSMutableData.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSMutableData.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSMutableData]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSMutableData(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSMutableData]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSMutableData()
{
    if (!__CLASS_org_xmlvm_iphone_NSMutableData.classInitialized) __INIT_org_xmlvm_iphone_NSMutableData();
    org_xmlvm_iphone_NSMutableData* me = (org_xmlvm_iphone_NSMutableData*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSMutableData));
    me->__class = &__CLASS_org_xmlvm_iphone_NSMutableData;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSMutableData]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSMutableData()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSMutableData();
    org_xmlvm_iphone_NSMutableData___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSMutableData___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSMutableData_byteCount__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData_byteCount__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSMutableData_getByte___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData_getByte___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSMutableData_appendByte___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData_appendByte___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

