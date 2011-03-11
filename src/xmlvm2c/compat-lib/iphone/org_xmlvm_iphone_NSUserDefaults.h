#ifndef __ORG_XMLVM_IPHONE_NSUSERDEFAULTS__
#define __ORG_XMLVM_IPHONE_NSUSERDEFAULTS__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSUserDefaults
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSUserDefaults, 26)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUserDefaults;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUserDefaults_ARRAYTYPE;

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSUserDefaults 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_objectForKey___java_lang_String 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_setObject___java_lang_Object_java_lang_String 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_setInteger___int_java_lang_String 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_integerForKey___java_lang_String 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_synchronize__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_setBool___boolean_java_lang_String 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_boolForKey___java_lang_String 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_setFloat___float_java_lang_String 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_floatForKey___java_lang_String 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_dataForKey___java_lang_String 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_stringForKey___java_lang_String 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSUserDefaults_remove___java_lang_String 25

void __INIT_org_xmlvm_iphone_NSUserDefaults();
void __INIT_IMPL_org_xmlvm_iphone_NSUserDefaults();
void __DELETE_org_xmlvm_iphone_NSUserDefaults(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSUserDefaults(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSUserDefaults();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSUserDefaults();
void org_xmlvm_iphone_NSUserDefaults___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_standardUserDefaults__();
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_objectForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
void org_xmlvm_iphone_NSUserDefaults_setObject___java_lang_Object_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 16
void org_xmlvm_iphone_NSUserDefaults_setInteger___int_java_lang_String(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2);
// Vtable index: 17
JAVA_INT org_xmlvm_iphone_NSUserDefaults_integerForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 18
void org_xmlvm_iphone_NSUserDefaults_synchronize__(JAVA_OBJECT me);
// Vtable index: 19
void org_xmlvm_iphone_NSUserDefaults_setBool___boolean_java_lang_String(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_OBJECT n2);
// Vtable index: 20
JAVA_BOOLEAN org_xmlvm_iphone_NSUserDefaults_boolForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 21
void org_xmlvm_iphone_NSUserDefaults_setFloat___float_java_lang_String(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_OBJECT n2);
// Vtable index: 22
JAVA_FLOAT org_xmlvm_iphone_NSUserDefaults_floatForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 23
JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_dataForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 24
JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_stringForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 25
void org_xmlvm_iphone_NSUserDefaults_remove___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSUserDefaults___CLINIT_();

#endif
