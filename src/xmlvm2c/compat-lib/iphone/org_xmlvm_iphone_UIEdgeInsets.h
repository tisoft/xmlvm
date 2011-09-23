#ifndef __ORG_XMLVM_IPHONE_UIEDGEINSETS__
#define __ORG_XMLVM_IPHONE_UIEDGEINSETS__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIEdgeInsets
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIEdgeInsets, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIEdgeInsets)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEdgeInsets;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEdgeInsets_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEdgeInsets_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEdgeInsets_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIEdgeInsets
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIEdgeInsets \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_FLOAT top_; \
        JAVA_FLOAT left_; \
        JAVA_FLOAT bottom_; \
        JAVA_FLOAT right_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIEdgeInsets \
    } org_xmlvm_iphone_UIEdgeInsets

struct org_xmlvm_iphone_UIEdgeInsets {
    __TIB_DEFINITION_org_xmlvm_iphone_UIEdgeInsets* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIEdgeInsets;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEdgeInsets
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIEdgeInsets
typedef struct org_xmlvm_iphone_UIEdgeInsets org_xmlvm_iphone_UIEdgeInsets;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIEdgeInsets 7

void __INIT_org_xmlvm_iphone_UIEdgeInsets();
void __INIT_IMPL_org_xmlvm_iphone_UIEdgeInsets();
void __DELETE_org_xmlvm_iphone_UIEdgeInsets(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIEdgeInsets(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIEdgeInsets();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIEdgeInsets();
void org_xmlvm_iphone_UIEdgeInsets___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UIEdgeInsets___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4);

#endif
