
#include "org_xmlvm_iphone_UIEdgeInsets.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIEdgeInsets __TIB_org_xmlvm_iphone_UIEdgeInsets = {
    0, // classInitialized
    "org.xmlvm.iphone.UIEdgeInsets", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIEdgeInsets()
{
    __TIB_org_xmlvm_iphone_UIEdgeInsets.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIEdgeInsets.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIEdgeInsets;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIEdgeInsets.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIEdgeInsets.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIEdgeInsets.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIEdgeInsets]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIEdgeInsets(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIEdgeInsets]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIEdgeInsets()
{
    if (!__TIB_org_xmlvm_iphone_UIEdgeInsets.classInitialized) __INIT_org_xmlvm_iphone_UIEdgeInsets();
    org_xmlvm_iphone_UIEdgeInsets* me = (org_xmlvm_iphone_UIEdgeInsets*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIEdgeInsets));
    me->tib = &__TIB_org_xmlvm_iphone_UIEdgeInsets;
    me->fields.org_xmlvm_iphone_UIEdgeInsets.top_ = 0;
    me->fields.org_xmlvm_iphone_UIEdgeInsets.left_ = 0;
    me->fields.org_xmlvm_iphone_UIEdgeInsets.bottom_ = 0;
    me->fields.org_xmlvm_iphone_UIEdgeInsets.right_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIEdgeInsets]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIEdgeInsets()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIEdgeInsets();
    org_xmlvm_iphone_UIEdgeInsets___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIEdgeInsets___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIEdgeInsets___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIEdgeInsets___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIEdgeInsets___INIT____float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

