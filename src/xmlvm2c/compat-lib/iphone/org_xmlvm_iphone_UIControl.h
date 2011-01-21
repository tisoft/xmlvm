#ifndef __ORG_XMLVM_IPHONE_UICONTROL__
#define __ORG_XMLVM_IPHONE_UICONTROL__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIEvent)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Set
#define XMLVM_FORWARD_DECL_java_util_Set
XMLVM_FORWARD_DECL(java_util_Set)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Map
#define XMLVM_FORWARD_DECL_java_util_Map
XMLVM_FORWARD_DECL(java_util_Map)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControlDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControlDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIControlDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIControl
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIControl, 72)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIControl \
    JAVA_OBJECT delegateWrapper;

void org_xmlvm_iphone_UIControl_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj);
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIControl \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        JAVA_OBJECT delegates_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIControl \
    } org_xmlvm_iphone_UIControl

struct org_xmlvm_iphone_UIControl {
    __TIB_DEFINITION_org_xmlvm_iphone_UIControl* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIControl;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
typedef struct org_xmlvm_iphone_UIControl org_xmlvm_iphone_UIControl;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIControl 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIControl_getAllTargets__ 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent 16

void __INIT_org_xmlvm_iphone_UIControl();
void __DELETE_org_xmlvm_iphone_UIControl(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControl();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControl();
void org_xmlvm_iphone_UIControl___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIControl___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 70
void org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 71
JAVA_OBJECT org_xmlvm_iphone_UIControl_getAllTargets__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
