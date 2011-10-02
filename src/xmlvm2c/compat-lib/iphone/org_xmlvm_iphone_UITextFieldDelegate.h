#ifndef __ORG_XMLVM_IPHONE_UITEXTFIELDDELEGATE__
#define __ORG_XMLVM_IPHONE_UITEXTFIELDDELEGATE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSRange
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSRange
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSRange)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextField
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextField
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITextField)
#endif
// Class declarations for org.xmlvm.iphone.UITextFieldDelegate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITextFieldDelegate, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UITextFieldDelegate)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextFieldDelegate;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextFieldDelegate_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextFieldDelegate_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextFieldDelegate_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextFieldDelegate

#import <UIKit/UITextField.h>

#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextFieldDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextFieldDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITextFieldDelegate)
#endif

@interface UITextFieldDelegateWrapper : DelegateWrapper <UITextFieldDelegate> {
    org_xmlvm_iphone_UITextFieldDelegate* delegate;
}

- (id) initWithDelegate:(JAVA_OBJECT) delegate_;
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
- (void)textFieldDidBeginEditing:(UITextField *)textField;
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
- (void)textFieldDidEndEditing:(UITextField *)textField;
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
- (BOOL)textFieldShouldClear:(UITextField *)textField;
- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITextFieldDelegate \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextFieldDelegate \
    } org_xmlvm_iphone_UITextFieldDelegate

struct org_xmlvm_iphone_UITextFieldDelegate {
    __TIB_DEFINITION_org_xmlvm_iphone_UITextFieldDelegate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITextFieldDelegate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextFieldDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextFieldDelegate
typedef struct org_xmlvm_iphone_UITextFieldDelegate org_xmlvm_iphone_UITextFieldDelegate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITextFieldDelegate 7

void __INIT_org_xmlvm_iphone_UITextFieldDelegate();
void __INIT_IMPL_org_xmlvm_iphone_UITextFieldDelegate();
void __DELETE_org_xmlvm_iphone_UITextFieldDelegate(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextFieldDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextFieldDelegate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextFieldDelegate();
void org_xmlvm_iphone_UITextFieldDelegate___INIT___(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldBeginEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UITextFieldDelegate_textFieldDidBeginEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldEndEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UITextFieldDelegate_textFieldDidEndEditing___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldChangeCharactersInRange___org_xmlvm_iphone_UITextField_org_xmlvm_iphone_NSRange_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldClear___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UITextFieldDelegate_textFieldShouldReturn___org_xmlvm_iphone_UITextField(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
