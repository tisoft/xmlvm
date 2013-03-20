#ifndef __ORG_XMLVM_IPHONE_CGCOLOR__
#define __ORG_XMLVM_IPHONE_CGCOLOR__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CFType.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGColorSpace
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGColorSpace
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGColorSpace)
#endif
// Class declarations for org.xmlvm.iphone.CGColor
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGColor, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGColor)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGColor;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGColor_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGColor_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGColor_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGColor
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGColor \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CFType; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGColor \
    } org_xmlvm_iphone_CGColor

struct org_xmlvm_iphone_CGColor {
    __TIB_DEFINITION_org_xmlvm_iphone_CGColor* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGColor;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGColor
typedef struct org_xmlvm_iphone_CGColor org_xmlvm_iphone_CGColor;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGColor 8

void __INIT_org_xmlvm_iphone_CGColor();
void __INIT_IMPL_org_xmlvm_iphone_CGColor();
void __DELETE_org_xmlvm_iphone_CGColor(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGColor(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGColor();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGColor();
void org_xmlvm_iphone_CGColor___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CGColor_create___org_xmlvm_iphone_CGColorSpace_float_1ARRAY(JAVA_OBJECT n1, JAVA_OBJECT n2);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGColor \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CFType \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGColor \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CFType \


#endif
