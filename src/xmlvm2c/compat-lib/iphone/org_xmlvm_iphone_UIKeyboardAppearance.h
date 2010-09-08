#ifndef __ORG_XMLVM_IPHONE_UIKEYBOARDAPPEARANCE__
#define __ORG_XMLVM_IPHONE_UIKEYBOARDAPPEARANCE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIKeyboardAppearance
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIKeyboardAppearance, 11)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIKeyboardAppearance
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIKeyboardAppearance \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIKeyboardAppearance \
    } org_xmlvm_iphone_UIKeyboardAppearance

struct org_xmlvm_iphone_UIKeyboardAppearance {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIKeyboardAppearance* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIKeyboardAppearance;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIKeyboardAppearance
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIKeyboardAppearance
typedef struct org_xmlvm_iphone_UIKeyboardAppearance org_xmlvm_iphone_UIKeyboardAppearance;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIKeyboardAppearance 11

void __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIKeyboardAppearance();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardAppearance();
JAVA_INT org_xmlvm_iphone_UIKeyboardAppearance_GET_Default();
void org_xmlvm_iphone_UIKeyboardAppearance_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardAppearance_GET_Alert();
void org_xmlvm_iphone_UIKeyboardAppearance_PUT_Alert(JAVA_INT v);
void org_xmlvm_iphone_UIKeyboardAppearance___INIT___(JAVA_OBJECT me);

#endif
