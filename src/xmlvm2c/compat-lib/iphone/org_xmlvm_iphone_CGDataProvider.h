#ifndef __ORG_XMLVM_IPHONE_CGDATAPROVIDER__
#define __ORG_XMLVM_IPHONE_CGDATAPROVIDER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGDataProvider)
#endif
// Class declarations for org.xmlvm.iphone.CGDataProvider
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGDataProvider, 14)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGDataProvider
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGDataProvider \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGDataProvider \
    } org_xmlvm_iphone_CGDataProvider

struct org_xmlvm_iphone_CGDataProvider {
    __TIB_DEFINITION_org_xmlvm_iphone_CGDataProvider* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGDataProvider;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGDataProvider
typedef struct org_xmlvm_iphone_CGDataProvider org_xmlvm_iphone_CGDataProvider;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGDataProvider 14

void __INIT_org_xmlvm_iphone_CGDataProvider();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGDataProvider();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGDataProvider();
JAVA_OBJECT org_xmlvm_iphone_CGDataProvider_providerToPath___java_lang_String(JAVA_OBJECT n1);

#endif
