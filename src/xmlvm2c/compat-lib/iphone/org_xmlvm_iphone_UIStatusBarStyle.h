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

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIStatusBarStyle
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIStatusBarStyle \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIStatusBarStyle \
    } org_xmlvm_iphone_UIStatusBarStyle

struct org_xmlvm_iphone_UIStatusBarStyle {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIStatusBarStyle* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIStatusBarStyle;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIStatusBarStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIStatusBarStyle
typedef struct org_xmlvm_iphone_UIStatusBarStyle org_xmlvm_iphone_UIStatusBarStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIStatusBarStyle 11

void __INIT_org_xmlvm_iphone_UIStatusBarStyle();
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
