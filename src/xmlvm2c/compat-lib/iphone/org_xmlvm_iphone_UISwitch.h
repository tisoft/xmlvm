#ifndef __ORG_XMLVM_IPHONE_UISWITCH__
#define __ORG_XMLVM_IPHONE_UISWITCH__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIControl.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIEvent)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIControl)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Set
#define XMLVM_FORWARD_DECL_java_util_Set
XMLVM_FORWARD_DECL(java_util_Set)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
// Class declarations for org.xmlvm.iphone.UISwitch
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UISwitch, 81, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UISwitch)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UISwitch
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UISwitch \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIControl; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UISwitch \
    } org_xmlvm_iphone_UISwitch

struct org_xmlvm_iphone_UISwitch {
    __TIB_DEFINITION_org_xmlvm_iphone_UISwitch* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UISwitch;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISwitch
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISwitch
typedef struct org_xmlvm_iphone_UISwitch org_xmlvm_iphone_UISwitch;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UISwitch 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISwitch_setOn___boolean 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISwitch_isOn__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent 12

void __INIT_org_xmlvm_iphone_UISwitch();
void __INIT_IMPL_org_xmlvm_iphone_UISwitch();
void __DELETE_org_xmlvm_iphone_UISwitch(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISwitch(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UISwitch();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISwitch();
JAVA_FLOAT org_xmlvm_iphone_UISwitch_GET_kSwitchButtonWidth();
void org_xmlvm_iphone_UISwitch_PUT_kSwitchButtonWidth(JAVA_FLOAT v);
JAVA_FLOAT org_xmlvm_iphone_UISwitch_GET_kSwitchButtonHeight();
void org_xmlvm_iphone_UISwitch_PUT_kSwitchButtonHeight(JAVA_FLOAT v);
void org_xmlvm_iphone_UISwitch___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 79
void org_xmlvm_iphone_UISwitch_setOn___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 80
JAVA_BOOLEAN org_xmlvm_iphone_UISwitch_isOn__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 12
void org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
