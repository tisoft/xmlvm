#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIPreferencesTableCell.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIPreferencesTableCell __CLASS_org_xmlvm_iphone_UIPreferencesTableCell = {
    0, // classInitialized
    "org.xmlvm.iphone.UIPreferencesTableCell", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIPreferencesTableCell()
{
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTableCell;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIPreferencesTableCell.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_setTitle___java_lang_String;
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_getTitle__;
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_setEnabled___boolean;
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_setGroupCell___boolean;
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTableCell_isGroupCell__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIPreferencesTableCell.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPreferencesTableCell]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIPreferencesTableCell(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPreferencesTableCell]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTableCell()
{
    if (!__CLASS_org_xmlvm_iphone_UIPreferencesTableCell.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTableCell();
    org_xmlvm_iphone_UIPreferencesTableCell* me = (org_xmlvm_iphone_UIPreferencesTableCell*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPreferencesTableCell));
    me->__class = &__CLASS_org_xmlvm_iphone_UIPreferencesTableCell;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPreferencesTableCell]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIPreferencesTableCell);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTableCell()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPreferencesTableCell();
    org_xmlvm_iphone_UIPreferencesTableCell___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPreferencesTableCell___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTableCell_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPreferencesTableCell_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTableCell_setEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_setEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTableCell_setGroupCell___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_setGroupCell___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIPreferencesTableCell_isGroupCell__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableCell_isGroupCell__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

