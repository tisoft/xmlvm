#ifndef __ORG_XMLVM_IPHONE_UITABLEVIEWCONTROLLER__
#define __ORG_XMLVM_IPHONE_UITABLEVIEWCONTROLLER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "org_xmlvm_iphone_UIViewController.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITableView)
#endif
// Class declarations for org.xmlvm.iphone.UITableViewController
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITableViewController, 12, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UITableViewController)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewController;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewController_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewController_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewController_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewController
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewController \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewController; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewController \
    } org_xmlvm_iphone_UITableViewController

struct org_xmlvm_iphone_UITableViewController {
    __TIB_DEFINITION_org_xmlvm_iphone_UITableViewController* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITableViewController;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewController
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITableViewController
typedef struct org_xmlvm_iphone_UITableViewController org_xmlvm_iphone_UITableViewController;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITableViewController 12

void __INIT_org_xmlvm_iphone_UITableViewController();
void __INIT_IMPL_org_xmlvm_iphone_UITableViewController();
void __DELETE_org_xmlvm_iphone_UITableViewController(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewController();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewController();
void org_xmlvm_iphone_UITableViewController___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UITableViewController___INIT____int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_UITableViewController_setTableView___org_xmlvm_iphone_UITableView(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UITableViewController_getTableView__(JAVA_OBJECT me);

#endif
