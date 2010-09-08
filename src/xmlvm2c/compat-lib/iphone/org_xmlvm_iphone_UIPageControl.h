#ifndef __ORG_XMLVM_IPHONE_UIPAGECONTROL__
#define __ORG_XMLVM_IPHONE_UIPAGECONTROL__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIPageControl
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIPageControl, 79)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPageControl
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIPageControl \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPageControl \
    } org_xmlvm_iphone_UIPageControl

struct org_xmlvm_iphone_UIPageControl {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIPageControl* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIPageControl;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPageControl
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPageControl
typedef struct org_xmlvm_iphone_UIPageControl org_xmlvm_iphone_UIPageControl;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIPageControl 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_sizeForNumberOfPages___int 69
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_updateCurrentPageDisplay__ 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_getCurrentPage__ 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_setCurrentPage___int 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_isDefersCurrentPageDisplay__ 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_setDefersCurrentPageDisplay___boolean 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_isHidesForSinglePage__ 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_setHidesForSinglePage___boolean 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_getNumberOfPages__ 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIPageControl_setNumberOfPages___int 78

void __INIT_org_xmlvm_iphone_UIPageControl();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPageControl();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPageControl();
void org_xmlvm_iphone_UIPageControl___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIPageControl___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 69
JAVA_OBJECT org_xmlvm_iphone_UIPageControl_sizeForNumberOfPages___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 70
void org_xmlvm_iphone_UIPageControl_updateCurrentPageDisplay__(JAVA_OBJECT me);
// Vtable index: 71
JAVA_INT org_xmlvm_iphone_UIPageControl_getCurrentPage__(JAVA_OBJECT me);
// Vtable index: 72
void org_xmlvm_iphone_UIPageControl_setCurrentPage___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 73
JAVA_BOOLEAN org_xmlvm_iphone_UIPageControl_isDefersCurrentPageDisplay__(JAVA_OBJECT me);
// Vtable index: 74
void org_xmlvm_iphone_UIPageControl_setDefersCurrentPageDisplay___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 75
JAVA_BOOLEAN org_xmlvm_iphone_UIPageControl_isHidesForSinglePage__(JAVA_OBJECT me);
// Vtable index: 76
void org_xmlvm_iphone_UIPageControl_setHidesForSinglePage___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 77
JAVA_INT org_xmlvm_iphone_UIPageControl_getNumberOfPages__(JAVA_OBJECT me);
// Vtable index: 78
void org_xmlvm_iphone_UIPageControl_setNumberOfPages___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
