#include "org_xmlvm_iphone_NSURL.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSData.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSData __CLASS_org_xmlvm_iphone_NSData = {
    0, // classInitialized
    "org.xmlvm.iphone.NSData", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSData()
{
    __CLASS_org_xmlvm_iphone_NSData.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSData.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSData;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSData.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSData.vtable[4] = (VTABLE_PTR) &org_xmlvm_iphone_NSData_toString__;
    __CLASS_org_xmlvm_iphone_NSData.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSData_toString___int;
    __CLASS_org_xmlvm_iphone_NSData.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean;
    __CLASS_org_xmlvm_iphone_NSData.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSData_length__;
    __CLASS_org_xmlvm_iphone_NSData.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSData_getBytes__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSData.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSData.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSData]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_NSData(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSData]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSData()
{
    if (!__CLASS_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSData* me = (org_xmlvm_iphone_NSData*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSData));
    me->__class = &__CLASS_org_xmlvm_iphone_NSData;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSData]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSData);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSData()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSData___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSData___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_toString__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_toString___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_toString___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_dataWithContentsOfFile___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithContentsOfURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_NSData.classInitialized) __INIT_org_xmlvm_iphone_NSData();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_dataWithContentsOfURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSData_length__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_length__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSData_getBytes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSData_getBytes__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

