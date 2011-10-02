#ifndef __ORG_XMLVM_IPHONE_GKPEERCONNECTIONSTATE__
#define __ORG_XMLVM_IPHONE_GKPEERCONNECTIONSTATE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.GKPeerConnectionState
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_GKPeerConnectionState, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_GKPeerConnectionState)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerConnectionState;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerConnectionState_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerConnectionState_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerConnectionState_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerConnectionState
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerConnectionState \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerConnectionState \
    } org_xmlvm_iphone_GKPeerConnectionState

struct org_xmlvm_iphone_GKPeerConnectionState {
    __TIB_DEFINITION_org_xmlvm_iphone_GKPeerConnectionState* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerConnectionState;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKPeerConnectionState
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKPeerConnectionState
typedef struct org_xmlvm_iphone_GKPeerConnectionState org_xmlvm_iphone_GKPeerConnectionState;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_GKPeerConnectionState 6

void __INIT_org_xmlvm_iphone_GKPeerConnectionState();
void __INIT_IMPL_org_xmlvm_iphone_GKPeerConnectionState();
void __DELETE_org_xmlvm_iphone_GKPeerConnectionState(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerConnectionState(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_GKPeerConnectionState();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKPeerConnectionState();
JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Available();
void org_xmlvm_iphone_GKPeerConnectionState_PUT_Available(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Unavailable();
void org_xmlvm_iphone_GKPeerConnectionState_PUT_Unavailable(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Connected();
void org_xmlvm_iphone_GKPeerConnectionState_PUT_Connected(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Disconnected();
void org_xmlvm_iphone_GKPeerConnectionState_PUT_Disconnected(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_GKPeerConnectionState_GET_Connecting();
void org_xmlvm_iphone_GKPeerConnectionState_PUT_Connecting(JAVA_INT v);

#endif
