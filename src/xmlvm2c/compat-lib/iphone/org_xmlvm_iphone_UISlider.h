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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UISlider, 81)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISlider;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISlider_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UISlider
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UISlider \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIControl; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UISlider \
    } org_xmlvm_iphone_UISlider

struct org_xmlvm_iphone_UISlider {
    __TIB_DEFINITION_org_xmlvm_iphone_UISlider* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UISlider;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISlider
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISlider
typedef struct org_xmlvm_iphone_UISlider org_xmlvm_iphone_UISlider;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UISlider 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setValue___float 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setValue___float_boolean 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getValue__ 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMinimumValue___float 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getMinimumValue__ 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMaximumValue___float 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getMaximumValue__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent 16

void __INIT_org_xmlvm_iphone_UISlider();
void __DELETE_org_xmlvm_iphone_UISlider(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UISlider();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISlider();
void org_xmlvm_iphone_UISlider___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UISlider___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 74
void org_xmlvm_iphone_UISlider_setValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 75
void org_xmlvm_iphone_UISlider_setValue___float_boolean(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_BOOLEAN n2);
// Vtable index: 76
JAVA_FLOAT org_xmlvm_iphone_UISlider_getValue__(JAVA_OBJECT me);
// Vtable index: 77
void org_xmlvm_iphone_UISlider_setMinimumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 78
JAVA_FLOAT org_xmlvm_iphone_UISlider_getMinimumValue__(JAVA_OBJECT me);
// Vtable index: 79
void org_xmlvm_iphone_UISlider_setMaximumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 80
JAVA_FLOAT org_xmlvm_iphone_UISlider_getMaximumValue__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
