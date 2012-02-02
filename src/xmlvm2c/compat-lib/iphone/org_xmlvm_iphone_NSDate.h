#ifndef __ORG_XMLVM_IPHONE_NSDATE__
#define __ORG_XMLVM_IPHONE_NSDATE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSDate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSDate, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSDate)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDate;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDate_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDate_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDate_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSDate
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSDate \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSDate \
    } org_xmlvm_iphone_NSDate

struct org_xmlvm_iphone_NSDate {
    __TIB_DEFINITION_org_xmlvm_iphone_NSDate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSDate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
typedef struct org_xmlvm_iphone_NSDate org_xmlvm_iphone_NSDate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSDate 7

void __INIT_org_xmlvm_iphone_NSDate();
void __INIT_IMPL_org_xmlvm_iphone_NSDate();
void __DELETE_org_xmlvm_iphone_NSDate(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDate();
JAVA_OBJECT org_xmlvm_iphone_NSDate_date__();
JAVA_OBJECT org_xmlvm_iphone_NSDate_dateWithTimeIntervalSince1970___double(JAVA_DOUBLE n1);
JAVA_OBJECT org_xmlvm_iphone_NSDate_dateWithTimeIntervalSinceReferenceDate___double(JAVA_DOUBLE n1);
JAVA_DOUBLE org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSDate \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSDate \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
