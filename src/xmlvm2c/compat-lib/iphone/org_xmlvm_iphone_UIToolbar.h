#ifndef __ORG_XMLVM_IPHONE_UITOOLBAR__
#define __ORG_XMLVM_IPHONE_UITOOLBAR__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIToolbar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIToolbar, 76, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIToolbar)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIToolbar;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIToolbar_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIToolbar_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIToolbar_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIToolbar
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIToolbar \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIToolbar \
    } org_xmlvm_iphone_UIToolbar

struct org_xmlvm_iphone_UIToolbar {
    __TIB_DEFINITION_org_xmlvm_iphone_UIToolbar* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIToolbar;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIToolbar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIToolbar
typedef struct org_xmlvm_iphone_UIToolbar org_xmlvm_iphone_UIToolbar;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIToolbar 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_getItems__ 66
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList 67
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList_boolean 68
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_getBarStyle__ 69
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_setBarStyle___int 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_getTintColor__ 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_setTintColor___org_xmlvm_iphone_UIColor 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_isTranslucent__ 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_setTranslucent___boolean 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIToolbar_updateViews__ 75

void __INIT_org_xmlvm_iphone_UIToolbar();
void __INIT_IMPL_org_xmlvm_iphone_UIToolbar();
void __DELETE_org_xmlvm_iphone_UIToolbar(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIToolbar(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIToolbar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIToolbar();
void org_xmlvm_iphone_UIToolbar___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIToolbar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 66
JAVA_OBJECT org_xmlvm_iphone_UIToolbar_getItems__(JAVA_OBJECT me);
// Vtable index: 67
void org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 68
void org_xmlvm_iphone_UIToolbar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2);
// Vtable index: 69
JAVA_INT org_xmlvm_iphone_UIToolbar_getBarStyle__(JAVA_OBJECT me);
// Vtable index: 70
void org_xmlvm_iphone_UIToolbar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 71
JAVA_OBJECT org_xmlvm_iphone_UIToolbar_getTintColor__(JAVA_OBJECT me);
// Vtable index: 72
void org_xmlvm_iphone_UIToolbar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 73
JAVA_BOOLEAN org_xmlvm_iphone_UIToolbar_isTranslucent__(JAVA_OBJECT me);
// Vtable index: 74
void org_xmlvm_iphone_UIToolbar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 75
void org_xmlvm_iphone_UIToolbar_updateViews__(JAVA_OBJECT me);

#endif
