
#include "org_xmlvm_iphone_NSRange.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSRange __CLASS_org_xmlvm_iphone_NSRange = {
    0, // classInitialized
    "org.xmlvm.iphone.NSRange", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSRange()
{
    __CLASS_org_xmlvm_iphone_NSRange.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSRange.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSRange;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSRange.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSRange.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSRange.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSRange]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_NSRange(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSRange]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSRange()
{
    if (!__CLASS_org_xmlvm_iphone_NSRange.classInitialized) __INIT_org_xmlvm_iphone_NSRange();
    org_xmlvm_iphone_NSRange* me = (org_xmlvm_iphone_NSRange*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSRange));
    me->__class = &__CLASS_org_xmlvm_iphone_NSRange;
    me->org_xmlvm_iphone_NSRange.location_ = 0;
    me->org_xmlvm_iphone_NSRange.length_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSRange]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSRange);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSRange()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

