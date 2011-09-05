#ifndef __ORG_XMLVM_IPHONE_UIPAGECONTROL__
#define __ORG_XMLVM_IPHONE_UIPAGECONTROL__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
// Class declarations for org.xmlvm.iphone.UIPageControl
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIPageControl, 12, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIPageControl)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPageControl;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPageControl_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPageControl_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIPageControl_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIPageControl
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIPageControl \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIPageControl \
    } org_xmlvm_iphone_UIPageControl

struct org_xmlvm_iphone_UIPageControl {
    __TIB_DEFINITION_org_xmlvm_iphone_UIPageControl* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIPageControl;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPageControl
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIPageControl
typedef struct org_xmlvm_iphone_UIPageControl org_xmlvm_iphone_UIPageControl;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIPageControl 12

void __INIT_org_xmlvm_iphone_UIPageControl();
void __INIT_IMPL_org_xmlvm_iphone_UIPageControl();
void __DELETE_org_xmlvm_iphone_UIPageControl(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIPageControl(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIPageControl();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIPageControl();
void org_xmlvm_iphone_UIPageControl___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIPageControl___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIPageControl_sizeForNumberOfPages___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_UIPageControl_updateCurrentPageDisplay__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_UIPageControl_getCurrentPage__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIPageControl_setCurrentPage___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UIPageControl_isDefersCurrentPageDisplay__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIPageControl_setDefersCurrentPageDisplay___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_BOOLEAN org_xmlvm_iphone_UIPageControl_isHidesForSinglePage__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIPageControl_setHidesForSinglePage___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_INT org_xmlvm_iphone_UIPageControl_getNumberOfPages__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIPageControl_setNumberOfPages___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
