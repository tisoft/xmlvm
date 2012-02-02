#ifndef __ORG_XMLVM_IPHONE_GKPEERPICKERCONNECTIONTYPE__
#define __ORG_XMLVM_IPHONE_GKPEERPICKERCONNECTIONTYPE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.GKPeerPickerConnectionType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_GKPeerPickerConnectionType, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_GKPeerPickerConnectionType)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerConnectionType;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerConnectionType_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerConnectionType_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerConnectionType_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerPickerConnectionType
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerPickerConnectionType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerPickerConnectionType \
    } org_xmlvm_iphone_GKPeerPickerConnectionType

struct org_xmlvm_iphone_GKPeerPickerConnectionType {
    __TIB_DEFINITION_org_xmlvm_iphone_GKPeerPickerConnectionType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerPickerConnectionType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKPeerPickerConnectionType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKPeerPickerConnectionType
typedef struct org_xmlvm_iphone_GKPeerPickerConnectionType org_xmlvm_iphone_GKPeerPickerConnectionType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_GKPeerPickerConnectionType 6

void __INIT_org_xmlvm_iphone_GKPeerPickerConnectionType();
void __INIT_IMPL_org_xmlvm_iphone_GKPeerPickerConnectionType();
void __DELETE_org_xmlvm_iphone_GKPeerPickerConnectionType(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerPickerConnectionType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_GKPeerPickerConnectionType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKPeerPickerConnectionType();
JAVA_INT org_xmlvm_iphone_GKPeerPickerConnectionType_GET_Online();
void org_xmlvm_iphone_GKPeerPickerConnectionType_PUT_Online(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_GKPeerPickerConnectionType_GET_Nearby();
void org_xmlvm_iphone_GKPeerPickerConnectionType_PUT_Nearby(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_GKPeerPickerConnectionType \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_GKPeerPickerConnectionType \


#endif
