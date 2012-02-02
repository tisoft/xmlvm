#ifndef __ORG_XMLVM_IPHONE_CGSIZE__
#define __ORG_XMLVM_IPHONE_CGSIZE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CGSize
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGSize, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGSize)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGSize;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGSize_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGSize_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGSize_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGSize

#import <CoreGraphics/CoreGraphics.h>

CGSize toCGSize(void* size);
JAVA_OBJECT fromCGSize(CGSize size);

#define XMLVM_VAR_CGSize(var, arg) \
    org_xmlvm_iphone_CGSize* j##var = arg; \
    CGSize var = toCGSize(arg);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGSize \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        JAVA_FLOAT width_; \
        JAVA_FLOAT height_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGSize \
    } org_xmlvm_iphone_CGSize

struct org_xmlvm_iphone_CGSize {
    __TIB_DEFINITION_org_xmlvm_iphone_CGSize* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGSize;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
typedef struct org_xmlvm_iphone_CGSize org_xmlvm_iphone_CGSize;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGSize 6
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGSize_toString__ 5
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGSize_equals___java_lang_Object 1

void __INIT_org_xmlvm_iphone_CGSize();
void __INIT_IMPL_org_xmlvm_iphone_CGSize();
void __DELETE_org_xmlvm_iphone_CGSize(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGSize(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGSize();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGSize();
void org_xmlvm_iphone_CGSize___INIT____org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_CGSize___INIT____float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 5
JAVA_OBJECT org_xmlvm_iphone_CGSize_toString__(JAVA_OBJECT me);
// Vtable index: 1
JAVA_BOOLEAN org_xmlvm_iphone_CGSize_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGSize \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGSize \


#endif
