#ifndef __ORG_XMLVM_IPHONE_UIVIEWANIMATIONDELEGATE__
#define __ORG_XMLVM_IPHONE_UIVIEWANIMATIONDELEGATE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.UIViewAnimationDelegate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIViewAnimationDelegate, 16)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAnimationDelegate
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAnimationDelegate \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAnimationDelegate \
    } org_xmlvm_iphone_UIViewAnimationDelegate

struct org_xmlvm_iphone_UIViewAnimationDelegate {
    __TIB_DEFINITION_org_xmlvm_iphone_UIViewAnimationDelegate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAnimationDelegate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAnimationDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAnimationDelegate
typedef struct org_xmlvm_iphone_UIViewAnimationDelegate org_xmlvm_iphone_UIViewAnimationDelegate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIViewAnimationDelegate 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewAnimationDelegate_animationWillStart___java_lang_String 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIViewAnimationDelegate_animationDidStop___java_lang_String_boolean 15

void __INIT_org_xmlvm_iphone_UIViewAnimationDelegate();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationDelegate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationDelegate();
void org_xmlvm_iphone_UIViewAnimationDelegate___INIT___(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_UIViewAnimationDelegate_animationWillStart___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
void org_xmlvm_iphone_UIViewAnimationDelegate_animationDidStop___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2);

#endif
