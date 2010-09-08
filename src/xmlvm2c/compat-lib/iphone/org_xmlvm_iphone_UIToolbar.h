#ifndef __ORG_XMLVM_IPHONE_UITOOLBAR__
#define __ORG_XMLVM_IPHONE_UITOOLBAR__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIGenericToolbar.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGenericToolbar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGenericToolbar
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIGenericToolbar)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
// Class declarations for org.xmlvm.iphone.UIToolbar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIToolbar, 79)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIToolbar
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIToolbar \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericToolbar; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIToolbar \
    } org_xmlvm_iphone_UIToolbar

struct org_xmlvm_iphone_UIToolbar {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIToolbar* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIToolbar;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIToolbar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIToolbar
typedef struct org_xmlvm_iphone_UIToolbar org_xmlvm_iphone_UIToolbar;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIToolbar 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_getItems__ 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList_boolean 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_updateViews__ 69

void __INIT_org_xmlvm_iphone_UIToolbar();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIToolbar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIToolbar();
void org_xmlvm_iphone_UIToolbar___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIToolbar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 76
JAVA_OBJECT org_xmlvm_iphone_UIToolbar_getItems__(JAVA_OBJECT me);
// Vtable index: 77
void org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 78
void org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2);
// Vtable index: 69
void org_xmlvm_iphone_UIToolbar_updateViews__(JAVA_OBJECT me);

#endif
