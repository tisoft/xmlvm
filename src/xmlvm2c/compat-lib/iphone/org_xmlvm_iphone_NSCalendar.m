#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "org_xmlvm_iphone_NSDateComponents.h"

#include "org_xmlvm_iphone_NSCalendar.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSCalendar __CLASS_org_xmlvm_iphone_NSCalendar = {
    0, // classInitialized
    "org.xmlvm.iphone.NSCalendar", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSCalendar()
{
    __CLASS_org_xmlvm_iphone_NSCalendar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSCalendar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSCalendar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSCalendar.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSCalendar.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate;
    __CLASS_org_xmlvm_iphone_NSCalendar.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int;
    __CLASS_org_xmlvm_iphone_NSCalendar.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int;
    __CLASS_org_xmlvm_iphone_NSCalendar.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSCalendar.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSCalendar.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSCalendar]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_NSCalendar(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSCalendar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSCalendar()
{
    if (!__CLASS_org_xmlvm_iphone_NSCalendar.classInitialized) __INIT_org_xmlvm_iphone_NSCalendar();
    org_xmlvm_iphone_NSCalendar* me = (org_xmlvm_iphone_NSCalendar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSCalendar));
    me->__class = &__CLASS_org_xmlvm_iphone_NSCalendar;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSCalendar]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSCalendar);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSCalendar()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_currentCalendar__()
{
    if (!__CLASS_org_xmlvm_iphone_NSCalendar.classInitialized) __INIT_org_xmlvm_iphone_NSCalendar();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_currentCalendar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSCalendar_dateFromComponents___org_xmlvm_iphone_NSDateComponents]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

