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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITabBarItem, 29)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarItem; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem \
    } org_xmlvm_iphone_UITabBarItem

struct org_xmlvm_iphone_UITabBarItem {
    __CLASS_DEFINITION_org_xmlvm_iphone_UITabBarItem* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
typedef struct org_xmlvm_iphone_UITabBarItem org_xmlvm_iphone_UITabBarItem;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITabBarItem 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBarItem_getBadgeValue__ 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String 23

void __INIT_org_xmlvm_iphone_UITabBarItem();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarItem();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarItem();
void org_xmlvm_iphone_UITabBarItem___INIT___(JAVA_OBJECT me);
// Vtable index: 27
JAVA_OBJECT org_xmlvm_iphone_UITabBarItem_getBadgeValue__(JAVA_OBJECT me);
// Vtable index: 28
void org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 23
void org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UITabBarItem_access$0___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT n1);

#endif
