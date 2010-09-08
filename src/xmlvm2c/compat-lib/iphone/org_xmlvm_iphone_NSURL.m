#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSURL.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSURL __CLASS_org_xmlvm_iphone_NSURL = {
    0, // classInitialized
    "org.xmlvm.iphone.NSURL", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSURL()
{
    __CLASS_org_xmlvm_iphone_NSURL.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSURL.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURL;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSURL.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSURL.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSURL_absoluteString__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSURL.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSURL.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURL]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURL()
{
    if (!__CLASS_org_xmlvm_iphone_NSURL.classInitialized) __INIT_org_xmlvm_iphone_NSURL();
    org_xmlvm_iphone_NSURL* me = (org_xmlvm_iphone_NSURL*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURL));
    me->__class = &__CLASS_org_xmlvm_iphone_NSURL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURL]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURL()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_NSURL(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURL]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURL_URLWithString___java_lang_String(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_NSURL.classInitialized) __INIT_org_xmlvm_iphone_NSURL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURL_URLWithString___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURL_fileURLWithPath___java_lang_String(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_NSURL.classInitialized) __INIT_org_xmlvm_iphone_NSURL();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURL_fileURLWithPath___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURL_absoluteString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURL_absoluteString__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

