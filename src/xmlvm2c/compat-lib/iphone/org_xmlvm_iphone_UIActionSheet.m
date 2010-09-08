#include "org_xmlvm_iphone_UIToolbar.h"
#include "org_xmlvm_iphone_UITabBar.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_UIActionSheetDelegate.h"

#include "org_xmlvm_iphone_UIActionSheet.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIActionSheet __CLASS_org_xmlvm_iphone_UIActionSheet = {
    0, // classInitialized
    "org.xmlvm.iphone.UIActionSheet", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIActionSheet()
{
    __CLASS_org_xmlvm_iphone_UIActionSheet.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIActionSheet.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIActionSheet;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIActionSheet.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIActionSheet.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar;
    __CLASS_org_xmlvm_iphone_UIActionSheet.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar;
    __CLASS_org_xmlvm_iphone_UIActionSheet.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UIActionSheet.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIActionSheet.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIActionSheet.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActionSheet()
{
    if (!__CLASS_org_xmlvm_iphone_UIActionSheet.classInitialized) __INIT_org_xmlvm_iphone_UIActionSheet();
    org_xmlvm_iphone_UIActionSheet* me = (org_xmlvm_iphone_UIActionSheet*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIActionSheet));
    me->__class = &__CLASS_org_xmlvm_iphone_UIActionSheet;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIActionSheet()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_UIActionSheet(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIActionSheet]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_ARRAYTYPE(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_OBJECT n5)
{
    if (!__CLASS_org_xmlvm_iphone_UIActionSheet.classInitialized) __INIT_org_xmlvm_iphone_UIActionSheet();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_ARRAYTYPE]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

