#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSObject.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSObject __CLASS_org_xmlvm_iphone_NSObject = {
    0, // classInitialized
    "org.xmlvm.iphone.NSObject", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSObject()
{
    __CLASS_org_xmlvm_iphone_NSObject.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_NSObject.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSObject;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSObject.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSObject.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_retain__;
    __CLASS_org_xmlvm_iphone_NSObject.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_release__;
    __CLASS_org_xmlvm_iphone_NSObject.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_NSObject_dealloc__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSObject.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSObject.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSObject(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject()
{
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    org_xmlvm_iphone_NSObject* me = (org_xmlvm_iphone_NSObject*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSObject));
    me->__class = &__CLASS_org_xmlvm_iphone_NSObject;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSObject]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSObject()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSObject();
    org_xmlvm_iphone_NSObject___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSObject___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4)
{
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSObject_retain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_retain__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_release__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_release__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSObject_dealloc__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSObject_dealloc__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

