#ifndef __ORG_XMLVM_IPHONE_CGBITMAPCONTEXT__
#define __ORG_XMLVM_IPHONE_CGBITMAPCONTEXT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_CGContext.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapContext
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGBitmapContext)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGContext)
#endif
// Class declarations for org.xmlvm.iphone.CGBitmapContext
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGBitmapContext, 42)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGBitmapContext
//XMLVM_END_FIELDS

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGBitmapContext 42

void __INIT_org_xmlvm_iphone_CGBitmapContext();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGBitmapContext();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext();
JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int_org_xmlvm_iphone_CGImage(JAVA_INT n1, JAVA_INT n2, JAVA_OBJECT n3);
JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int(JAVA_INT n1, JAVA_INT n2);

#endif
