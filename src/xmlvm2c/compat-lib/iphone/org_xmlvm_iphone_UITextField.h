#ifndef __ORG_XMLVM_IPHONE_UITEXTFIELD__
#define __ORG_XMLVM_IPHONE_UITEXTFIELD__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextFieldDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextFieldDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITextFieldDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIFont
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIFont
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIFont)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UITextField
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITextField, 100)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextField;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextField_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextField
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITextField \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextField \
    } org_xmlvm_iphone_UITextField

struct org_xmlvm_iphone_UITextField {
    __TIB_DEFINITION_org_xmlvm_iphone_UITextField* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITextField;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextField
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextField
typedef struct org_xmlvm_iphone_UITextField org_xmlvm_iphone_UITextField;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITextField 100
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getAutocapitalizationType__ 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setAutocapitalizationType___int 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getAutocorrectionType__ 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setAutocorrectionType___int 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_isEnablesReturnKeyAutomatically__ 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setEnablesReturnKeyAutomatically___boolean 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getKeyboardAppearance__ 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setKeyboardAppearance___int 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getKeyboardType__ 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setKeyboardType___int 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getReturnKeyType__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setReturnKeyType___int 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_isSecureTextEntry__ 82
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setSecureTextEntry___boolean 83
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setText___java_lang_String 84
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getText__ 85
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setTextColor___org_xmlvm_iphone_UIColor 86
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getTextColor__ 87
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setBorderStyle___int 88
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getBorderStyle__ 89
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getFont__ 90
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setFont___org_xmlvm_iphone_UIFont 91
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_isAdjustsFontSizeToFitWidth__ 92
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setAdjustsFontSizeToFitWidth___boolean 93
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getTextAlignment__ 94
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setTextAlignment___int 95
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_xmlvmKeyTyped___char 96
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setPlaceholder___java_lang_String 97
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setDelegate___org_xmlvm_iphone_UITextFieldDelegate 98
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getDelegate__ 99

void __INIT_org_xmlvm_iphone_UITextField();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextField();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextField();
void org_xmlvm_iphone_UITextField___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UITextField___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 70
JAVA_INT org_xmlvm_iphone_UITextField_getAutocapitalizationType__(JAVA_OBJECT me);
// Vtable index: 71
void org_xmlvm_iphone_UITextField_setAutocapitalizationType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 72
JAVA_INT org_xmlvm_iphone_UITextField_getAutocorrectionType__(JAVA_OBJECT me);
// Vtable index: 73
void org_xmlvm_iphone_UITextField_setAutocorrectionType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 74
JAVA_BOOLEAN org_xmlvm_iphone_UITextField_isEnablesReturnKeyAutomatically__(JAVA_OBJECT me);
// Vtable index: 75
void org_xmlvm_iphone_UITextField_setEnablesReturnKeyAutomatically___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 76
JAVA_INT org_xmlvm_iphone_UITextField_getKeyboardAppearance__(JAVA_OBJECT me);
// Vtable index: 77
void org_xmlvm_iphone_UITextField_setKeyboardAppearance___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 78
JAVA_INT org_xmlvm_iphone_UITextField_getKeyboardType__(JAVA_OBJECT me);
// Vtable index: 79
void org_xmlvm_iphone_UITextField_setKeyboardType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 80
JAVA_INT org_xmlvm_iphone_UITextField_getReturnKeyType__(JAVA_OBJECT me);
// Vtable index: 81
void org_xmlvm_iphone_UITextField_setReturnKeyType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 82
JAVA_BOOLEAN org_xmlvm_iphone_UITextField_isSecureTextEntry__(JAVA_OBJECT me);
// Vtable index: 83
void org_xmlvm_iphone_UITextField_setSecureTextEntry___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 84
void org_xmlvm_iphone_UITextField_setText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 85
JAVA_OBJECT org_xmlvm_iphone_UITextField_getText__(JAVA_OBJECT me);
// Vtable index: 86
void org_xmlvm_iphone_UITextField_setTextColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 87
JAVA_OBJECT org_xmlvm_iphone_UITextField_getTextColor__(JAVA_OBJECT me);
// Vtable index: 88
void org_xmlvm_iphone_UITextField_setBorderStyle___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 89
JAVA_INT org_xmlvm_iphone_UITextField_getBorderStyle__(JAVA_OBJECT me);
// Vtable index: 90
JAVA_OBJECT org_xmlvm_iphone_UITextField_getFont__(JAVA_OBJECT me);
// Vtable index: 91
void org_xmlvm_iphone_UITextField_setFont___org_xmlvm_iphone_UIFont(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 92
JAVA_BOOLEAN org_xmlvm_iphone_UITextField_isAdjustsFontSizeToFitWidth__(JAVA_OBJECT me);
// Vtable index: 93
void org_xmlvm_iphone_UITextField_setAdjustsFontSizeToFitWidth___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 94
JAVA_INT org_xmlvm_iphone_UITextField_getTextAlignment__(JAVA_OBJECT me);
// Vtable index: 95
void org_xmlvm_iphone_UITextField_setTextAlignment___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 96
void org_xmlvm_iphone_UITextField_xmlvmKeyTyped___char(JAVA_OBJECT me, JAVA_CHAR n1);
// Vtable index: 97
void org_xmlvm_iphone_UITextField_setPlaceholder___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 98
void org_xmlvm_iphone_UITextField_setDelegate___org_xmlvm_iphone_UITextFieldDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 99
JAVA_OBJECT org_xmlvm_iphone_UITextField_getDelegate__(JAVA_OBJECT me);

#endif
