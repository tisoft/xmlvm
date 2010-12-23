
#include "org_xmlvm_iphone_CLDistanceFilter.h"

__TIB_DEFINITION_org_xmlvm_iphone_CLDistanceFilter __TIB_org_xmlvm_iphone_CLDistanceFilter = {
    0, // classInitialized
    "org.xmlvm.iphone.CLDistanceFilter", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_DOUBLE _STATIC_org_xmlvm_iphone_CLDistanceFilter_None;

void __INIT_org_xmlvm_iphone_CLDistanceFilter()
{
    __TIB_org_xmlvm_iphone_CLDistanceFilter.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CLDistanceFilter.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLDistanceFilter;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLDistanceFilter.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CLDistanceFilter.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CLDistanceFilter.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
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
    if (!__TIB_org_xmlvm_iphone_CLDistanceFilter.classInitialized) __INIT_org_xmlvm_iphone_CLDistanceFilter();
    org_xmlvm_iphone_CLDistanceFilter* me = (org_xmlvm_iphone_CLDistanceFilter*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLDistanceFilter));
    me->tib = &__TIB_org_xmlvm_iphone_CLDistanceFilter;
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
    if (!__TIB_org_xmlvm_iphone_CLDistanceFilter.classInitialized) __INIT_org_xmlvm_iphone_CLDistanceFilter();
    return _STATIC_org_xmlvm_iphone_CLDistanceFilter_None;
}

void org_xmlvm_iphone_CLDistanceFilter_PUT_None(JAVA_DOUBLE v)
{
    if (!__TIB_org_xmlvm_iphone_CLDistanceFilter.classInitialized) __INIT_org_xmlvm_iphone_CLDistanceFilter();
    _STATIC_org_xmlvm_iphone_CLDistanceFilter_None = v;
}

