#ifndef __ORG_XMLVM_IPHONE_UIACTIONSHEET__
#define __ORG_XMLVM_IPHONE_UIACTIONSHEET__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIActionSheet
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIActionSheet
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIActionSheet)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIActionSheet
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIActionSheet, 74)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIActionSheet
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIActionSheet \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIActionSheet \
    } org_xmlvm_iphone_UIActionSheet

struct org_xmlvm_iphone_UIActionSheet {
    __TIB_DEFINITION_org_xmlvm_iphone_UIActionSheet* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIActionSheet;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIActionSheet
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIActionSheet
typedef struct org_xmlvm_iphone_UIActionSheet org_xmlvm_iphone_UIActionSheet;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIActionSheet 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean 73

void __INIT_org_xmlvm_iphone_UIActionSheet();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActionSheet();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIActionSheet();
JAVA_OBJECT org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_ARRAYTYPE(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_OBJECT n5);
// Vtable index: 70
void org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 71
void org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 72
void org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 73
void org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2);

#endif
