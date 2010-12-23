#include "org_xmlvm_iphone_UIView.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIPickerViewDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIPickerViewDelegate __TIB_org_xmlvm_iphone_UIPickerViewDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UIPickerViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIPickerViewDelegate()
{
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPickerViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPickerViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIPickerViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPickerViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UIPickerViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIPickerViewDelegate();
    org_xmlvm_iphone_UIPickerViewDelegate* me = (org_xmlvm_iphone_UIPickerViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPickerViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UIPickerViewDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPickerViewDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPickerViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPickerViewDelegate();
    org_xmlvm_iphone_UIPickerViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPickerViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_widthForComponent___org_xmlvm_iphone_UIPickerView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_titleForRow___org_xmlvm_iphone_UIPickerView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDelegate_didSelectRow___org_xmlvm_iphone_UIPickerView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

