#ifndef __ORG_XMLVM_IPHONE_CGBITMAPCONTEXT__
#define __ORG_XMLVM_IPHONE_CGBITMAPCONTEXT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_CGContext.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapContext
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGBitmapContext)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImage
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImage
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGImage)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGContext)
#endif
// Class declarations for org.xmlvm.iphone.CGBitmapContext
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGBitmapContext, 36)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_CGContext; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext \
    } org_xmlvm_iphone_CGBitmapContext

struct org_xmlvm_iphone_CGBitmapContext {
    __CLASS_DEFINITION_org_xmlvm_iphone_CGBitmapContext* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGBitmapContext
typedef struct org_xmlvm_iphone_CGBitmapContext org_xmlvm_iphone_CGBitmapContext;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGBitmapContext 36
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGBitmapContext_release__ 12

void __INIT_org_xmlvm_iphone_CGBitmapContext();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGBitmapContext();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext();
JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int_org_xmlvm_iphone_CGImage(JAVA_INT n1, JAVA_INT n2, JAVA_OBJECT n3);
JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int(JAVA_INT n1, JAVA_INT n2);
// Vtable index: 12
void org_xmlvm_iphone_CGBitmapContext_release__(JAVA_OBJECT me);

#endif
