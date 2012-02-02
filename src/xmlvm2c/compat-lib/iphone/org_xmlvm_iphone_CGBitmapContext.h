#ifndef __ORG_XMLVM_IPHONE_CGBITMAPCONTEXT__
#define __ORG_XMLVM_IPHONE_CGBITMAPCONTEXT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CGContext.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_nio_ByteBuffer
#define XMLVM_FORWARD_DECL_java_nio_ByteBuffer
XMLVM_FORWARD_DECL(java_nio_ByteBuffer)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGColorSpace
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGColorSpace
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGColorSpace)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGImage)
#endif
// Class declarations for org.xmlvm.iphone.CGBitmapContext
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGBitmapContext, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGBitmapContext)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapContext
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapContext \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CGContext; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapContext \
    } org_xmlvm_iphone_CGBitmapContext

struct org_xmlvm_iphone_CGBitmapContext {
    __TIB_DEFINITION_org_xmlvm_iphone_CGBitmapContext* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapContext;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapContext
typedef struct org_xmlvm_iphone_CGBitmapContext org_xmlvm_iphone_CGBitmapContext;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGBitmapContext 8

void __INIT_org_xmlvm_iphone_CGBitmapContext();
void __INIT_IMPL_org_xmlvm_iphone_CGBitmapContext();
void __DELETE_org_xmlvm_iphone_CGBitmapContext(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGBitmapContext();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext();
JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_create___java_nio_ByteBuffer_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_INT n5, JAVA_OBJECT n6, JAVA_INT n7);
JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_create___int_1ARRAY_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_INT n5, JAVA_OBJECT n6, JAVA_INT n7);
JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_create___byte_1ARRAY_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_INT n5, JAVA_OBJECT n6, JAVA_INT n7);
JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createImage__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGBitmapContext \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGContext \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGBitmapContext \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGContext \


#endif
