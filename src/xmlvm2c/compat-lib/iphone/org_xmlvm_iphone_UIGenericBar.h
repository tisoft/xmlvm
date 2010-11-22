#ifndef __ORG_XMLVM_IPHONE_UIGENERICBAR__
#define __ORG_XMLVM_IPHONE_UIGENERICBAR__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIGenericBar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIGenericBar, 73)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericBar
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericBar \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericBar \
    } org_xmlvm_iphone_UIGenericBar

struct org_xmlvm_iphone_UIGenericBar {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIGenericBar* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIGenericBar;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGenericBar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGenericBar
typedef struct org_xmlvm_iphone_UIGenericBar org_xmlvm_iphone_UIGenericBar;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIGenericBar 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIGenericBar_updateViews__ 72

void __INIT_org_xmlvm_iphone_UIGenericBar();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIGenericBar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIGenericBar();
void org_xmlvm_iphone_UIGenericBar___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIGenericBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 72
void org_xmlvm_iphone_UIGenericBar_updateViews__(JAVA_OBJECT me);

#endif
