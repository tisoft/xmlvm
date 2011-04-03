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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITextField, 96, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UITextField)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextField;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextField_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextField_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextField_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextField \
    JAVA_OBJECT delegate_;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITextField 96
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getAutocapitalizationType__ 65
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setAutocapitalizationType___int 66
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getAutocorrectionType__ 67
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setAutocorrectionType___int 68
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_isEnablesReturnKeyAutomatically__ 69
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setEnablesReturnKeyAutomatically___boolean 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getKeyboardAppearance__ 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setKeyboardAppearance___int 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getKeyboardType__ 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setKeyboardType___int 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getReturnKeyType__ 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setReturnKeyType___int 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_isSecureTextEntry__ 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setSecureTextEntry___boolean 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setText___java_lang_String 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getText__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setTextColor___org_xmlvm_iphone_UIColor 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getTextColor__ 82
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setBorderStyle___int 83
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getBorderStyle__ 84
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getFont__ 85
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setFont___org_xmlvm_iphone_UIFont 86
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_isAdjustsFontSizeToFitWidth__ 87
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setAdjustsFontSizeToFitWidth___boolean 88
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getTextAlignment__ 89
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setTextAlignment___int 90
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_xmlvmKeyTyped___char 91
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setPlaceholder___java_lang_String 92
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getPlaceholder__ 93
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_setDelegate___org_xmlvm_iphone_UITextFieldDelegate 94
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITextField_getDelegate__ 95

void __INIT_org_xmlvm_iphone_UITextField();
void __INIT_IMPL_org_xmlvm_iphone_UITextField();
void __DELETE_org_xmlvm_iphone_UITextField(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextField(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextField();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextField();
void org_xmlvm_iphone_UITextField___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UITextField___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 65
JAVA_INT org_xmlvm_iphone_UITextField_getAutocapitalizationType__(JAVA_OBJECT me);
// Vtable index: 66
void org_xmlvm_iphone_UITextField_setAutocapitalizationType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 67
JAVA_INT org_xmlvm_iphone_UITextField_getAutocorrectionType__(JAVA_OBJECT me);
// Vtable index: 68
void org_xmlvm_iphone_UITextField_setAutocorrectionType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 69
JAVA_BOOLEAN org_xmlvm_iphone_UITextField_isEnablesReturnKeyAutomatically__(JAVA_OBJECT me);
// Vtable index: 70
void org_xmlvm_iphone_UITextField_setEnablesReturnKeyAutomatically___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 71
JAVA_INT org_xmlvm_iphone_UITextField_getKeyboardAppearance__(JAVA_OBJECT me);
// Vtable index: 72
void org_xmlvm_iphone_UITextField_setKeyboardAppearance___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 73
JAVA_INT org_xmlvm_iphone_UITextField_getKeyboardType__(JAVA_OBJECT me);
// Vtable index: 74
void org_xmlvm_iphone_UITextField_setKeyboardType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 75
JAVA_INT org_xmlvm_iphone_UITextField_getReturnKeyType__(JAVA_OBJECT me);
// Vtable index: 76
void org_xmlvm_iphone_UITextField_setReturnKeyType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 77
JAVA_BOOLEAN org_xmlvm_iphone_UITextField_isSecureTextEntry__(JAVA_OBJECT me);
// Vtable index: 78
void org_xmlvm_iphone_UITextField_setSecureTextEntry___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 79
void org_xmlvm_iphone_UITextField_setText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 80
JAVA_OBJECT org_xmlvm_iphone_UITextField_getText__(JAVA_OBJECT me);
// Vtable index: 81
void org_xmlvm_iphone_UITextField_setTextColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 82
JAVA_OBJECT org_xmlvm_iphone_UITextField_getTextColor__(JAVA_OBJECT me);
// Vtable index: 83
void org_xmlvm_iphone_UITextField_setBorderStyle___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 84
JAVA_INT org_xmlvm_iphone_UITextField_getBorderStyle__(JAVA_OBJECT me);
// Vtable index: 85
JAVA_OBJECT org_xmlvm_iphone_UITextField_getFont__(JAVA_OBJECT me);
// Vtable index: 86
void org_xmlvm_iphone_UITextField_setFont___org_xmlvm_iphone_UIFont(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 87
JAVA_BOOLEAN org_xmlvm_iphone_UITextField_isAdjustsFontSizeToFitWidth__(JAVA_OBJECT me);
// Vtable index: 88
void org_xmlvm_iphone_UITextField_setAdjustsFontSizeToFitWidth___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 89
JAVA_INT org_xmlvm_iphone_UITextField_getTextAlignment__(JAVA_OBJECT me);
// Vtable index: 90
void org_xmlvm_iphone_UITextField_setTextAlignment___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 91
void org_xmlvm_iphone_UITextField_xmlvmKeyTyped___char(JAVA_OBJECT me, JAVA_CHAR n1);
// Vtable index: 92
void org_xmlvm_iphone_UITextField_setPlaceholder___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 93
JAVA_OBJECT org_xmlvm_iphone_UITextField_getPlaceholder__(JAVA_OBJECT me);
// Vtable index: 94
void org_xmlvm_iphone_UITextField_setDelegate___org_xmlvm_iphone_UITextFieldDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 95
JAVA_OBJECT org_xmlvm_iphone_UITextField_getDelegate__(JAVA_OBJECT me);

#endif
