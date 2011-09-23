#ifndef __ORG_XMLVM_IPHONE_GKSENDDATAMODE__
#define __ORG_XMLVM_IPHONE_GKSENDDATAMODE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.GKSendDataMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_GKSendDataMode, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_GKSendDataMode)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSendDataMode;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSendDataMode_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSendDataMode_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSendDataMode_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKSendDataMode
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_GKSendDataMode \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKSendDataMode \
    } org_xmlvm_iphone_GKSendDataMode

struct org_xmlvm_iphone_GKSendDataMode {
    __TIB_DEFINITION_org_xmlvm_iphone_GKSendDataMode* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_GKSendDataMode;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKSendDataMode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKSendDataMode
typedef struct org_xmlvm_iphone_GKSendDataMode org_xmlvm_iphone_GKSendDataMode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_GKSendDataMode 6

void __INIT_org_xmlvm_iphone_GKSendDataMode();
void __INIT_IMPL_org_xmlvm_iphone_GKSendDataMode();
void __DELETE_org_xmlvm_iphone_GKSendDataMode(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKSendDataMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_GKSendDataMode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKSendDataMode();
JAVA_INT org_xmlvm_iphone_GKSendDataMode_GET_Reliable();
void org_xmlvm_iphone_GKSendDataMode_PUT_Reliable(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_GKSendDataMode_GET_Unreliable();
void org_xmlvm_iphone_GKSendDataMode_PUT_Unreliable(JAVA_INT v);

#endif
