#ifndef __ORG_XMLVM_IPHONE_UIEVENT__
#define __ORG_XMLVM_IPHONE_UIEVENT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.UIEvent
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIEvent, 10, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIEvent)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEvent;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEvent_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEvent_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEvent_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS

#import <UIKit/UIEvent.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIEvent

void org_xmlvm_iphone_UIEvent_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, UIEvent* event);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIEvent \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIEvent \
    } org_xmlvm_iphone_UIEvent

struct org_xmlvm_iphone_UIEvent {
    __TIB_DEFINITION_org_xmlvm_iphone_UIEvent* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIEvent;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
typedef struct org_xmlvm_iphone_UIEvent org_xmlvm_iphone_UIEvent;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIEvent 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIEvent_allTouches__ 9

void __INIT_org_xmlvm_iphone_UIEvent();
void __INIT_IMPL_org_xmlvm_iphone_UIEvent();
void __DELETE_org_xmlvm_iphone_UIEvent(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIEvent();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIEvent();
void org_xmlvm_iphone_UIEvent___INIT___(JAVA_OBJECT me);
// Vtable index: 9
JAVA_OBJECT org_xmlvm_iphone_UIEvent_allTouches__(JAVA_OBJECT me);

#endif
