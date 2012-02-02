#ifndef __ORG_XMLVM_IPHONE_NSSEARCHPATHDOMAINMASK__
#define __ORG_XMLVM_IPHONE_NSSEARCHPATHDOMAINMASK__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSSearchPathDomainMask
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSSearchPathDomainMask, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSSearchPathDomainMask)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSSearchPathDomainMask
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSSearchPathDomainMask \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSSearchPathDomainMask \
    } org_xmlvm_iphone_NSSearchPathDomainMask

struct org_xmlvm_iphone_NSSearchPathDomainMask {
    __TIB_DEFINITION_org_xmlvm_iphone_NSSearchPathDomainMask* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSSearchPathDomainMask;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSearchPathDomainMask
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSearchPathDomainMask
typedef struct org_xmlvm_iphone_NSSearchPathDomainMask org_xmlvm_iphone_NSSearchPathDomainMask;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSSearchPathDomainMask 6

void __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
void __INIT_IMPL_org_xmlvm_iphone_NSSearchPathDomainMask();
void __DELETE_org_xmlvm_iphone_NSSearchPathDomainMask(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSSearchPathDomainMask(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSSearchPathDomainMask();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSSearchPathDomainMask();
JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_UserDomain();
void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_UserDomain(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_LocalDomain();
void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_LocalDomain(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_NetworkDomain();
void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_NetworkDomain(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_SystemDomain();
void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_SystemDomain(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_AllDomains();
void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_AllDomains(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSSearchPathDomainMask \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSSearchPathDomainMask \


#endif
