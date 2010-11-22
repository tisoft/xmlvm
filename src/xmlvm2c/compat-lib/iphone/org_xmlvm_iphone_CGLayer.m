#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGContext.h"

#include "org_xmlvm_iphone_CGLayer.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CGLayer __CLASS_org_xmlvm_iphone_CGLayer = {
    0, // classInitialized
    "org.xmlvm.iphone.CGLayer", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CGLayer()
{
    __CLASS_org_xmlvm_iphone_CGLayer.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CGLayer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGLayer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CGLayer.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CGLayer.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CGLayer_getContext__;
    __CLASS_org_xmlvm_iphone_CGLayer.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CGLayer_getSize__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CGLayer.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CGLayer.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGLayer]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_CGLayer(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGLayer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGLayer()
{
    if (!__CLASS_org_xmlvm_iphone_CGLayer.classInitialized) __INIT_org_xmlvm_iphone_CGLayer();
    org_xmlvm_iphone_CGLayer* me = (org_xmlvm_iphone_CGLayer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGLayer));
    me->__class = &__CLASS_org_xmlvm_iphone_CGLayer;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGLayer]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_CGLayer);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGLayer()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGLayer_createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__CLASS_org_xmlvm_iphone_CGLayer.classInitialized) __INIT_org_xmlvm_iphone_CGLayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGLayer_createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGLayer_getContext__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGLayer_getContext__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGLayer_getSize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGLayer_getSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

