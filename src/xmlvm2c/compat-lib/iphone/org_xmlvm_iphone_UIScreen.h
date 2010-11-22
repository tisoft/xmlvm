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

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScreen void *ocScreen;
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIScreen \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIScreen \
    } org_xmlvm_iphone_UIScreen

struct org_xmlvm_iphone_UIScreen {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIScreen* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIScreen;
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
