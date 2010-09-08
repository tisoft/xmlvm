#ifndef __ORG_XMLVM_IPHONE_UIRESPONDER__
#define __ORG_XMLVM_IPHONE_UIRESPONDER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIEvent)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIResponder)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Set
#define XMLVM_FORWARD_DECL_java_util_Set
XMLVM_FORWARD_DECL(java_util_Set)
#endif
// Class declarations for org.xmlvm.iphone.UIResponder
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIResponder, 20)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_BOOLEAN callDelegates_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder \
    } org_xmlvm_iphone_UIResponder

struct org_xmlvm_iphone_UIResponder {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIResponder* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
typedef struct org_xmlvm_iphone_UIResponder org_xmlvm_iphone_UIResponder;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIResponder 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_getNextResponder__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_resignFirstResponder__ 19

void __INIT_org_xmlvm_iphone_UIResponder();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIResponder();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIResponder();
void org_xmlvm_iphone_UIResponder___INIT___(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 15
void org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 16
void org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 17
void org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_UIResponder_getNextResponder__(JAVA_OBJECT me);
// Vtable index: 19
JAVA_BOOLEAN org_xmlvm_iphone_UIResponder_resignFirstResponder__(JAVA_OBJECT me);

#endif
