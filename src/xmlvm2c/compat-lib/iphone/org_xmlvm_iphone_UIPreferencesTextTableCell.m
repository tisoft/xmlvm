#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIPreferencesTextTableCell.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIPreferencesTextTableCell __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell = {
    0, // classInitialized
    "org.xmlvm.iphone.UIPreferencesTextTableCell", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIPreferencesTableCell, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIPreferencesTextTableCell()
{
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIPreferencesTableCell.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTableCell();
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTextTableCell;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.vtable, __TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable, sizeof(__TIB_org_xmlvm_iphone_UIPreferencesTableCell.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTextTableCell_setValue___java_lang_String;
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTextTableCell_getValue__;
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTextTableCell_xmlvmKeyTyped___char;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPreferencesTextTableCell]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIPreferencesTextTableCell(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPreferencesTextTableCell]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTextTableCell()
{
    if (!__TIB_org_xmlvm_iphone_UIPreferencesTextTableCell.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTextTableCell();
    org_xmlvm_iphone_UIPreferencesTextTableCell* me = (org_xmlvm_iphone_UIPreferencesTextTableCell*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPreferencesTextTableCell));
    me->tib = &__TIB_org_xmlvm_iphone_UIPreferencesTextTableCell;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPreferencesTextTableCell]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTextTableCell()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPreferencesTextTableCell();
    org_xmlvm_iphone_UIPreferencesTextTableCell___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPreferencesTextTableCell___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTextTableCell___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTextTableCell_setValue___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTextTableCell_setValue___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPreferencesTextTableCell_getValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTextTableCell_getValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTextTableCell_xmlvmKeyTyped___char(JAVA_OBJECT me, JAVA_CHAR n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTextTableCell_xmlvmKeyTyped___char]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

