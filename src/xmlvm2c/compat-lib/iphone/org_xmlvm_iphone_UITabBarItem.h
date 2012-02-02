#ifndef __ORG_XMLVM_IPHONE_UITABBARITEM__
#define __ORG_XMLVM_IPHONE_UITABBARITEM__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_UIBarItem.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UITabBarItem
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITabBarItem, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UITabBarItem)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITabBarItem

void org_xmlvm_iphone_UITabBarItem_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj);
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITabBarItem \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIBarItem; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITabBarItem \
    } org_xmlvm_iphone_UITabBarItem

struct org_xmlvm_iphone_UITabBarItem {
    __TIB_DEFINITION_org_xmlvm_iphone_UITabBarItem* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITabBarItem;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
typedef struct org_xmlvm_iphone_UITabBarItem org_xmlvm_iphone_UITabBarItem;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITabBarItem 8
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String 7

void __INIT_org_xmlvm_iphone_UITabBarItem();
void __INIT_IMPL_org_xmlvm_iphone_UITabBarItem();
void __DELETE_org_xmlvm_iphone_UITabBarItem(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarItem();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarItem();
void org_xmlvm_iphone_UITabBarItem___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UITabBarItem_getBadgeValue__(JAVA_OBJECT me);
void org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 7
void org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UITabBarItem \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIBarItem \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UITabBarItem \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIBarItem \


#endif
