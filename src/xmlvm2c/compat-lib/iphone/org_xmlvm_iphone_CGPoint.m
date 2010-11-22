#include "java_lang_Object.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CGPoint.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CGPoint __CLASS_org_xmlvm_iphone_CGPoint = {
    0, // classInitialized
    "org.xmlvm.iphone.CGPoint", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CGPoint()
{
    __CLASS_org_xmlvm_iphone_CGPoint.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CGPoint.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGPoint;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CGPoint.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CGPoint.vtable[4] = (VTABLE_PTR) &org_xmlvm_iphone_CGPoint_toString__;
    __CLASS_org_xmlvm_iphone_CGPoint.vtable[2] = (VTABLE_PTR) &org_xmlvm_iphone_CGPoint_equals___java_lang_Object;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CGPoint.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CGPoint.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGPoint]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_CGPoint(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGPoint]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPoint()
{
    if (!__CLASS_org_xmlvm_iphone_CGPoint.classInitialized) __INIT_org_xmlvm_iphone_CGPoint();
    org_xmlvm_iphone_CGPoint* me = (org_xmlvm_iphone_CGPoint*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGPoint));
    me->__class = &__CLASS_org_xmlvm_iphone_CGPoint;
    me->org_xmlvm_iphone_CGPoint.x_ = 0;
    me->org_xmlvm_iphone_CGPoint.y_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGPoint]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_CGPoint);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPoint()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CGPoint___INIT____org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPoint___INIT____org_xmlvm_iphone_CGPoint]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGPoint___INIT____float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPoint___INIT____float_float]
	org_xmlvm_iphone_CGPoint* thiz = me;
    thiz->org_xmlvm_iphone_CGPoint.x_ = n1;
    thiz->org_xmlvm_iphone_CGPoint.y_ = n2;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPoint_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPoint_toString__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGPoint_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPoint_equals___java_lang_Object]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

