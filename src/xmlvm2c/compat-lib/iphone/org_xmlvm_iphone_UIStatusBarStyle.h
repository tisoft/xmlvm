#ifndef __ORG_XMLVM_IPHONE_UISTATUSBARSTYLE__
#define __ORG_XMLVM_IPHONE_UISTATUSBARSTYLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIStatusBarStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIStatusBarStyle, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIStatusBarStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIStatusBarStyle_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIStatusBarStyle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIStatusBarStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIStatusBarStyle \
    } org_xmlvm_iphone_UIStatusBarStyle

struct org_xmlvm_iphone_UIStatusBarStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UIStatusBarStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIStatusBarStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIStatusBarStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIStatusBarStyle
typedef struct org_xmlvm_iphone_UIStatusBarStyle org_xmlvm_iphone_UIStatusBarStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIStatusBarStyle 11

void __INIT_org_xmlvm_iphone_UIStatusBarStyle();
void __DELETE_org_xmlvm_iphone_UIStatusBarStyle(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIStatusBarStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIStatusBarStyle();
JAVA_INT org_xmlvm_iphone_UIStatusBarStyle_GET_Default();
void org_xmlvm_iphone_UIStatusBarStyle_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIStatusBarStyle_GET_BlackTranslucent();
void org_xmlvm_iphone_UIStatusBarStyle_PUT_BlackTranslucent(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIStatusBarStyle_GET_BlackOpaque();
void org_xmlvm_iphone_UIStatusBarStyle_PUT_BlackOpaque(JAVA_INT v);
void org_xmlvm_iphone_UIStatusBarStyle___INIT___(JAVA_OBJECT me);

#endif
