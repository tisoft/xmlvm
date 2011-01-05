#ifndef __ORG_XMLVM_IPHONE_UISCREEN__
#define __ORG_XMLVM_IPHONE_UISCREEN__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIScreen
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIScreen
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIScreen)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
// Class declarations for org.xmlvm.iphone.UIScreen
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIScreen, 16)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIScreen_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIScreen void *ocScreen;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIScreen 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIScreen_getBounds__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIScreen_getApplicationFrame__ 15

void __INIT_org_xmlvm_iphone_UIScreen();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIScreen();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIScreen();
JAVA_OBJECT org_xmlvm_iphone_UIScreen_mainScreen__();
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_UIScreen_getBounds__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_UIScreen_getApplicationFrame__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIScreen___CLINIT_();

#endif
