#ifndef __ORG_XMLVM_IPHONE_UIWINDOW__
#define __ORG_XMLVM_IPHONE_UIWINDOW__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPoint)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIEvent)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIScreen
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIScreen
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIScreen)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewController
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewController
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIViewController)
#endif
// Class declarations for org.xmlvm.iphone.UIWindow
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIWindow, 13, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIWindow)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWindow;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWindow_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWindow_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWindow_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIWindow
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIWindow \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIWindow \
    } org_xmlvm_iphone_UIWindow

struct org_xmlvm_iphone_UIWindow {
    __TIB_DEFINITION_org_xmlvm_iphone_UIWindow* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIWindow;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
typedef struct org_xmlvm_iphone_UIWindow org_xmlvm_iphone_UIWindow;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIWindow 13

void __INIT_org_xmlvm_iphone_UIWindow();
void __INIT_IMPL_org_xmlvm_iphone_UIWindow();
void __DELETE_org_xmlvm_iphone_UIWindow(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIWindow();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIWindow();
void org_xmlvm_iphone_UIWindow___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIWindow___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIWindow_setRootViewController___org_xmlvm_iphone_UIViewController(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIWindow_getRootViewController__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIWindow_makeKeyAndVisible__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIWindow_sendEvent___org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_UIWindow_setScreen___org_xmlvm_iphone_UIScreen(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIWindow_getScreen__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIWindow \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIView \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIWindow \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIView \


#endif
