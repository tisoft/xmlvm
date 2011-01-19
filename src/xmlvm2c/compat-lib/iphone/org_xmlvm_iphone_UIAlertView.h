#ifndef __ORG_XMLVM_IPHONE_UIALERTVIEW__
#define __ORG_XMLVM_IPHONE_UIALERTVIEW__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIAlertView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertViewDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertViewDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIAlertViewDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIAlertView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIAlertView, 76)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertView;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertView_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIAlertView
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIAlertView \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIAlertView \
    } org_xmlvm_iphone_UIAlertView

struct org_xmlvm_iphone_UIAlertView {
    __TIB_DEFINITION_org_xmlvm_iphone_UIAlertView* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIAlertView;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertView
typedef struct org_xmlvm_iphone_UIAlertView org_xmlvm_iphone_UIAlertView;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIAlertView 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAlertView_show__ 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAlertView_getTitle__ 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAlertView_getMesssage__ 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String 75

void __INIT_org_xmlvm_iphone_UIAlertView();
void __DELETE_org_xmlvm_iphone_UIAlertView(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAlertView();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAlertView();
void org_xmlvm_iphone_UIAlertView___INIT____java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_OBJECT n4);
// Vtable index: 70
void org_xmlvm_iphone_UIAlertView_show__(JAVA_OBJECT me);
// Vtable index: 71
void org_xmlvm_iphone_UIAlertView_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 72
JAVA_OBJECT org_xmlvm_iphone_UIAlertView_getTitle__(JAVA_OBJECT me);
// Vtable index: 73
void org_xmlvm_iphone_UIAlertView_setMessage___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 74
JAVA_OBJECT org_xmlvm_iphone_UIAlertView_getMesssage__(JAVA_OBJECT me);
// Vtable index: 75
JAVA_INT org_xmlvm_iphone_UIAlertView_addButtonWithTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIAlertView_access$000___org_xmlvm_iphone_UIAlertView_int(JAVA_OBJECT n1, JAVA_INT n2);

#endif
