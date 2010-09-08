#include "org_xmlvm_iphone_UIPreferencesTableDataSource.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIPreferencesTable.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIPreferencesTable __CLASS_org_xmlvm_iphone_UIPreferencesTable = {
    0, // classInitialized
    "org.xmlvm.iphone.UIPreferencesTable", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIPreferencesTable()
{
    __CLASS_org_xmlvm_iphone_UIPreferencesTable.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIPreferencesTable.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTable;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIPreferencesTable.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIPreferencesTable.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTable_setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource;
    __CLASS_org_xmlvm_iphone_UIPreferencesTable.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIPreferencesTable_getDataSource__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIPreferencesTable.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIPreferencesTable.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPreferencesTable]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTable()
{
    if (!__CLASS_org_xmlvm_iphone_UIPreferencesTable.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTable();
    org_xmlvm_iphone_UIPreferencesTable* me = (org_xmlvm_iphone_UIPreferencesTable*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPreferencesTable));
    me->__class = &__CLASS_org_xmlvm_iphone_UIPreferencesTable;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPreferencesTable]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTable()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_UIPreferencesTable(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPreferencesTable]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTable___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTable___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIPreferencesTable_setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTable_setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIPreferencesTable_getDataSource__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTable_getDataSource__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

