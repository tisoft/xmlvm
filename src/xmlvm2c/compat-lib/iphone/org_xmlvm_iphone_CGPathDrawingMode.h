#ifndef __ORG_XMLVM_IPHONE_CGPATHDRAWINGMODE__
#define __ORG_XMLVM_IPHONE_CGPATHDRAWINGMODE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CGPathDrawingMode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGPathDrawingMode, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGPathDrawingMode)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPathDrawingMode;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPathDrawingMode_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPathDrawingMode_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPathDrawingMode_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPathDrawingMode
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGPathDrawingMode \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGPathDrawingMode \
    } org_xmlvm_iphone_CGPathDrawingMode

struct org_xmlvm_iphone_CGPathDrawingMode {
    __TIB_DEFINITION_org_xmlvm_iphone_CGPathDrawingMode* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGPathDrawingMode;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPathDrawingMode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPathDrawingMode
typedef struct org_xmlvm_iphone_CGPathDrawingMode org_xmlvm_iphone_CGPathDrawingMode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGPathDrawingMode 6

void __INIT_org_xmlvm_iphone_CGPathDrawingMode();
void __INIT_IMPL_org_xmlvm_iphone_CGPathDrawingMode();
void __DELETE_org_xmlvm_iphone_CGPathDrawingMode(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGPathDrawingMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPathDrawingMode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPathDrawingMode();
JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathFill();
void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathFill(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathEOFill();
void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathEOFill(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathStroke();
void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathStroke(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathFillStroke();
void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathFillStroke(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGPathDrawingMode_GET_kCGPathEOFillStroke();
void org_xmlvm_iphone_CGPathDrawingMode_PUT_kCGPathEOFillStroke(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGPathDrawingMode \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGPathDrawingMode \


#endif
