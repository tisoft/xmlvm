#ifndef __ORG_XMLVM_IPHONE_UIVIEWAUTORESIZING__
#define __ORG_XMLVM_IPHONE_UIVIEWAUTORESIZING__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIViewAutoresizing
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIViewAutoresizing, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIViewAutoresizing)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAutoresizing;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAutoresizing_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAutoresizing_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAutoresizing_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAutoresizing
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAutoresizing \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAutoresizing \
    } org_xmlvm_iphone_UIViewAutoresizing

struct org_xmlvm_iphone_UIViewAutoresizing {
    __TIB_DEFINITION_org_xmlvm_iphone_UIViewAutoresizing* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAutoresizing;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAutoresizing
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAutoresizing
typedef struct org_xmlvm_iphone_UIViewAutoresizing org_xmlvm_iphone_UIViewAutoresizing;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIViewAutoresizing 6

void __INIT_org_xmlvm_iphone_UIViewAutoresizing();
void __INIT_IMPL_org_xmlvm_iphone_UIViewAutoresizing();
void __DELETE_org_xmlvm_iphone_UIViewAutoresizing(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAutoresizing(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAutoresizing();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAutoresizing();
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_None();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_None(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleLeftMargin();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleLeftMargin(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleWidth();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleWidth(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleRightMargin();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleRightMargin(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleTopMargin();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleTopMargin(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleHeight();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleHeight(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleBottomMargin();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleBottomMargin(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIViewAutoresizing \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIViewAutoresizing \


#endif
