
#include "org_xmlvm_iphone_NSHTTPURLResponseHolder.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSHTTPURLResponseHolder __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder = {
    0, // classInitialized
    "org.xmlvm.iphone.NSHTTPURLResponseHolder", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSHTTPURLResponseHolder()
{
    __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPURLResponseHolder;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSHTTPURLResponseHolder]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSHTTPURLResponseHolder()
{
    if (!__CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder.classInitialized) __INIT_org_xmlvm_iphone_NSHTTPURLResponseHolder();
    org_xmlvm_iphone_NSHTTPURLResponseHolder* me = (org_xmlvm_iphone_NSHTTPURLResponseHolder*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSHTTPURLResponseHolder));
    me->__class = &__CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSHTTPURLResponseHolder]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPURLResponseHolder()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSHTTPURLResponseHolder();
    org_xmlvm_iphone_NSHTTPURLResponseHolder___INIT___(me);
    return me;
}

void __DELETE_org_xmlvm_iphone_NSHTTPURLResponseHolder(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSHTTPURLResponseHolder]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSHTTPURLResponseHolder___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSHTTPURLResponseHolder___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

