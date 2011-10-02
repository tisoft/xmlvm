#ifndef __ORG_XMLVM_IPHONE_MPVOLUMEVIEW__
#define __ORG_XMLVM_IPHONE_MPVOLUMEVIEW__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_UIView.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
// Class declarations for org.xmlvm.iphone.MPVolumeView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MPVolumeView, 13, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_MPVolumeView)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPVolumeView;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPVolumeView_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPVolumeView_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MPVolumeView_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MPVolumeView
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MPVolumeView \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIView; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MPVolumeView \
    } org_xmlvm_iphone_MPVolumeView

struct org_xmlvm_iphone_MPVolumeView {
    __TIB_DEFINITION_org_xmlvm_iphone_MPVolumeView* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MPVolumeView;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MPVolumeView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MPVolumeView
typedef struct org_xmlvm_iphone_MPVolumeView org_xmlvm_iphone_MPVolumeView;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MPVolumeView 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_MPVolumeView_sizeThatFits___org_xmlvm_iphone_CGSize 12

void __INIT_org_xmlvm_iphone_MPVolumeView();
void __INIT_IMPL_org_xmlvm_iphone_MPVolumeView();
void __DELETE_org_xmlvm_iphone_MPVolumeView(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MPVolumeView(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MPVolumeView();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MPVolumeView();
void org_xmlvm_iphone_MPVolumeView___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_MPVolumeView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 12
JAVA_OBJECT org_xmlvm_iphone_MPVolumeView_sizeThatFits___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_MPVolumeView_isShowsRouteButton__(JAVA_OBJECT me);
void org_xmlvm_iphone_MPVolumeView_setShowsRouteButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_BOOLEAN org_xmlvm_iphone_MPVolumeView_isShowsVolumeSlider__(JAVA_OBJECT me);
void org_xmlvm_iphone_MPVolumeView_setShowsVolumeSlider___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);

#endif
