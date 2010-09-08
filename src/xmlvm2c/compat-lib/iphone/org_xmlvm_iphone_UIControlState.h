#ifndef __ORG_XMLVM_IPHONE_UICONTROLSTATE__
#define __ORG_XMLVM_IPHONE_UICONTROLSTATE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIControlState
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIControlState, 11)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlState
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlState \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlState \
    } org_xmlvm_iphone_UIControlState

struct org_xmlvm_iphone_UIControlState {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIControlState* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlState;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControlState
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControlState
typedef struct org_xmlvm_iphone_UIControlState org_xmlvm_iphone_UIControlState;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIControlState 11

void __INIT_org_xmlvm_iphone_UIControlState();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControlState();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControlState();
JAVA_INT org_xmlvm_iphone_UIControlState_GET_Normal();
void org_xmlvm_iphone_UIControlState_PUT_Normal(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIControlState_GET_Highlighted();
void org_xmlvm_iphone_UIControlState_PUT_Highlighted(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIControlState_GET_Disabled();
void org_xmlvm_iphone_UIControlState_PUT_Disabled(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIControlState_GET_Selected();
void org_xmlvm_iphone_UIControlState_PUT_Selected(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIControlState_GET_ApplicationReserved();
void org_xmlvm_iphone_UIControlState_PUT_ApplicationReserved(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIControlState_GET_Reserved();
void org_xmlvm_iphone_UIControlState_PUT_Reserved(JAVA_INT v);
void org_xmlvm_iphone_UIControlState___INIT___(JAVA_OBJECT me);

#endif
