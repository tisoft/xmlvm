#ifndef __ORG_XMLVM_IPHONE_UIVIEWTINTADJUSTMENTMODE__
#define __ORG_XMLVM_IPHONE_UIVIEWTINTADJUSTMENTMODE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIViewTintAdjustmentMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIViewTintAdjustmentMode, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIViewTintAdjustmentMode)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewTintAdjustmentMode
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewTintAdjustmentMode \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewTintAdjustmentMode \
    } org_xmlvm_iphone_UIViewTintAdjustmentMode

struct org_xmlvm_iphone_UIViewTintAdjustmentMode {
    __TIB_DEFINITION_org_xmlvm_iphone_UIViewTintAdjustmentMode* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewTintAdjustmentMode;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewTintAdjustmentMode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewTintAdjustmentMode
typedef struct org_xmlvm_iphone_UIViewTintAdjustmentMode org_xmlvm_iphone_UIViewTintAdjustmentMode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIViewTintAdjustmentMode 6

void __INIT_org_xmlvm_iphone_UIViewTintAdjustmentMode();
void __INIT_IMPL_org_xmlvm_iphone_UIViewTintAdjustmentMode();
void __DELETE_org_xmlvm_iphone_UIViewTintAdjustmentMode(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewTintAdjustmentMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewTintAdjustmentMode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewTintAdjustmentMode();
JAVA_INT org_xmlvm_iphone_UIViewTintAdjustmentMode_GET_Automatic();
void org_xmlvm_iphone_UIViewTintAdjustmentMode_PUT_Automatic(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewTintAdjustmentMode_GET_Normal();
void org_xmlvm_iphone_UIViewTintAdjustmentMode_PUT_Normal(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewTintAdjustmentMode_GET_Dimmed();
void org_xmlvm_iphone_UIViewTintAdjustmentMode_PUT_Dimmed(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIViewTintAdjustmentMode \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIViewTintAdjustmentMode \


#endif
