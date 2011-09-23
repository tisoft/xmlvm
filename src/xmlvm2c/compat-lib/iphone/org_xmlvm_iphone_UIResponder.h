#ifndef __ORG_XMLVM_IPHONE_UIRESPONDER__
#define __ORG_XMLVM_IPHONE_UIRESPONDER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITouch
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITouch
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UITouch)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEvent
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIEvent)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Set
#define XMLVM_FORWARD_DECL_java_util_Set
XMLVM_FORWARD_DECL(java_util_Set)
#endif
// Class declarations for org.xmlvm.iphone.UIResponder
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIResponder, 9, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIResponder)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIResponder_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#import <UIKit/UIResponder.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIResponder

#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
typedef struct org_xmlvm_iphone_UIResponder org_xmlvm_iphone_UIResponder;
#endif

void org_xmlvm_iphone_UIResponder_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj);
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIResponder \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_BOOLEAN callDelegates_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIResponder \
    } org_xmlvm_iphone_UIResponder

struct org_xmlvm_iphone_UIResponder {
    __TIB_DEFINITION_org_xmlvm_iphone_UIResponder* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIResponder;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
typedef struct org_xmlvm_iphone_UIResponder org_xmlvm_iphone_UIResponder;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIResponder 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent 8

void __INIT_org_xmlvm_iphone_UIResponder();
void __INIT_IMPL_org_xmlvm_iphone_UIResponder();
void __DELETE_org_xmlvm_iphone_UIResponder(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIResponder();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIResponder();
void org_xmlvm_iphone_UIResponder_dummyMethod___org_xmlvm_iphone_UITouch(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIResponder___INIT___(JAVA_OBJECT me);
// Vtable index: 7
void org_xmlvm_iphone_UIResponder_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 8
void org_xmlvm_iphone_UIResponder_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_UIResponder_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_UIResponder_getNextResponder__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_UIResponder_resignFirstResponder__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_UIResponder_becomeFirstResponder__(JAVA_OBJECT me);

#endif
