#ifndef __ORG_XMLVM_IPHONE_UIREMOTENOTIFICATIONTYPE__
#define __ORG_XMLVM_IPHONE_UIREMOTENOTIFICATIONTYPE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIRemoteNotificationType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIRemoteNotificationType, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIRemoteNotificationType)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIRemoteNotificationType;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIRemoteNotificationType
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIRemoteNotificationType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIRemoteNotificationType \
    } org_xmlvm_iphone_UIRemoteNotificationType

struct org_xmlvm_iphone_UIRemoteNotificationType {
    __TIB_DEFINITION_org_xmlvm_iphone_UIRemoteNotificationType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIRemoteNotificationType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIRemoteNotificationType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIRemoteNotificationType
typedef struct org_xmlvm_iphone_UIRemoteNotificationType org_xmlvm_iphone_UIRemoteNotificationType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIRemoteNotificationType 6

void __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
void __INIT_IMPL_org_xmlvm_iphone_UIRemoteNotificationType();
void __DELETE_org_xmlvm_iphone_UIRemoteNotificationType(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIRemoteNotificationType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIRemoteNotificationType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIRemoteNotificationType();
JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_None();
void org_xmlvm_iphone_UIRemoteNotificationType_PUT_None(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_Badge();
void org_xmlvm_iphone_UIRemoteNotificationType_PUT_Badge(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_Sound();
void org_xmlvm_iphone_UIRemoteNotificationType_PUT_Sound(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_Alert();
void org_xmlvm_iphone_UIRemoteNotificationType_PUT_Alert(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_NewsstandContentAvailability();
void org_xmlvm_iphone_UIRemoteNotificationType_PUT_NewsstandContentAvailability(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIRemoteNotificationType \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIRemoteNotificationType \


#endif
