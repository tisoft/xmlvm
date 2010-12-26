#ifndef __ORG_XMLVM_IPHONE_UIPICKERVIEW__
#define __ORG_XMLVM_IPHONE_UIPICKERVIEW__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPickerViewDataSource
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPickerViewDataSource
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIPickerViewDataSource)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPickerViewDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPickerViewDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIPickerViewDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIPickerView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIPickerView, 84)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIPickerView
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIPickerView \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIPickerView \
    } org_xmlvm_iphone_UIPickerView

struct org_xmlvm_iphone_UIPickerView {
    __TIB_DEFINITION_org_xmlvm_iphone_UIPickerView* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIPickerView;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPickerView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPickerView
typedef struct org_xmlvm_iphone_UIPickerView org_xmlvm_iphone_UIPickerView;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIPickerView 84
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_getNumberOfComponents__ 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_numberOfRowsInComponent___int 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_rowSizeForComponent___int 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_reloadAllComponents__ 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_reloadComponent___int 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_selectedRowInComponent___int 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_selectRow___int_int_boolean 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_viewForRow___int_int 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_getDataSource__ 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_setDataSource___org_xmlvm_iphone_UIPickerViewDataSource 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_getDelegate__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_setDelegate___org_xmlvm_iphone_UIPickerViewDelegate 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_showsSelectionIndicator__ 82
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPickerView_setShowsSelectionIndicator___boolean 83

void __INIT_org_xmlvm_iphone_UIPickerView();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPickerView();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPickerView();
void org_xmlvm_iphone_UIPickerView___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIPickerView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 70
JAVA_INT org_xmlvm_iphone_UIPickerView_getNumberOfComponents__(JAVA_OBJECT me);
// Vtable index: 71
JAVA_INT org_xmlvm_iphone_UIPickerView_numberOfRowsInComponent___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 72
JAVA_OBJECT org_xmlvm_iphone_UIPickerView_rowSizeForComponent___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 73
void org_xmlvm_iphone_UIPickerView_reloadAllComponents__(JAVA_OBJECT me);
// Vtable index: 74
void org_xmlvm_iphone_UIPickerView_reloadComponent___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 75
JAVA_INT org_xmlvm_iphone_UIPickerView_selectedRowInComponent___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 76
void org_xmlvm_iphone_UIPickerView_selectRow___int_int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_BOOLEAN n3);
// Vtable index: 77
JAVA_OBJECT org_xmlvm_iphone_UIPickerView_viewForRow___int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2);
// Vtable index: 78
JAVA_OBJECT org_xmlvm_iphone_UIPickerView_getDataSource__(JAVA_OBJECT me);
// Vtable index: 79
void org_xmlvm_iphone_UIPickerView_setDataSource___org_xmlvm_iphone_UIPickerViewDataSource(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 80
JAVA_OBJECT org_xmlvm_iphone_UIPickerView_getDelegate__(JAVA_OBJECT me);
// Vtable index: 81
void org_xmlvm_iphone_UIPickerView_setDelegate___org_xmlvm_iphone_UIPickerViewDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 82
JAVA_BOOLEAN org_xmlvm_iphone_UIPickerView_showsSelectionIndicator__(JAVA_OBJECT me);
// Vtable index: 83
void org_xmlvm_iphone_UIPickerView_setShowsSelectionIndicator___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);

#endif
