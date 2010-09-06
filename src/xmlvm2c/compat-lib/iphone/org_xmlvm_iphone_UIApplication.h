#ifndef __ORG_XMLVM_IPHONE_UIAPPLICATION__
#define __ORG_XMLVM_IPHONE_UIAPPLICATION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIResponder.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIApplicationDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIApplicationDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIApplicationDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIApplication
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIApplication
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIApplication)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIWindow)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSURL
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSURL)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIResponder)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_List
#define XMLVM_FORWARD_DECL_java_util_List
XMLVM_FORWARD_DECL(java_util_List)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Class
#define XMLVM_FORWARD_DECL_java_lang_Class
XMLVM_FORWARD_DECL(java_lang_Class)
#endif
// Class declarations for org.xmlvm.iphone.UIApplication
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIApplication, 33)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplication void *ocApp;
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplication \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder; \
    struct { \
        JAVA_OBJECT windows_; \
        JAVA_OBJECT keyWindow_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplication \
    } org_xmlvm_iphone_UIApplication

struct org_xmlvm_iphone_UIApplication {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIApplication* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplication;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIApplication
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIApplication
typedef struct org_xmlvm_iphone_UIApplication org_xmlvm_iphone_UIApplication;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIApplication 33
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_getDelegate__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__ 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_getKeyWindow__ 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_getWindows__ 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_getStatusBarStyle__ 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_setStatusBarStyle___int 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean 31
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL 32

void __INIT_org_xmlvm_iphone_UIApplication();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIApplication();
void org_xmlvm_iphone_UIApplication___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UIApplication_sharedApplication__();
// Vtable index: 20
JAVA_OBJECT org_xmlvm_iphone_UIApplication_getDelegate__(JAVA_OBJECT me);
// Vtable index: 21
void org_xmlvm_iphone_UIApplication_setDelegate___org_xmlvm_iphone_UIApplicationDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 22
void org_xmlvm_iphone_UIApplication_setIdleTimerDisabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 23
JAVA_BOOLEAN org_xmlvm_iphone_UIApplication_isIdleTimerDisabled__(JAVA_OBJECT me);
// Vtable index: 24
void org_xmlvm_iphone_UIApplication_setKeyWindow___org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 25
JAVA_OBJECT org_xmlvm_iphone_UIApplication_getKeyWindow__(JAVA_OBJECT me);
// Vtable index: 26
JAVA_OBJECT org_xmlvm_iphone_UIApplication_getWindows__(JAVA_OBJECT me);
// Vtable index: 27
void org_xmlvm_iphone_UIApplication_setStatusBarOrientation___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 28
void org_xmlvm_iphone_UIApplication_setStatusBarHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 29
JAVA_INT org_xmlvm_iphone_UIApplication_getStatusBarStyle__(JAVA_OBJECT me);
// Vtable index: 30
void org_xmlvm_iphone_UIApplication_setStatusBarStyle___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 31
void org_xmlvm_iphone_UIApplication_setStatusBarStyle___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2);
// Vtable index: 32
JAVA_BOOLEAN org_xmlvm_iphone_UIApplication_openURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIApplication_main___java_lang_String_ARRAYTYPE_java_lang_Class_java_lang_Class(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
JAVA_OBJECT org_xmlvm_iphone_UIApplication_access$000__();

#endif
