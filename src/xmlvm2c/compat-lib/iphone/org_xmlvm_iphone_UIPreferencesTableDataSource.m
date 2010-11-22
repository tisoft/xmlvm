#include "org_xmlvm_iphone_UIPreferencesTable.h"
#include "org_xmlvm_iphone_UIPreferencesTableCell.h"

#include "org_xmlvm_iphone_UIPreferencesTableDataSource.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIPreferencesTableDataSource __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource = {
    0, // classInitialized
    "org.xmlvm.iphone.UIPreferencesTableDataSource", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIPreferencesTableDataSource()
{
    __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTableDataSource;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPreferencesTableDataSource]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UIPreferencesTableDataSource(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPreferencesTableDataSource]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTableDataSource()
{
    if (!__CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource.classInitialized) __INIT_org_xmlvm_iphone_UIPreferencesTableDataSource();
    org_xmlvm_iphone_UIPreferencesTableDataSource* me = (org_xmlvm_iphone_UIPreferencesTableDataSource*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPreferencesTableDataSource));
    me->__class = &__CLASS_org_xmlvm_iphone_UIPreferencesTableDataSource;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPreferencesTableDataSource]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIPreferencesTableDataSource);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTableDataSource()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPreferencesTableDataSource();
    org_xmlvm_iphone_UIPreferencesTableDataSource___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPreferencesTableDataSource___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPreferencesTableDataSource___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

