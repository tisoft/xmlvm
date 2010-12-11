#ifndef __ORG_XMLVM_IPHONE_UISLIDER__
#define __ORG_XMLVM_IPHONE_UISLIDER__

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
// Class declarations for org.xmlvm.iphone.UISlider
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UISlider, 77)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UISlider
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UISlider \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UISlider \
    } org_xmlvm_iphone_UISlider

struct org_xmlvm_iphone_UISlider {
    __CLASS_DEFINITION_org_xmlvm_iphone_UISlider* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UISlider;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISlider
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISlider
typedef struct org_xmlvm_iphone_UISlider org_xmlvm_iphone_UISlider;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UISlider 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setValue___float 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getValue__ 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMinimumValue___float 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getMinimumValue__ 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMaximumValue___float 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getMaximumValue__ 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent 16

void __INIT_org_xmlvm_iphone_UISlider();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UISlider();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISlider();
void org_xmlvm_iphone_UISlider___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UISlider___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 71
void org_xmlvm_iphone_UISlider_setValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 72
JAVA_FLOAT org_xmlvm_iphone_UISlider_getValue__(JAVA_OBJECT me);
// Vtable index: 73
void org_xmlvm_iphone_UISlider_setMinimumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 74
JAVA_FLOAT org_xmlvm_iphone_UISlider_getMinimumValue__(JAVA_OBJECT me);
// Vtable index: 75
void org_xmlvm_iphone_UISlider_setMaximumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 76
JAVA_FLOAT org_xmlvm_iphone_UISlider_getMaximumValue__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
