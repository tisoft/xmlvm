#ifndef __ORG_XMLVM_IPHONE_NSNUMBERFORMATTER__
#define __ORG_XMLVM_IPHONE_NSNUMBERFORMATTER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSNumberFormatter
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNumberFormatter, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSNumberFormatter)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatter;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatter_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatter_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatter_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNumberFormatter
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSNumberFormatter \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSNumberFormatter \
    } org_xmlvm_iphone_NSNumberFormatter

struct org_xmlvm_iphone_NSNumberFormatter {
    __TIB_DEFINITION_org_xmlvm_iphone_NSNumberFormatter* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSNumberFormatter;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNumberFormatter
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNumberFormatter
typedef struct org_xmlvm_iphone_NSNumberFormatter org_xmlvm_iphone_NSNumberFormatter;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSNumberFormatter 7

void __INIT_org_xmlvm_iphone_NSNumberFormatter();
void __INIT_IMPL_org_xmlvm_iphone_NSNumberFormatter();
void __DELETE_org_xmlvm_iphone_NSNumberFormatter(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNumberFormatter(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNumberFormatter();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNumberFormatter();
void org_xmlvm_iphone_NSNumberFormatter___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT org_xmlvm_iphone_NSNumberFormatter_numberStyle__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int(JAVA_OBJECT me, JAVA_INT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSNumberFormatter \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSNumberFormatter \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
