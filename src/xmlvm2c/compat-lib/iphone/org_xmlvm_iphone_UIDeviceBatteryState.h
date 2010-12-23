#ifndef __ORG_XMLVM_IPHONE_UIDEVICEBATTERYSTATE__
#define __ORG_XMLVM_IPHONE_UIDEVICEBATTERYSTATE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIDeviceBatteryState
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIDeviceBatteryState, 11)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDeviceBatteryState
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIDeviceBatteryState \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIDeviceBatteryState \
    } org_xmlvm_iphone_UIDeviceBatteryState

struct org_xmlvm_iphone_UIDeviceBatteryState {
    __TIB_DEFINITION_org_xmlvm_iphone_UIDeviceBatteryState* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIDeviceBatteryState;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDeviceBatteryState
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIDeviceBatteryState
typedef struct org_xmlvm_iphone_UIDeviceBatteryState org_xmlvm_iphone_UIDeviceBatteryState;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIDeviceBatteryState 11

void __INIT_org_xmlvm_iphone_UIDeviceBatteryState();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDeviceBatteryState();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDeviceBatteryState();
JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Unknown();
void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Unknown(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Unplugged();
void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Unplugged(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Charging();
void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Charging(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIDeviceBatteryState_GET_Full();
void org_xmlvm_iphone_UIDeviceBatteryState_PUT_Full(JAVA_INT v);
void org_xmlvm_iphone_UIDeviceBatteryState___INIT___(JAVA_OBJECT me);

#endif
