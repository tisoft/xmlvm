
#include "org_xmlvm_iphone_MKMapSize.h"

__CLASS_DEFINITION_org_xmlvm_iphone_MKMapSize __CLASS_org_xmlvm_iphone_MKMapSize = {
    0, // classInitialized
    "org.xmlvm.iphone.MKMapSize", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MKMapSize()
{
    __CLASS_org_xmlvm_iphone_MKMapSize.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_MKMapSize.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapSize;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_MKMapSize.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_MKMapSize.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_MKMapSize.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapSize]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKMapSize(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapSize]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapSize()
{
    if (!__CLASS_org_xmlvm_iphone_MKMapSize.classInitialized) __INIT_org_xmlvm_iphone_MKMapSize();
    org_xmlvm_iphone_MKMapSize* me = (org_xmlvm_iphone_MKMapSize*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapSize));
    me->__class = &__CLASS_org_xmlvm_iphone_MKMapSize;
    me->org_xmlvm_iphone_MKMapSize.width_ = 0;
    me->org_xmlvm_iphone_MKMapSize.height_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapSize]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapSize()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKMapSize___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapSize___INIT____double_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

