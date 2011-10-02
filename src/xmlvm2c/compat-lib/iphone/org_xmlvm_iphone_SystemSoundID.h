#ifndef __ORG_XMLVM_IPHONE_SYSTEMSOUNDID__
#define __ORG_XMLVM_IPHONE_SYSTEMSOUNDID__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.SystemSoundID
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SystemSoundID, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_SystemSoundID)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SystemSoundID;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SystemSoundID_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SystemSoundID_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SystemSoundID_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SystemSoundID
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SystemSoundID \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SystemSoundID \
    } org_xmlvm_iphone_SystemSoundID

struct org_xmlvm_iphone_SystemSoundID {
    __TIB_DEFINITION_org_xmlvm_iphone_SystemSoundID* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SystemSoundID;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SystemSoundID
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SystemSoundID
typedef struct org_xmlvm_iphone_SystemSoundID org_xmlvm_iphone_SystemSoundID;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SystemSoundID 6

void __INIT_org_xmlvm_iphone_SystemSoundID();
void __INIT_IMPL_org_xmlvm_iphone_SystemSoundID();
void __DELETE_org_xmlvm_iphone_SystemSoundID(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SystemSoundID(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_SystemSoundID();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SystemSoundID();
JAVA_INT org_xmlvm_iphone_SystemSoundID_GET_Vibrate();
void org_xmlvm_iphone_SystemSoundID_PUT_Vibrate(JAVA_INT v);

#endif
