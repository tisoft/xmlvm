#ifndef __ORG_XMLVM_IPHONE_UIWINDOW__
#define __ORG_XMLVM_IPHONE_UIWINDOW__

#include "xmlvm.h"
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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIWindow
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIWindow, 76)

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIWindow 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWindow_makeKeyAndVisible__ 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWindow_sendEvent___org_xmlvm_iphone_UIEvent 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWindow_convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWindow_convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWindow_convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWindow_convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow 75

void __INIT_org_xmlvm_iphone_UIWindow();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIWindow();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIWindow();
void org_xmlvm_iphone_UIWindow___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIWindow___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 70
void org_xmlvm_iphone_UIWindow_makeKeyAndVisible__(JAVA_OBJECT me);
// Vtable index: 71
void org_xmlvm_iphone_UIWindow_sendEvent___org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 72
JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 73
JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 74
JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 75
JAVA_OBJECT org_xmlvm_iphone_UIWindow_convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);

#endif
