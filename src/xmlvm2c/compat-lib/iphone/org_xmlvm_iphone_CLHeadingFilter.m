
#include "org_xmlvm_iphone_CLHeadingFilter.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CLHeadingFilter __CLASS_org_xmlvm_iphone_CLHeadingFilter = {
    0, // classInitialized
    "org.xmlvm.iphone.CLHeadingFilter", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLHeadingFilter_None;

void __INIT_org_xmlvm_iphone_CLHeadingFilter()
{
    __CLASS_org_xmlvm_iphone_CLHeadingFilter.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_CLHeadingFilter.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLHeadingFilter;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CLHeadingFilter.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CLHeadingFilter.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CLHeadingFilter.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_CLHeadingFilter_None = -1.0;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLHeadingFilter]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLHeadingFilter(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLHeadingFilter]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLHeadingFilter()
{
    if (!__CLASS_org_xmlvm_iphone_CLHeadingFilter.classInitialized) __INIT_org_xmlvm_iphone_CLHeadingFilter();
    org_xmlvm_iphone_CLHeadingFilter* me = (org_xmlvm_iphone_CLHeadingFilter*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLHeadingFilter));
    me->__class = &__CLASS_org_xmlvm_iphone_CLHeadingFilter;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLHeadingFilter]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLHeadingFilter()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_DOUBLE org_xmlvm_iphone_CLHeadingFilter_GET_None()
{
    if (!__CLASS_org_xmlvm_iphone_CLHeadingFilter.classInitialized) __INIT_org_xmlvm_iphone_CLHeadingFilter();
    return _STATIC_org_xmlvm_iphone_CLHeadingFilter_None;
}

void org_xmlvm_iphone_CLHeadingFilter_PUT_None(JAVA_DOUBLE v)
{
    if (!__CLASS_org_xmlvm_iphone_CLHeadingFilter.classInitialized) __INIT_org_xmlvm_iphone_CLHeadingFilter();
    _STATIC_org_xmlvm_iphone_CLHeadingFilter_None = v;
}

