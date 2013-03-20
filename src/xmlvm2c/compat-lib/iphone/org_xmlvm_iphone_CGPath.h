#ifndef __ORG_XMLVM_IPHONE_CGPATH__
#define __ORG_XMLVM_IPHONE_CGPATH__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGAffineTransform)
#endif
// Class declarations for org.xmlvm.iphone.CGPath
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGPath, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGPath)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPath;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPath_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPath_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPath_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPath
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGPath \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPath \
    } org_xmlvm_iphone_CGPath

struct org_xmlvm_iphone_CGPath {
    __TIB_DEFINITION_org_xmlvm_iphone_CGPath* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGPath;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPath
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPath
typedef struct org_xmlvm_iphone_CGPath org_xmlvm_iphone_CGPath;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGPath 6

void __INIT_org_xmlvm_iphone_CGPath();
void __INIT_IMPL_org_xmlvm_iphone_CGPath();
void __DELETE_org_xmlvm_iphone_CGPath(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGPath(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPath();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPath();
void org_xmlvm_iphone_CGPath___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_CGPath_moveToPoint___org_xmlvm_iphone_CGAffineTransform_float_float(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3);
void org_xmlvm_iphone_CGPath_addLineToPoint___org_xmlvm_iphone_CGAffineTransform_float_float(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3);
void org_xmlvm_iphone_CGPath_addArch___org_xmlvm_iphone_CGAffineTransform_float_float_float_float_float_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4, JAVA_FLOAT n5, JAVA_FLOAT n6, JAVA_BOOLEAN n7);
void org_xmlvm_iphone_CGPath_addCurveToPoint___org_xmlvm_iphone_CGAffineTransform_float_float_float_float_float_float(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4, JAVA_FLOAT n5, JAVA_FLOAT n6, JAVA_FLOAT n7);
void org_xmlvm_iphone_CGPath_addQuadCurveToPoint___org_xmlvm_iphone_CGAffineTransform_float_float_float_float(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4, JAVA_FLOAT n5);
void org_xmlvm_iphone_CGPath_closeSubpath__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGPath \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGPath \


#endif
