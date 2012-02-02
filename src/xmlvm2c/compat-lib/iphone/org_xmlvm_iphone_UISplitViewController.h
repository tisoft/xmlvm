#ifndef __ORG_XMLVM_IPHONE_UISPLITVIEWCONTROLLER__
#define __ORG_XMLVM_IPHONE_UISPLITVIEWCONTROLLER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_UIViewController.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_util_List
#define XMLVM_FORWARD_DECL_java_util_List
XMLVM_FORWARD_DECL(java_util_List)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISplitViewControllerDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISplitViewControllerDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UISplitViewControllerDelegate)
#endif
// Class declarations for org.xmlvm.iphone.UISplitViewController
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UISplitViewController, 12, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UISplitViewController)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISplitViewController;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISplitViewController_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISplitViewController_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISplitViewController_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UISplitViewController
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UISplitViewController \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewController; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UISplitViewController \
    } org_xmlvm_iphone_UISplitViewController

struct org_xmlvm_iphone_UISplitViewController {
    __TIB_DEFINITION_org_xmlvm_iphone_UISplitViewController* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UISplitViewController;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISplitViewController
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISplitViewController
typedef struct org_xmlvm_iphone_UISplitViewController org_xmlvm_iphone_UISplitViewController;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UISplitViewController 12

void __INIT_org_xmlvm_iphone_UISplitViewController();
void __INIT_IMPL_org_xmlvm_iphone_UISplitViewController();
void __DELETE_org_xmlvm_iphone_UISplitViewController(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISplitViewController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UISplitViewController();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISplitViewController();
void org_xmlvm_iphone_UISplitViewController___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UISplitViewController_getViewControllers__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISplitViewController_setViewControllers___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UISplitViewController_getDelegate__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISplitViewController_setDelegate___org_xmlvm_iphone_UISplitViewControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UISplitViewController \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIViewController \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UISplitViewController \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIViewController \


#endif
