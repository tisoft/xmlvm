#ifndef __ORG_XMLVM_IPHONE_UITABBARITEM__
#define __ORG_XMLVM_IPHONE_UITABBARITEM__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIBarItem.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIBarItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIBarItem
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIBarItem)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITabBarItem)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UITabBarItem
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITabBarItem, 24, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UITabBarItem)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITabBarItem
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITabBarItem 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBarItem_getBadgeValue__ 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String 18

void __INIT_org_xmlvm_iphone_UITabBarItem();
void __INIT_IMPL_org_xmlvm_iphone_UITabBarItem();
void __DELETE_org_xmlvm_iphone_UITabBarItem(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarItem();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarItem();
void org_xmlvm_iphone_UITabBarItem___INIT___(JAVA_OBJECT me);
// Vtable index: 22
JAVA_OBJECT org_xmlvm_iphone_UITabBarItem_getBadgeValue__(JAVA_OBJECT me);
// Vtable index: 23
void org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 18
void org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UITabBarItem_access$000___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT n1);

#endif
