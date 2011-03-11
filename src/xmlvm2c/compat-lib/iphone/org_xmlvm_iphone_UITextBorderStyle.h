#ifndef __ORG_XMLVM_IPHONE_UITEXTBORDERSTYLE__
#define __ORG_XMLVM_IPHONE_UITEXTBORDERSTYLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UITextBorderStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITextBorderStyle, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextBorderStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextBorderStyle_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextBorderStyle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITextBorderStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextBorderStyle \
    } org_xmlvm_iphone_UITextBorderStyle

struct org_xmlvm_iphone_UITextBorderStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UITextBorderStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITextBorderStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextBorderStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextBorderStyle
typedef struct org_xmlvm_iphone_UITextBorderStyle org_xmlvm_iphone_UITextBorderStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITextBorderStyle 11

void __INIT_org_xmlvm_iphone_UITextBorderStyle();
void __INIT_IMPL_org_xmlvm_iphone_UITextBorderStyle();
void __DELETE_org_xmlvm_iphone_UITextBorderStyle(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextBorderStyle(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextBorderStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextBorderStyle();
JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_None();
void org_xmlvm_iphone_UITextBorderStyle_PUT_None(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_Line();
void org_xmlvm_iphone_UITextBorderStyle_PUT_Line(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_Bezel();
void org_xmlvm_iphone_UITextBorderStyle_PUT_Bezel(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITextBorderStyle_GET_RoundedRect();
void org_xmlvm_iphone_UITextBorderStyle_PUT_RoundedRect(JAVA_INT v);

#endif
