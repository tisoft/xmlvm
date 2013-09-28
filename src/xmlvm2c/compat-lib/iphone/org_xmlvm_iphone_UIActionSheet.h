#ifndef __ORG_XMLVM_IPHONE_UIACTIONSHEET__
#define __ORG_XMLVM_IPHONE_UIACTIONSHEET__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIActionSheetDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIActionSheetDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIActionSheetDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITabBar
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITabBar)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIToolbar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIToolbar
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIToolbar)
#endif
// Class declarations for org.xmlvm.iphone.UIActionSheet
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIActionSheet, 15, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIActionSheet)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActionSheet_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIActionSheet
//XMLVM_END_DECLARATIONS

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIActionSheet 15

void __INIT_org_xmlvm_iphone_UIActionSheet();
void __INIT_IMPL_org_xmlvm_iphone_UIActionSheet();
void __DELETE_org_xmlvm_iphone_UIActionSheet(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIActionSheet(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActionSheet();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIActionSheet();
JAVA_OBJECT org_xmlvm_iphone_UIActionSheet_init___java_lang_String_org_xmlvm_iphone_UIActionSheetDelegate_java_lang_String_java_lang_String_java_lang_String_1ARRAY(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4, JAVA_OBJECT n5);
void org_xmlvm_iphone_UIActionSheet_showFromTabBar___org_xmlvm_iphone_UITabBar(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIActionSheet_showFromToolbar___org_xmlvm_iphone_UIToolbar(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIActionSheet_showInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIActionSheet_dismissWithClickedButtonIndex___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIActionSheet \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIView \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIActionSheet \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIView \


#endif
