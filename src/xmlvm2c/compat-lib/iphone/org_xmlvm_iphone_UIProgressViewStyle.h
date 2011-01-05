#ifndef __ORG_XMLVM_IPHONE_UIPROGRESSVIEWSTYLE__
#define __ORG_XMLVM_IPHONE_UIPROGRESSVIEWSTYLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIProgressViewStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIProgressViewStyle, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIProgressViewStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIProgressViewStyle_ARRAYTYPE;

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIProgressViewStyle 11

void __INIT_org_xmlvm_iphone_UIProgressViewStyle();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIProgressViewStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIProgressViewStyle();
JAVA_INT org_xmlvm_iphone_UIProgressViewStyle_GET_Default();
void org_xmlvm_iphone_UIProgressViewStyle_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIProgressViewStyle_GET_Bar();
void org_xmlvm_iphone_UIProgressViewStyle_PUT_Bar(JAVA_INT v);
void org_xmlvm_iphone_UIProgressViewStyle___INIT___(JAVA_OBJECT me);

#endif
