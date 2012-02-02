#ifndef __ORG_XMLVM_IPHONE_UIKEYBOARDAPPEARANCE__
#define __ORG_XMLVM_IPHONE_UIKEYBOARDAPPEARANCE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIKeyboardAppearance
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIKeyboardAppearance, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIKeyboardAppearance)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardAppearance;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardAppearance_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardAppearance_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardAppearance_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIKeyboardAppearance
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIKeyboardAppearance \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIKeyboardAppearance \
    } org_xmlvm_iphone_UIKeyboardAppearance

struct org_xmlvm_iphone_UIKeyboardAppearance {
    __TIB_DEFINITION_org_xmlvm_iphone_UIKeyboardAppearance* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIKeyboardAppearance;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIKeyboardAppearance
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIKeyboardAppearance
typedef struct org_xmlvm_iphone_UIKeyboardAppearance org_xmlvm_iphone_UIKeyboardAppearance;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIKeyboardAppearance 6

void __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
void __INIT_IMPL_org_xmlvm_iphone_UIKeyboardAppearance();
void __DELETE_org_xmlvm_iphone_UIKeyboardAppearance(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIKeyboardAppearance(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIKeyboardAppearance();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardAppearance();
JAVA_INT org_xmlvm_iphone_UIKeyboardAppearance_GET_Default();
void org_xmlvm_iphone_UIKeyboardAppearance_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIKeyboardAppearance_GET_Alert();
void org_xmlvm_iphone_UIKeyboardAppearance_PUT_Alert(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIKeyboardAppearance \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIKeyboardAppearance \


#endif
