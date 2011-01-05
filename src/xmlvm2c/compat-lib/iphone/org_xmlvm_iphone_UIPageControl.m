#include "org_xmlvm_iphone_CGSize.h"

#include "org_xmlvm_iphone_UIPageControl.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIPageControl __TIB_org_xmlvm_iphone_UIPageControl = {
    0, // classInitialized
    "org.xmlvm.iphone.UIPageControl", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPageControl;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPageControl_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIPageControl()
{
    __TIB_org_xmlvm_iphone_UIPageControl.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIPageControl.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPageControl;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPageControl.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_sizeForNumberOfPages___int;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_updateCurrentPageDisplay__;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_getCurrentPage__;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_setCurrentPage___int;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_isDefersCurrentPageDisplay__;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_setDefersCurrentPageDisplay___boolean;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_isHidesForSinglePage__;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_setHidesForSinglePage___boolean;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_getNumberOfPages__;
    __TIB_org_xmlvm_iphone_UIPageControl.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UIPageControl_setNumberOfPages___int;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIPageControl.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPageControl.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIPageControl.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIPageControl.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIPageControl = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UIPageControl);
    __TIB_org_xmlvm_iphone_UIPageControl.clazz = __CLASS_org_xmlvm_iphone_UIPageControl;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPageControl]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIPageControl(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPageControl]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPageControl()
{
    if (!__TIB_org_xmlvm_iphone_UIPageControl.classInitialized) __INIT_org_xmlvm_iphone_UIPageControl();
    org_xmlvm_iphone_UIPageControl* me = (org_xmlvm_iphone_UIPageControl*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPageControl));
    me->tib = &__TIB_org_xmlvm_iphone_UIPageControl;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPageControl]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPageControl()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPageControl();
    org_xmlvm_iphone_UIPageControl___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPageControl___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPageControl___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPageControl_sizeForNumberOfPages___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_sizeForNumberOfPages___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPageControl_updateCurrentPageDisplay__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_updateCurrentPageDisplay__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIPageControl_getCurrentPage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_getCurrentPage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPageControl_setCurrentPage___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_setCurrentPage___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIPageControl_isDefersCurrentPageDisplay__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_isDefersCurrentPageDisplay__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPageControl_setDefersCurrentPageDisplay___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_setDefersCurrentPageDisplay___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIPageControl_isHidesForSinglePage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_isHidesForSinglePage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPageControl_setHidesForSinglePage___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_setHidesForSinglePage___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIPageControl_getNumberOfPages__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_getNumberOfPages__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPageControl_setNumberOfPages___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPageControl_setNumberOfPages___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

