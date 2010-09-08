#ifndef __ORG_XMLVM_IPHONE_NSLOCALE__
#define __ORG_XMLVM_IPHONE_NSLOCALE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSLocale)
#endif
// Class declarations for org.xmlvm.iphone.NSLocale
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSLocale, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSLocale
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSLocale \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSLocale \
    } org_xmlvm_iphone_NSLocale

struct org_xmlvm_iphone_NSLocale {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSLocale* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSLocale;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSLocale
typedef struct org_xmlvm_iphone_NSLocale org_xmlvm_iphone_NSLocale;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSLocale 14

void __INIT_org_xmlvm_iphone_NSLocale();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSLocale();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSLocale();
JAVA_OBJECT org_xmlvm_iphone_NSLocale_systemLocale__();
JAVA_OBJECT org_xmlvm_iphone_NSLocale_currentLocale__();

#endif
