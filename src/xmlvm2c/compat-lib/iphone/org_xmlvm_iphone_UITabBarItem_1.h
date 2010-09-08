#ifndef __ORG_XMLVM_IPHONE_UITABBARITEM_1__
#define __ORG_XMLVM_IPHONE_UITABBARITEM_1__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "org_xmlvm_iphone_UIControlDelegate.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIControl)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControlDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControlDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIControlDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITabBarItem)
#endif
// Class declarations for org.xmlvm.iphone.UITabBarItem$1
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITabBarItem_1, 12)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem_1
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem_1 \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        JAVA_OBJECT this_0_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem_1 \
    } org_xmlvm_iphone_UITabBarItem_1

struct org_xmlvm_iphone_UITabBarItem_1 {
    __CLASS_DEFINITION_org_xmlvm_iphone_UITabBarItem_1* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBarItem_1;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem_1
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem_1
typedef struct org_xmlvm_iphone_UITabBarItem_1 org_xmlvm_iphone_UITabBarItem_1;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITabBarItem_1 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBarItem_1_raiseEvent___org_xmlvm_iphone_UIControl_int 11

void __INIT_org_xmlvm_iphone_UITabBarItem_1();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarItem_1();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarItem_1();
void org_xmlvm_iphone_UITabBarItem_1___INIT____org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 11
void org_xmlvm_iphone_UITabBarItem_1_raiseEvent___org_xmlvm_iphone_UIControl_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);

#endif
