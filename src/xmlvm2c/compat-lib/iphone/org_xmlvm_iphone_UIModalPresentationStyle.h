#ifndef __ORG_XMLVM_IPHONE_UIMODALPRESENTATIONSTYLE__
#define __ORG_XMLVM_IPHONE_UIMODALPRESENTATIONSTYLE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIModalPresentationStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIModalPresentationStyle, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIModalPresentationStyle)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalPresentationStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIModalPresentationStyle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIModalPresentationStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIModalPresentationStyle \
    } org_xmlvm_iphone_UIModalPresentationStyle

struct org_xmlvm_iphone_UIModalPresentationStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UIModalPresentationStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIModalPresentationStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIModalPresentationStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIModalPresentationStyle
typedef struct org_xmlvm_iphone_UIModalPresentationStyle org_xmlvm_iphone_UIModalPresentationStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIModalPresentationStyle 6

void __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
void __INIT_IMPL_org_xmlvm_iphone_UIModalPresentationStyle();
void __DELETE_org_xmlvm_iphone_UIModalPresentationStyle(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIModalPresentationStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIModalPresentationStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIModalPresentationStyle();
JAVA_INT org_xmlvm_iphone_UIModalPresentationStyle_GET_FullScreen();
void org_xmlvm_iphone_UIModalPresentationStyle_PUT_FullScreen(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIModalPresentationStyle_GET_PageSheet();
void org_xmlvm_iphone_UIModalPresentationStyle_PUT_PageSheet(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIModalPresentationStyle_GET_FormSheet();
void org_xmlvm_iphone_UIModalPresentationStyle_PUT_FormSheet(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIModalPresentationStyle_GET_CurrentContext();
void org_xmlvm_iphone_UIModalPresentationStyle_PUT_CurrentContext(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIModalPresentationStyle \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIModalPresentationStyle \


#endif
