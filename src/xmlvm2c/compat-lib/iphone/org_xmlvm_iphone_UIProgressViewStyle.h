#ifndef __ORG_XMLVM_IPHONE_UIPROGRESSVIEWSTYLE__
#define __ORG_XMLVM_IPHONE_UIPROGRESSVIEWSTYLE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIProgressViewStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIProgressViewStyle, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIProgressViewStyle)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIProgressViewStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIProgressViewStyle_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIProgressViewStyle_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIProgressViewStyle_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIProgressViewStyle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIProgressViewStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIProgressViewStyle \
    } org_xmlvm_iphone_UIProgressViewStyle

struct org_xmlvm_iphone_UIProgressViewStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UIProgressViewStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIProgressViewStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIProgressViewStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIProgressViewStyle
typedef struct org_xmlvm_iphone_UIProgressViewStyle org_xmlvm_iphone_UIProgressViewStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIProgressViewStyle 6

void __INIT_org_xmlvm_iphone_UIProgressViewStyle();
void __INIT_IMPL_org_xmlvm_iphone_UIProgressViewStyle();
void __DELETE_org_xmlvm_iphone_UIProgressViewStyle(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIProgressViewStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIProgressViewStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIProgressViewStyle();
JAVA_INT org_xmlvm_iphone_UIProgressViewStyle_GET_Default();
void org_xmlvm_iphone_UIProgressViewStyle_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIProgressViewStyle_GET_Bar();
void org_xmlvm_iphone_UIProgressViewStyle_PUT_Bar(JAVA_INT v);

#endif
