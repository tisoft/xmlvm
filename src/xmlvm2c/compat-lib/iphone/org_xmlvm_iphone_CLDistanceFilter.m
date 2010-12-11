
#include "org_xmlvm_iphone_CLDistanceFilter.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CLDistanceFilter __CLASS_org_xmlvm_iphone_CLDistanceFilter = {
    0, // classInitialized
    "org.xmlvm.iphone.CLDistanceFilter", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLDistanceFilter_None;

void __INIT_org_xmlvm_iphone_CLDistanceFilter()
{
    __CLASS_org_xmlvm_iphone_CLDistanceFilter.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_CLDistanceFilter.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLDistanceFilter;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CLDistanceFilter.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CLDistanceFilter.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CLDistanceFilter.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_CLDistanceFilter_None = -1.0;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLDistanceFilter]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLDistanceFilter(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLDistanceFilter]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLDistanceFilter()
{
    if (!__CLASS_org_xmlvm_iphone_CLDistanceFilter.classInitialized) __INIT_org_xmlvm_iphone_CLDistanceFilter();
    org_xmlvm_iphone_CLDistanceFilter* me = (org_xmlvm_iphone_CLDistanceFilter*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLDistanceFilter));
    me->__class = &__CLASS_org_xmlvm_iphone_CLDistanceFilter;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLDistanceFilter]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLDistanceFilter()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_DOUBLE org_xmlvm_iphone_CLDistanceFilter_GET_None()
{
    if (!__CLASS_org_xmlvm_iphone_CLDistanceFilter.classInitialized) __INIT_org_xmlvm_iphone_CLDistanceFilter();
    return _STATIC_org_xmlvm_iphone_CLDistanceFilter_None;
}

void org_xmlvm_iphone_CLDistanceFilter_PUT_None(JAVA_DOUBLE v)
{
    if (!__CLASS_org_xmlvm_iphone_CLDistanceFilter.classInitialized) __INIT_org_xmlvm_iphone_CLDistanceFilter();
    _STATIC_org_xmlvm_iphone_CLDistanceFilter_None = v;
}

