#ifndef __ORG_XMLVM_IPHONE_GKPEERPICKERCONTROLLER__
#define __ORG_XMLVM_IPHONE_GKPEERPICKERCONTROLLER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKPeerPickerControllerDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKPeerPickerControllerDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_GKPeerPickerControllerDelegate)
#endif
// Class declarations for org.xmlvm.iphone.GKPeerPickerController
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_GKPeerPickerController, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_GKPeerPickerController)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerController;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerController_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerController_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKPeerPickerController_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerPickerController
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerPickerController \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerPickerController \
    } org_xmlvm_iphone_GKPeerPickerController

struct org_xmlvm_iphone_GKPeerPickerController {
    __TIB_DEFINITION_org_xmlvm_iphone_GKPeerPickerController* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_GKPeerPickerController;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKPeerPickerController
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_GKPeerPickerController
typedef struct org_xmlvm_iphone_GKPeerPickerController org_xmlvm_iphone_GKPeerPickerController;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_GKPeerPickerController 7

void __INIT_org_xmlvm_iphone_GKPeerPickerController();
void __INIT_IMPL_org_xmlvm_iphone_GKPeerPickerController();
void __DELETE_org_xmlvm_iphone_GKPeerPickerController(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKPeerPickerController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_GKPeerPickerController();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKPeerPickerController();
void org_xmlvm_iphone_GKPeerPickerController___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_GKPeerPickerController_getDelegate__(JAVA_OBJECT me);
void org_xmlvm_iphone_GKPeerPickerController_setDelegate___org_xmlvm_iphone_GKPeerPickerControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_GKPeerPickerController_isVisible__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_GKPeerPickerController_getConnectionTypesMask__(JAVA_OBJECT me);
void org_xmlvm_iphone_GKPeerPickerController_setConnectionTypesMask___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_GKPeerPickerController_show__(JAVA_OBJECT me);
void org_xmlvm_iphone_GKPeerPickerController_dismiss__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_GKPeerPickerController \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_GKPeerPickerController \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
