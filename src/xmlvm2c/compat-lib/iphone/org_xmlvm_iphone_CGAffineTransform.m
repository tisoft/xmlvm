
#include "org_xmlvm_iphone_CGAffineTransform.h"

__TIB_DEFINITION_org_xmlvm_iphone_CGAffineTransform __TIB_org_xmlvm_iphone_CGAffineTransform = {
    0, // classInitialized
    "org.xmlvm.iphone.CGAffineTransform", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CGAffineTransform()
{
    __TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CGAffineTransform.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGAffineTransform;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGAffineTransform.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGAffineTransform.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGAffineTransform.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGAffineTransform]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGAffineTransform(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGAffineTransform]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGAffineTransform()
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    org_xmlvm_iphone_CGAffineTransform* me = (org_xmlvm_iphone_CGAffineTransform*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGAffineTransform));
    me->tib = &__TIB_org_xmlvm_iphone_CGAffineTransform;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGAffineTransform]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGAffineTransform()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_make___float_float_float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4, JAVA_FLOAT n5, JAVA_FLOAT n6)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_make___float_float_float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeRotation___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_makeRotation___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeScale___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_makeScale___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeTranslation___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_makeTranslation___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_rotate___org_xmlvm_iphone_CGAffineTransform_float(JAVA_OBJECT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_rotate___org_xmlvm_iphone_CGAffineTransform_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_scale___org_xmlvm_iphone_CGAffineTransform_float_float(JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_scale___org_xmlvm_iphone_CGAffineTransform_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_translate___org_xmlvm_iphone_CGAffineTransform_float_float(JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_translate___org_xmlvm_iphone_CGAffineTransform_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_concat___org_xmlvm_iphone_CGAffineTransform_org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_concat___org_xmlvm_iphone_CGAffineTransform_org_xmlvm_iphone_CGAffineTransform]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_identity__()
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_identity__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

