#ifndef __ORG_XMLVM_IPHONE_NSJSONREADINGOPTIONS__
#define __ORG_XMLVM_IPHONE_NSJSONREADINGOPTIONS__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSJSONReadingOptions
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSJSONReadingOptions, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSJSONReadingOptions)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONReadingOptions;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSJSONReadingOptions
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSJSONReadingOptions \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSJSONReadingOptions \
    } org_xmlvm_iphone_NSJSONReadingOptions

struct org_xmlvm_iphone_NSJSONReadingOptions {
    __TIB_DEFINITION_org_xmlvm_iphone_NSJSONReadingOptions* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSJSONReadingOptions;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSJSONReadingOptions
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSJSONReadingOptions
typedef struct org_xmlvm_iphone_NSJSONReadingOptions org_xmlvm_iphone_NSJSONReadingOptions;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSJSONReadingOptions 6

void __INIT_org_xmlvm_iphone_NSJSONReadingOptions();
void __INIT_IMPL_org_xmlvm_iphone_NSJSONReadingOptions();
void __DELETE_org_xmlvm_iphone_NSJSONReadingOptions(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSJSONReadingOptions(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSJSONReadingOptions();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSJSONReadingOptions();
JAVA_INT org_xmlvm_iphone_NSJSONReadingOptions_GET_MutableContainers();
void org_xmlvm_iphone_NSJSONReadingOptions_PUT_MutableContainers(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSJSONReadingOptions_GET_MutableLeaves();
void org_xmlvm_iphone_NSJSONReadingOptions_PUT_MutableLeaves(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSJSONReadingOptions_GET_AllowFragments();
void org_xmlvm_iphone_NSJSONReadingOptions_PUT_AllowFragments(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSJSONReadingOptions \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSJSONReadingOptions \


#endif
