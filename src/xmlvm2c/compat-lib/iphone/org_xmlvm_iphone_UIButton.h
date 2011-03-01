#ifndef __ORG_XMLVM_IPHONE_UIBUTTON__
#define __ORG_XMLVM_IPHONE_UIBUTTON__

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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIFont
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIFont
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIFont)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Set
#define XMLVM_FORWARD_DECL_java_util_Set
XMLVM_FORWARD_DECL(java_util_Set)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UIButton
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIButton, 94)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButton;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButton_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIButton
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIButton \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIControl; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIButton \
    } org_xmlvm_iphone_UIButton

struct org_xmlvm_iphone_UIButton {
    __TIB_DEFINITION_org_xmlvm_iphone_UIButton* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIButton;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIButton
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIButton
typedef struct org_xmlvm_iphone_UIButton org_xmlvm_iphone_UIButton;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIButton 94
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_setFont___org_xmlvm_iphone_UIFont 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_getFont__ 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_getButtonType__ 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_setTitle___java_lang_String_int 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_titleForState___int 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_getCurrentTitle__ 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_setTitleColor___org_xmlvm_iphone_UIColor_int 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_titleColorForState___int 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_getCurrentTitleColor__ 82
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_setTitleShadowColor___org_xmlvm_iphone_UIColor_int 83
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_titleShadowColorForState___int 84
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_getCurrentTitleShadowColor__ 85
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_setImage___org_xmlvm_iphone_UIImage_int 86
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_imageForState___int 87
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_getCurrentImage__ 88
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_setBackgroundImage___org_xmlvm_iphone_UIImage_int 89
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_backgroundImageForState___int 90
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_getCurrentBackgroundImage__ 91
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_setTitleShadowOffset___org_xmlvm_iphone_CGSize 92
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_getTitleShadowOffset__ 93
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIButton_setAlpha___float 45

void __INIT_org_xmlvm_iphone_UIButton();
void __DELETE_org_xmlvm_iphone_UIButton(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIButton();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIButton();
JAVA_OBJECT org_xmlvm_iphone_UIButton_buttonWithType___int(JAVA_INT n1);
// Vtable index: 74
void org_xmlvm_iphone_UIButton_setFont___org_xmlvm_iphone_UIFont(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 75
JAVA_OBJECT org_xmlvm_iphone_UIButton_getFont__(JAVA_OBJECT me);
// Vtable index: 76
JAVA_INT org_xmlvm_iphone_UIButton_getButtonType__(JAVA_OBJECT me);
// Vtable index: 77
void org_xmlvm_iphone_UIButton_setTitle___java_lang_String_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 78
JAVA_OBJECT org_xmlvm_iphone_UIButton_titleForState___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 79
JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentTitle__(JAVA_OBJECT me);
// Vtable index: 80
void org_xmlvm_iphone_UIButton_setTitleColor___org_xmlvm_iphone_UIColor_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 81
JAVA_OBJECT org_xmlvm_iphone_UIButton_titleColorForState___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 82
JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentTitleColor__(JAVA_OBJECT me);
// Vtable index: 83
void org_xmlvm_iphone_UIButton_setTitleShadowColor___org_xmlvm_iphone_UIColor_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 84
JAVA_OBJECT org_xmlvm_iphone_UIButton_titleShadowColorForState___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 85
JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentTitleShadowColor__(JAVA_OBJECT me);
// Vtable index: 86
void org_xmlvm_iphone_UIButton_setImage___org_xmlvm_iphone_UIImage_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 87
JAVA_OBJECT org_xmlvm_iphone_UIButton_imageForState___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 88
JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentImage__(JAVA_OBJECT me);
// Vtable index: 89
void org_xmlvm_iphone_UIButton_setBackgroundImage___org_xmlvm_iphone_UIImage_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 90
JAVA_OBJECT org_xmlvm_iphone_UIButton_backgroundImageForState___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 91
JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentBackgroundImage__(JAVA_OBJECT me);
// Vtable index: 92
void org_xmlvm_iphone_UIButton_setTitleShadowOffset___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 93
JAVA_OBJECT org_xmlvm_iphone_UIButton_getTitleShadowOffset__(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_UIButton_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 16
void org_xmlvm_iphone_UIButton_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 45
void org_xmlvm_iphone_UIButton_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1);

#endif
