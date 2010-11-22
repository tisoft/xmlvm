
#include "org_xmlvm_iphone_NSIndexPath.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSIndexPath __CLASS_org_xmlvm_iphone_NSIndexPath = {
    0, // classInitialized
    "org.xmlvm.iphone.NSIndexPath", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSIndexPath()
{
    __CLASS_org_xmlvm_iphone_NSIndexPath.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSIndexPath.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSIndexPath.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSIndexPath.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_getSection__;
    __CLASS_org_xmlvm_iphone_NSIndexPath.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_getRow__;
    __CLASS_org_xmlvm_iphone_NSIndexPath.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_setSection___int;
    __CLASS_org_xmlvm_iphone_NSIndexPath.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSIndexPath_setRow___int;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSIndexPath.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSIndexPath.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSIndexPath]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSIndexPath(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSIndexPath]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSIndexPath()
{
    if (!__CLASS_org_xmlvm_iphone_NSIndexPath.classInitialized) __INIT_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath* me = (org_xmlvm_iphone_NSIndexPath*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSIndexPath));
    me->__class = &__CLASS_org_xmlvm_iphone_NSIndexPath;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSIndexPath]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSIndexPath()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSIndexPath();
    org_xmlvm_iphone_NSIndexPath___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSIndexPath___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__CLASS_org_xmlvm_iphone_NSIndexPath.classInitialized) __INIT_org_xmlvm_iphone_NSIndexPath();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_indexPathForRow___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSIndexPath_getSection__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_getSection__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSIndexPath_getRow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_getRow__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSIndexPath_setSection___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_setSection___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSIndexPath_setRow___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSIndexPath_setRow___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

