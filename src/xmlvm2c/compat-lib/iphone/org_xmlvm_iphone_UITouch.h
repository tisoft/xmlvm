#ifndef __ORG_XMLVM_IPHONE_UITOUCH__
#define __ORG_XMLVM_IPHONE_UITOUCH__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.UITouch
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITouch, 20)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouch;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouch_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouch_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouch_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS

#import <UIKit/UITouch.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITouch

void org_xmlvm_iphone_UITouch_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, UITouch* touch);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITouch \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITouch \
    } org_xmlvm_iphone_UITouch

struct org_xmlvm_iphone_UITouch {
    __TIB_DEFINITION_org_xmlvm_iphone_UITouch* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITouch;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITouch
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITouch
typedef struct org_xmlvm_iphone_UITouch org_xmlvm_iphone_UITouch;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITouch 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITouch_getView__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITouch_getWindow__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITouch_getTapCount__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITouch_getTimestamp__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UITouch_getPhase__ 19

void __INIT_org_xmlvm_iphone_UITouch();
void __INIT_IMPL_org_xmlvm_iphone_UITouch();
void __DELETE_org_xmlvm_iphone_UITouch(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITouch(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITouch();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITouch();
void org_xmlvm_iphone_UITouch___INIT____int_org_xmlvm_iphone_UIView_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_INT n4);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_UITouch_getView__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_OBJECT org_xmlvm_iphone_UITouch_getWindow__(JAVA_OBJECT me);
// Vtable index: 17
JAVA_INT org_xmlvm_iphone_UITouch_getTapCount__(JAVA_OBJECT me);
// Vtable index: 18
JAVA_DOUBLE org_xmlvm_iphone_UITouch_getTimestamp__(JAVA_OBJECT me);
// Vtable index: 19
JAVA_INT org_xmlvm_iphone_UITouch_getPhase__(JAVA_OBJECT me);

#endif
