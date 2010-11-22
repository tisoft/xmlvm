#include "org_xmlvm_iphone_UIPickerView.h"

#include "org_xmlvm_iphone_UIPickerViewDataSource.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIPickerViewDataSource __CLASS_org_xmlvm_iphone_UIPickerViewDataSource = {
    0, // classInitialized
    "org.xmlvm.iphone.UIPickerViewDataSource", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIPickerViewDataSource()
{
    __CLASS_org_xmlvm_iphone_UIPickerViewDataSource.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIPickerViewDataSource.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIPickerViewDataSource;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIPickerViewDataSource.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIPickerViewDataSource.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIPickerViewDataSource.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIPickerViewDataSource]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIPickerViewDataSource(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIPickerViewDataSource]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPickerViewDataSource()
{
    if (!__CLASS_org_xmlvm_iphone_UIPickerViewDataSource.classInitialized) __INIT_org_xmlvm_iphone_UIPickerViewDataSource();
    org_xmlvm_iphone_UIPickerViewDataSource* me = (org_xmlvm_iphone_UIPickerViewDataSource*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIPickerViewDataSource));
    me->__class = &__CLASS_org_xmlvm_iphone_UIPickerViewDataSource;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIPickerViewDataSource]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPickerViewDataSource()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIPickerViewDataSource();
    org_xmlvm_iphone_UIPickerViewDataSource___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIPickerViewDataSource___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIPickerViewDataSource___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

