
#include "org_xmlvm_iphone_UIViewGL.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIViewGL __TIB_org_xmlvm_iphone_UIViewGL = {
    0, // classInitialized
    "org.xmlvm.iphone.UIViewGL", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIViewGL()
{
    __TIB_org_xmlvm_iphone_UIViewGL.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIViewGL.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewGL;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewGL.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIViewGL.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewGL.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewGL]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIViewGL(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewGL]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewGL()
{
    if (!__TIB_org_xmlvm_iphone_UIViewGL.classInitialized) __INIT_org_xmlvm_iphone_UIViewGL();
    org_xmlvm_iphone_UIViewGL* me = (org_xmlvm_iphone_UIViewGL*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewGL));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewGL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewGL]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewGL()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIViewGL();
    org_xmlvm_iphone_UIViewGL___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIViewGL___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewGL___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewGL___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewGL___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

