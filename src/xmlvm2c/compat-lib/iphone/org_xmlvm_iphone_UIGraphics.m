#include "org_xmlvm_iphone_UIImage.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGContext.h"

#include "org_xmlvm_iphone_UIGraphics.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIGraphics __CLASS_org_xmlvm_iphone_UIGraphics = {
    0, // classInitialized
    "org.xmlvm.iphone.UIGraphics", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIGraphics()
{
    __CLASS_org_xmlvm_iphone_UIGraphics.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIGraphics.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIGraphics;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIGraphics.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIGraphics.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIGraphics.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);

    org_xmlvm_iphone_UIGraphics___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIGraphics]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIGraphics(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIGraphics]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIGraphics()
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    org_xmlvm_iphone_UIGraphics* me = (org_xmlvm_iphone_UIGraphics*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIGraphics));
    me->__class = &__CLASS_org_xmlvm_iphone_UIGraphics;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIGraphics]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIGraphics);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIGraphics()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIGraphics_getCurrentContext__()
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_getCurrentContext__]
	org_xmlvm_iphone_CGContext *toRet = __NEW_org_xmlvm_iphone_CGContext();
	toRet->org_xmlvm_iphone_CGContext.ocContext = UIGraphicsGetCurrentContext();
	return toRet;
    //XMLVM_END_WRAPPER
}



void org_xmlvm_iphone_UIGraphics_pushContext___org_xmlvm_iphone_CGContext(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_pushContext___org_xmlvm_iphone_CGContext]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_popContext__()
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_popContext__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_beginImageContext___org_xmlvm_iphone_CGSize(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_beginImageContext___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_beginImageContextWithOptions___org_xmlvm_iphone_CGSize_boolean_float(JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_FLOAT n3)
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_beginImageContextWithOptions___org_xmlvm_iphone_CGSize_boolean_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIGraphics_getImageFromCurrentImageContext__()
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_getImageFromCurrentImageContext__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_endImageContext__()
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_endImageContext__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics___CLINIT_()
{
    if (!__CLASS_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics___CLINIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

