#ifndef __ORG_XMLVM_IPHONE_UIBARBUTTONITEMSTYLE__
#define __ORG_XMLVM_IPHONE_UIBARBUTTONITEMSTYLE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIBarButtonItemStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIBarButtonItemStyle, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIBarButtonItemStyle)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIBarButtonItemStyle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIBarButtonItemStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIBarButtonItemStyle \
    } org_xmlvm_iphone_UIBarButtonItemStyle

struct org_xmlvm_iphone_UIBarButtonItemStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIBarButtonItemStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIBarButtonItemStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIBarButtonItemStyle
typedef struct org_xmlvm_iphone_UIBarButtonItemStyle org_xmlvm_iphone_UIBarButtonItemStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIBarButtonItemStyle 6

void __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
void __INIT_IMPL_org_xmlvm_iphone_UIBarButtonItemStyle();
void __DELETE_org_xmlvm_iphone_UIBarButtonItemStyle(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarButtonItemStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarButtonItemStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItemStyle();
JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Plain();
void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Plain(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Bordered();
void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Bordered(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Done();
void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Done(JAVA_INT v);

#endif
