
#include "org_xmlvm_iphone_UISlider.h"

__TIB_DEFINITION_org_xmlvm_iphone_UISlider __TIB_org_xmlvm_iphone_UISlider = {
    0, // classInitialized
    "org.xmlvm.iphone.UISlider", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UISlider()
{
    __TIB_org_xmlvm_iphone_UISlider.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __TIB_org_xmlvm_iphone_UISlider.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISlider;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISlider.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UISlider.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_setValue___float;
    __TIB_org_xmlvm_iphone_UISlider.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_getValue__;
    __TIB_org_xmlvm_iphone_UISlider.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_setMinimumValue___float;
    __TIB_org_xmlvm_iphone_UISlider.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_getMinimumValue__;
    __TIB_org_xmlvm_iphone_UISlider.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_setMaximumValue___float;
    __TIB_org_xmlvm_iphone_UISlider.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_getMaximumValue__;
    __TIB_org_xmlvm_iphone_UISlider.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UISlider.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISlider.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISlider]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UISlider(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISlider]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISlider()
{
    if (!__TIB_org_xmlvm_iphone_UISlider.classInitialized) __INIT_org_xmlvm_iphone_UISlider();
    org_xmlvm_iphone_UISlider* me = (org_xmlvm_iphone_UISlider*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISlider));
    me->tib = &__TIB_org_xmlvm_iphone_UISlider;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISlider]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISlider()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISlider();
    org_xmlvm_iphone_UISlider___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UISlider___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider_setValue___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_setValue___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UISlider_getValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_getValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider_setMinimumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_setMinimumValue___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UISlider_getMinimumValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_getMinimumValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider_setMaximumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_setMaximumValue___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UISlider_getMaximumValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_getMaximumValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

