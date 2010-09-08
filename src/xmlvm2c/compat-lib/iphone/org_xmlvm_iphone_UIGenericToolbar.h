#ifndef __ORG_XMLVM_IPHONE_UIGENERICTOOLBAR__
#define __ORG_XMLVM_IPHONE_UIGENERICTOOLBAR__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIGenericBar.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGenericBar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGenericBar
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIGenericBar)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
// Class declarations for org.xmlvm.iphone.UIGenericToolbar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIGenericToolbar, 76)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericToolbar
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericToolbar \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericBar; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericToolbar \
    } org_xmlvm_iphone_UIGenericToolbar

struct org_xmlvm_iphone_UIGenericToolbar {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIGenericToolbar* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericToolbar;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGenericToolbar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGenericToolbar
typedef struct org_xmlvm_iphone_UIGenericToolbar org_xmlvm_iphone_UIGenericToolbar;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIGenericToolbar 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIGenericToolbar_getBarStyle__ 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIGenericToolbar_setBarStyle___int 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIGenericToolbar_getTintColor__ 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIGenericToolbar_setTintColor___org_xmlvm_iphone_UIColor 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIGenericToolbar_isTranslucent__ 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIGenericToolbar_setTranslucent___boolean 75

void __INIT_org_xmlvm_iphone_UIGenericToolbar();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIGenericToolbar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIGenericToolbar();
void org_xmlvm_iphone_UIGenericToolbar___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIGenericToolbar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 70
JAVA_INT org_xmlvm_iphone_UIGenericToolbar_getBarStyle__(JAVA_OBJECT me);
// Vtable index: 71
void org_xmlvm_iphone_UIGenericToolbar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 72
JAVA_OBJECT org_xmlvm_iphone_UIGenericToolbar_getTintColor__(JAVA_OBJECT me);
// Vtable index: 73
void org_xmlvm_iphone_UIGenericToolbar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 74
JAVA_BOOLEAN org_xmlvm_iphone_UIGenericToolbar_isTranslucent__(JAVA_OBJECT me);
// Vtable index: 75
void org_xmlvm_iphone_UIGenericToolbar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);

#endif
