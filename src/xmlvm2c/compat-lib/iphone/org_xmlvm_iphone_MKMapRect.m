#include "org_xmlvm_iphone_MKMapPoint.h"
#include "org_xmlvm_iphone_MKMapSize.h"

#include "org_xmlvm_iphone_MKMapRect.h"

__TIB_DEFINITION_org_xmlvm_iphone_MKMapRect __TIB_org_xmlvm_iphone_MKMapRect = {
    0, // classInitialized
    "org.xmlvm.iphone.MKMapRect", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_MKMapRect()
{
    __TIB_org_xmlvm_iphone_MKMapRect.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKMapRect.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapRect;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKMapRect.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKMapRect.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKMapRect.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapRect]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKMapRect(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapRect]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapRect()
{
    if (!__TIB_org_xmlvm_iphone_MKMapRect.classInitialized) __INIT_org_xmlvm_iphone_MKMapRect();
    org_xmlvm_iphone_MKMapRect* me = (org_xmlvm_iphone_MKMapRect*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapRect));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapRect;
    me->fields.org_xmlvm_iphone_MKMapRect.origin_ = (org_xmlvm_iphone_MKMapPoint*) JAVA_NULL;
    me->fields.org_xmlvm_iphone_MKMapRect.size_ = (org_xmlvm_iphone_MKMapSize*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapRect]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapRect()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKMapRect___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapRect___INIT____float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

