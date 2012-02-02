#ifndef __ORG_XMLVM_IPHONE_UISCREEN__
#define __ORG_XMLVM_IPHONE_UISCREEN__

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
#ifndef XMLVM_FORWARD_DECL_java_util_List
#define XMLVM_FORWARD_DECL_java_util_List
XMLVM_FORWARD_DECL(java_util_List)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
// Class declarations for org.xmlvm.iphone.UIScreen
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIScreen, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIScreen)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIScreen
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIScreen \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIScreen \
    } org_xmlvm_iphone_UIScreen

struct org_xmlvm_iphone_UIScreen {
    __TIB_DEFINITION_org_xmlvm_iphone_UIScreen* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIScreen;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIScreen
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIScreen
typedef struct org_xmlvm_iphone_UIScreen org_xmlvm_iphone_UIScreen;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIScreen 7

void __INIT_org_xmlvm_iphone_UIScreen();
void __INIT_IMPL_org_xmlvm_iphone_UIScreen();
void __DELETE_org_xmlvm_iphone_UIScreen(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScreen(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIScreen();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIScreen();
JAVA_OBJECT org_xmlvm_iphone_UIScreen_GET_UIScreenDidConnectNotification();
void org_xmlvm_iphone_UIScreen_PUT_UIScreenDidConnectNotification(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UIScreen_GET_UIScreenDidDisconnectNotification();
void org_xmlvm_iphone_UIScreen_PUT_UIScreenDidDisconnectNotification(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UIScreen_GET_UIScreenModeDidChangeNotification();
void org_xmlvm_iphone_UIScreen_PUT_UIScreenModeDidChangeNotification(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_UIScreen_mainScreen__();
JAVA_OBJECT org_xmlvm_iphone_UIScreen_screens__();
JAVA_OBJECT org_xmlvm_iphone_UIScreen_getBounds__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UIScreen_getApplicationFrame__(JAVA_OBJECT me);
JAVA_FLOAT org_xmlvm_iphone_UIScreen_getScale__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIScreen___CLINIT_();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIScreen \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIScreen \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
