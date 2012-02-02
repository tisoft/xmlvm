#ifndef __ORG_XMLVM_IPHONE_UIPREFERENCESTABLE__
#define __ORG_XMLVM_IPHONE_UIPREFERENCESTABLE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPreferencesTableDataSource
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPreferencesTableDataSource
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIPreferencesTableDataSource)
#endif
// Class declarations for org.xmlvm.iphone.UIPreferencesTable
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIPreferencesTable, 13, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIPreferencesTable)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTable;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTable_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTable_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPreferencesTable_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIPreferencesTable
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIPreferencesTable \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIPreferencesTable \
    } org_xmlvm_iphone_UIPreferencesTable

struct org_xmlvm_iphone_UIPreferencesTable {
    __TIB_DEFINITION_org_xmlvm_iphone_UIPreferencesTable* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIPreferencesTable;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPreferencesTable
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPreferencesTable
typedef struct org_xmlvm_iphone_UIPreferencesTable org_xmlvm_iphone_UIPreferencesTable;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIPreferencesTable 13

void __INIT_org_xmlvm_iphone_UIPreferencesTable();
void __INIT_IMPL_org_xmlvm_iphone_UIPreferencesTable();
void __DELETE_org_xmlvm_iphone_UIPreferencesTable(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPreferencesTable(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPreferencesTable();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPreferencesTable();
void org_xmlvm_iphone_UIPreferencesTable___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIPreferencesTable_setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIPreferencesTable_getDataSource__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIPreferencesTable \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIView \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIPreferencesTable \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIView \


#endif
