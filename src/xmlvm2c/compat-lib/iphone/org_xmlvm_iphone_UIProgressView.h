#ifndef __ORG_XMLVM_IPHONE_UIPROGRESSVIEW__
#define __ORG_XMLVM_IPHONE_UIPROGRESSVIEW__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIControl.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIControl)
#endif
// Class declarations for org.xmlvm.iphone.UIProgressView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIProgressView, 75)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIProgressView
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIProgressView \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIControl; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIProgressView \
    } org_xmlvm_iphone_UIProgressView

struct org_xmlvm_iphone_UIProgressView {
    __TIB_DEFINITION_org_xmlvm_iphone_UIProgressView* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIProgressView;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIProgressView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIProgressView
typedef struct org_xmlvm_iphone_UIProgressView org_xmlvm_iphone_UIProgressView;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIProgressView 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIProgressView_setProgress___float 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIProgressView_getProgress__ 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIProgressView_getProgressViewStyle__ 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIProgressView_setProgressViewStyle___int 74

void __INIT_org_xmlvm_iphone_UIProgressView();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIProgressView();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIProgressView();
void org_xmlvm_iphone_UIProgressView___INIT____int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 71
void org_xmlvm_iphone_UIProgressView_setProgress___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 72
JAVA_FLOAT org_xmlvm_iphone_UIProgressView_getProgress__(JAVA_OBJECT me);
// Vtable index: 73
JAVA_INT org_xmlvm_iphone_UIProgressView_getProgressViewStyle__(JAVA_OBJECT me);
// Vtable index: 74
void org_xmlvm_iphone_UIProgressView_setProgressViewStyle___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
