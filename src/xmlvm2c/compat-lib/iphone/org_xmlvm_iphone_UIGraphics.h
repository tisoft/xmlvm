#ifndef __ORG_XMLVM_IPHONE_UIGRAPHICS__
#define __ORG_XMLVM_IPHONE_UIGRAPHICS__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGContext)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIImage)
#endif
// Class declarations for org.xmlvm.iphone.UIGraphics
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIGraphics, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIGraphics)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGraphics;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGraphics_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGraphics_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGraphics_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIGraphics
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIGraphics \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIGraphics \
    } org_xmlvm_iphone_UIGraphics

struct org_xmlvm_iphone_UIGraphics {
    __TIB_DEFINITION_org_xmlvm_iphone_UIGraphics* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIGraphics;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGraphics
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGraphics
typedef struct org_xmlvm_iphone_UIGraphics org_xmlvm_iphone_UIGraphics;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIGraphics 6

void __INIT_org_xmlvm_iphone_UIGraphics();
void __INIT_IMPL_org_xmlvm_iphone_UIGraphics();
void __DELETE_org_xmlvm_iphone_UIGraphics(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGraphics(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIGraphics();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIGraphics();
JAVA_OBJECT org_xmlvm_iphone_UIGraphics_getCurrentContext__();
void org_xmlvm_iphone_UIGraphics_pushContext___org_xmlvm_iphone_CGContext(JAVA_OBJECT n1);
void org_xmlvm_iphone_UIGraphics_popContext__();
void org_xmlvm_iphone_UIGraphics_beginImageContext___org_xmlvm_iphone_CGSize(JAVA_OBJECT n1);
void org_xmlvm_iphone_UIGraphics_beginImageContextWithOptions___org_xmlvm_iphone_CGSize_boolean_float(JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_FLOAT n3);
JAVA_OBJECT org_xmlvm_iphone_UIGraphics_getImageFromCurrentImageContext__();
void org_xmlvm_iphone_UIGraphics_endImageContext__();
void org_xmlvm_iphone_UIGraphics___CLINIT_();

#endif
