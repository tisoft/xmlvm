#ifndef __ORG_XMLVM_IPHONE_NSDATA__
#define __ORG_XMLVM_IPHONE_NSDATA__

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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSString
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSString
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSString)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURL)
#endif
// Class declarations for org.xmlvm.iphone.NSData
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSData, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSData)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSData_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
void org_xmlvm_iphone_NSData_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj);

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSData
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSData \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSData \
    } org_xmlvm_iphone_NSData

struct org_xmlvm_iphone_NSData {
    __TIB_DEFINITION_org_xmlvm_iphone_NSData* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSData;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
typedef struct org_xmlvm_iphone_NSData org_xmlvm_iphone_NSData;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSData 7

void __INIT_org_xmlvm_iphone_NSData();
void __INIT_IMPL_org_xmlvm_iphone_NSData();
void __DELETE_org_xmlvm_iphone_NSData(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSData(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSData();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSData();
JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithContentsOfFile___java_lang_String(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithContentsOfURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithBytes___byte_1ARRAY(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSData_dataWithBytesΝοCopy___byte_1ARRAY(JAVA_OBJECT n1);
void org_xmlvm_iphone_NSData___INIT____byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_NSData_writeToFile___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2);
JAVA_INT org_xmlvm_iphone_NSData_length__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSData_getBytes__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSData \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSData \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
