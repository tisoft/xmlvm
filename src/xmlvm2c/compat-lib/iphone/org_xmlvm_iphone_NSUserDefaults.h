#ifndef __ORG_XMLVM_IPHONE_NSUSERDEFAULTS__
#define __ORG_XMLVM_IPHONE_NSUSERDEFAULTS__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
// Class declarations for org.xmlvm.iphone.NSUserDefaults
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSUserDefaults, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSUserDefaults)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUserDefaults;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUserDefaults_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUserDefaults_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUserDefaults_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSUserDefaults
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSUserDefaults \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSUserDefaults \
    } org_xmlvm_iphone_NSUserDefaults

struct org_xmlvm_iphone_NSUserDefaults {
    __TIB_DEFINITION_org_xmlvm_iphone_NSUserDefaults* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSUserDefaults;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSUserDefaults
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSUserDefaults
typedef struct org_xmlvm_iphone_NSUserDefaults org_xmlvm_iphone_NSUserDefaults;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSUserDefaults 7

void __INIT_org_xmlvm_iphone_NSUserDefaults();
void __INIT_IMPL_org_xmlvm_iphone_NSUserDefaults();
void __DELETE_org_xmlvm_iphone_NSUserDefaults(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSUserDefaults(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSUserDefaults();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSUserDefaults();
void org_xmlvm_iphone_NSUserDefaults___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_standardUserDefaults__();
JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_objectForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSUserDefaults_setObject___java_lang_Object_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_NSUserDefaults_setInteger___int_java_lang_String(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2);
JAVA_INT org_xmlvm_iphone_NSUserDefaults_integerForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSUserDefaults_synchronize__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSUserDefaults_setBool___boolean_java_lang_String(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_OBJECT n2);
JAVA_BOOLEAN org_xmlvm_iphone_NSUserDefaults_boolForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSUserDefaults_setFloat___float_java_lang_String(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_OBJECT n2);
JAVA_FLOAT org_xmlvm_iphone_NSUserDefaults_floatForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_dataForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_stringForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSUserDefaults_remove___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSUserDefaults___CLINIT_();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSUserDefaults \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSUserDefaults \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
