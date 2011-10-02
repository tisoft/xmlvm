#ifndef __ORG_XMLVM_IPHONE_GKSESSIONMODE__
#define __ORG_XMLVM_IPHONE_GKSESSIONMODE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.GKSessionMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_GKSessionMode, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_GKSessionMode)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSessionMode;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSessionMode_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSessionMode_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSessionMode_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKSessionMode
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_GKSessionMode \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKSessionMode \
    } org_xmlvm_iphone_GKSessionMode

struct org_xmlvm_iphone_GKSessionMode {
    __TIB_DEFINITION_org_xmlvm_iphone_GKSessionMode* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_GKSessionMode;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKSessionMode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKSessionMode
typedef struct org_xmlvm_iphone_GKSessionMode org_xmlvm_iphone_GKSessionMode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_GKSessionMode 6

void __INIT_org_xmlvm_iphone_GKSessionMode();
void __INIT_IMPL_org_xmlvm_iphone_GKSessionMode();
void __DELETE_org_xmlvm_iphone_GKSessionMode(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKSessionMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_GKSessionMode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKSessionMode();
JAVA_INT org_xmlvm_iphone_GKSessionMode_GET_Server();
void org_xmlvm_iphone_GKSessionMode_PUT_Server(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_GKSessionMode_GET_Client();
void org_xmlvm_iphone_GKSessionMode_PUT_Client(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_GKSessionMode_GET_Peer();
void org_xmlvm_iphone_GKSessionMode_PUT_Peer(JAVA_INT v);

#endif
