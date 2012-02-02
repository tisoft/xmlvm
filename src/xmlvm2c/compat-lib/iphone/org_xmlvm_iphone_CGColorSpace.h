#ifndef __ORG_XMLVM_IPHONE_CGCOLORSPACE__
#define __ORG_XMLVM_IPHONE_CGCOLORSPACE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CFType.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CGColorSpace
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGColorSpace, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGColorSpace)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGColorSpace;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGColorSpace_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGColorSpace_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGColorSpace_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGColorSpace
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGColorSpace \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CFType; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGColorSpace \
    } org_xmlvm_iphone_CGColorSpace

struct org_xmlvm_iphone_CGColorSpace {
    __TIB_DEFINITION_org_xmlvm_iphone_CGColorSpace* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGColorSpace;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGColorSpace
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGColorSpace
typedef struct org_xmlvm_iphone_CGColorSpace org_xmlvm_iphone_CGColorSpace;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGColorSpace 8

void __INIT_org_xmlvm_iphone_CGColorSpace();
void __INIT_IMPL_org_xmlvm_iphone_CGColorSpace();
void __DELETE_org_xmlvm_iphone_CGColorSpace(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGColorSpace(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGColorSpace();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGColorSpace();
void org_xmlvm_iphone_CGColorSpace___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CGColorSpace_createDeviceRGB__();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGColorSpace \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CFType \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGColorSpace \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CFType \


#endif
