#ifndef __ORG_XMLVM_IPHONE_CMLOGITEM__
#define __ORG_XMLVM_IPHONE_CMLOGITEM__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CMLogItem
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CMLogItem, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CMLogItem)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMLogItem;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMLogItem_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMLogItem_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMLogItem_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CMLogItem JAVA_DOUBLE timestamp
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CMLogItem \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CMLogItem \
    } org_xmlvm_iphone_CMLogItem

struct org_xmlvm_iphone_CMLogItem {
    __TIB_DEFINITION_org_xmlvm_iphone_CMLogItem* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CMLogItem;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMLogItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CMLogItem
typedef struct org_xmlvm_iphone_CMLogItem org_xmlvm_iphone_CMLogItem;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CMLogItem 7

void __INIT_org_xmlvm_iphone_CMLogItem();
void __INIT_IMPL_org_xmlvm_iphone_CMLogItem();
void __DELETE_org_xmlvm_iphone_CMLogItem(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMLogItem(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CMLogItem();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CMLogItem();
void org_xmlvm_iphone_CMLogItem___INIT___(JAVA_OBJECT me);
JAVA_DOUBLE org_xmlvm_iphone_CMLogItem_timestamp__(JAVA_OBJECT me);

#endif
