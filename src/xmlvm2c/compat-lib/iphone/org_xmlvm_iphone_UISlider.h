#ifndef __ORG_XMLVM_IPHONE_UISLIDER__
#define __ORG_XMLVM_IPHONE_UISLIDER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIControl.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIImage)
#endif
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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UISlider, 98, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UISlider)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISlider;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISlider_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISlider_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISlider_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UISlider 98
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setValue___float 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setValue___float_boolean 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getValue__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMinimumValue___float 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getMinimumValue__ 82
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMaximumValue___float 83
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getMaximumValue__ 84
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getMaximumValueImage__ 85
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMaximumValueImage___org_xmlvm_iphone_UIImage 86
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getMinimumValueImage__ 87
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMinimumValueImage___org_xmlvm_iphone_UIImage 88
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getCurrentMinimumTrackImage__ 89
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_minimumTrackImageForState___int 90
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMinimumTrackImage___org_xmlvm_iphone_UIImage_int 91
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getCurrentMaximumTrackImage__ 92
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_maximumTrackImageForState___int 93
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setMaximumTrackImage___org_xmlvm_iphone_UIImage_int 94
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_getCurrentThumbImage__ 95
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_thumbImageForState___int 96
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_setThumbImage___org_xmlvm_iphone_UIImage_int 97
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent 11

void __INIT_org_xmlvm_iphone_UISlider();
void __INIT_IMPL_org_xmlvm_iphone_UISlider();
void __DELETE_org_xmlvm_iphone_UISlider(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISlider(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UISlider();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISlider();
void org_xmlvm_iphone_UISlider___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UISlider___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 78
void org_xmlvm_iphone_UISlider_setValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 79
void org_xmlvm_iphone_UISlider_setValue___float_boolean(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_BOOLEAN n2);
// Vtable index: 80
JAVA_FLOAT org_xmlvm_iphone_UISlider_getValue__(JAVA_OBJECT me);
// Vtable index: 81
void org_xmlvm_iphone_UISlider_setMinimumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 82
JAVA_FLOAT org_xmlvm_iphone_UISlider_getMinimumValue__(JAVA_OBJECT me);
// Vtable index: 83
void org_xmlvm_iphone_UISlider_setMaximumValue___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 84
JAVA_FLOAT org_xmlvm_iphone_UISlider_getMaximumValue__(JAVA_OBJECT me);
// Vtable index: 85
JAVA_OBJECT org_xmlvm_iphone_UISlider_getMaximumValueImage__(JAVA_OBJECT me);
// Vtable index: 86
void org_xmlvm_iphone_UISlider_setMaximumValueImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 87
JAVA_OBJECT org_xmlvm_iphone_UISlider_getMinimumValueImage__(JAVA_OBJECT me);
// Vtable index: 88
void org_xmlvm_iphone_UISlider_setMinimumValueImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 89
JAVA_OBJECT org_xmlvm_iphone_UISlider_getCurrentMinimumTrackImage__(JAVA_OBJECT me);
// Vtable index: 90
JAVA_OBJECT org_xmlvm_iphone_UISlider_minimumTrackImageForState___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 91
void org_xmlvm_iphone_UISlider_setMinimumTrackImage___org_xmlvm_iphone_UIImage_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 92
JAVA_OBJECT org_xmlvm_iphone_UISlider_getCurrentMaximumTrackImage__(JAVA_OBJECT me);
// Vtable index: 93
JAVA_OBJECT org_xmlvm_iphone_UISlider_maximumTrackImageForState___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 94
void org_xmlvm_iphone_UISlider_setMaximumTrackImage___org_xmlvm_iphone_UIImage_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 95
JAVA_OBJECT org_xmlvm_iphone_UISlider_getCurrentThumbImage__(JAVA_OBJECT me);
// Vtable index: 96
JAVA_OBJECT org_xmlvm_iphone_UISlider_thumbImageForState___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 97
void org_xmlvm_iphone_UISlider_setThumbImage___org_xmlvm_iphone_UIImage_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 11
void org_xmlvm_iphone_UISlider_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
