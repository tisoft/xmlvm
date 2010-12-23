#include "java_lang_String.h"

#include "org_xmlvm_iphone_CGSize.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGSize __TIB_org_xmlvm_iphone_CGSize = {
    0, // classInitialized
    "org.xmlvm.iphone.CGSize", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CGSize()
{
    __TIB_org_xmlvm_iphone_CGSize.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CGSize.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGSize;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGSize.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CGSize.vtable[4] = (VTABLE_PTR) &org_xmlvm_iphone_CGSize_toString__;
    __TIB_org_xmlvm_iphone_CGSize.vtable[2] = (VTABLE_PTR) &org_xmlvm_iphone_CGSize_equals___java_lang_Object;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGSize.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGSize.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGSize]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGSize(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGSize]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGSize()
{
    if (!__TIB_org_xmlvm_iphone_CGSize.classInitialized) __INIT_org_xmlvm_iphone_CGSize();
    org_xmlvm_iphone_CGSize* me = (org_xmlvm_iphone_CGSize*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGSize));
    me->tib = &__TIB_org_xmlvm_iphone_CGSize;
    me->fields.org_xmlvm_iphone_CGSize.width_ = 0;
    me->fields.org_xmlvm_iphone_CGSize.height_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGSize]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGSize()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CGSize___INIT____org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGSize___INIT____org_xmlvm_iphone_CGSize]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGSize___INIT____float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGSize___INIT____float_float]
	org_xmlvm_iphone_CGSize* thiz = me;
    thiz->fields.org_xmlvm_iphone_CGSize.width_ = n1;
    thiz->fields.org_xmlvm_iphone_CGSize.height_ = n2;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGSize_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGSize_toString__]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGSize_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGSize_equals___java_lang_Object]
	XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

