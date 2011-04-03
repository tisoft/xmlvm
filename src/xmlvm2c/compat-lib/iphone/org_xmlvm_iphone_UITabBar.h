#ifndef __ORG_XMLVM_IPHONE_UITABBAR__
#define __ORG_XMLVM_IPHONE_UITABBAR__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITabBarDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarController
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarController
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITabBarController)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBarItem
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITabBarItem)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UITabBar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITabBar, 83, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UITabBar)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITabBar
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITabBar \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        JAVA_OBJECT tbcontrol_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITabBar \
    } org_xmlvm_iphone_UITabBar

struct org_xmlvm_iphone_UITabBar {
    __TIB_DEFINITION_org_xmlvm_iphone_UITabBar* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITabBar;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBar
typedef struct org_xmlvm_iphone_UITabBar org_xmlvm_iphone_UITabBar;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITabBar 83
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_getDelegate__ 65
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate 66
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_getItems__ 67
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList 68
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean 69
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_getSelectedItem__ 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_setSelectedIndex___int 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_isCustomizing__ 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_getBarStyle__ 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_setBarStyle___int 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_getTintColor__ 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_isTranslucent__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_setTranslucent___boolean 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITabBar_updateViews__ 82

void __INIT_org_xmlvm_iphone_UITabBar();
void __INIT_IMPL_org_xmlvm_iphone_UITabBar();
void __DELETE_org_xmlvm_iphone_UITabBar(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITabBar(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBar();
void org_xmlvm_iphone_UITabBar___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UITabBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 65
JAVA_OBJECT org_xmlvm_iphone_UITabBar_getDelegate__(JAVA_OBJECT me);
// Vtable index: 66
void org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 67
JAVA_OBJECT org_xmlvm_iphone_UITabBar_getItems__(JAVA_OBJECT me);
// Vtable index: 68
void org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 69
void org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2);
// Vtable index: 70
JAVA_OBJECT org_xmlvm_iphone_UITabBar_getSelectedItem__(JAVA_OBJECT me);
// Vtable index: 71
void org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 72
void org_xmlvm_iphone_UITabBar_setSelectedIndex___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 73
void org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 74
JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 75
JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_isCustomizing__(JAVA_OBJECT me);
// Vtable index: 76
JAVA_INT org_xmlvm_iphone_UITabBar_getBarStyle__(JAVA_OBJECT me);
// Vtable index: 77
void org_xmlvm_iphone_UITabBar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 78
JAVA_OBJECT org_xmlvm_iphone_UITabBar_getTintColor__(JAVA_OBJECT me);
// Vtable index: 79
void org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 80
JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_isTranslucent__(JAVA_OBJECT me);
// Vtable index: 81
void org_xmlvm_iphone_UITabBar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 82
void org_xmlvm_iphone_UITabBar_updateViews__(JAVA_OBJECT me);

#endif
