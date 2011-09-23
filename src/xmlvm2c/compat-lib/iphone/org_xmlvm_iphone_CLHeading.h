#ifndef __ORG_XMLVM_IPHONE_CLHEADING__
#define __ORG_XMLVM_IPHONE_CLHEADING__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.CLHeading
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CLHeading, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CLHeading)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLHeading;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLHeading_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLHeading_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLHeading_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLHeading
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CLHeading \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLHeading \
    } org_xmlvm_iphone_CLHeading

struct org_xmlvm_iphone_CLHeading {
    __TIB_DEFINITION_org_xmlvm_iphone_CLHeading* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CLHeading;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLHeading
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLHeading
typedef struct org_xmlvm_iphone_CLHeading org_xmlvm_iphone_CLHeading;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLHeading 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CLHeading_toString__ 5

void __INIT_org_xmlvm_iphone_CLHeading();
void __INIT_IMPL_org_xmlvm_iphone_CLHeading();
void __DELETE_org_xmlvm_iphone_CLHeading(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLHeading(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLHeading();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLHeading();
JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getHeadingAccuracy__(JAVA_OBJECT me);
JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getMagneticHeading__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CLHeading_getTimestamp__(JAVA_OBJECT me);
JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getTrueHeading__(JAVA_OBJECT me);
JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getX__(JAVA_OBJECT me);
JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getY__(JAVA_OBJECT me);
JAVA_DOUBLE org_xmlvm_iphone_CLHeading_getZ__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CLHeading_description__(JAVA_OBJECT me);
// Vtable index: 5
JAVA_OBJECT org_xmlvm_iphone_CLHeading_toString__(JAVA_OBJECT me);

#endif
