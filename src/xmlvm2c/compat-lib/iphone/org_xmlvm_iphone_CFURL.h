#ifndef __ORG_XMLVM_IPHONE_CFURL__
#define __ORG_XMLVM_IPHONE_CFURL__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CFType.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFAllocator
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFAllocator
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CFAllocator)
#endif
// Class declarations for org.xmlvm.iphone.CFURL
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CFURL, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CFURL)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFURL;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFURL_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFURL_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFURL_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CFURL
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CFURL \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CFType; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CFURL \
    } org_xmlvm_iphone_CFURL

struct org_xmlvm_iphone_CFURL {
    __TIB_DEFINITION_org_xmlvm_iphone_CFURL* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CFURL;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFURL
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFURL
typedef struct org_xmlvm_iphone_CFURL org_xmlvm_iphone_CFURL;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CFURL 8

void __INIT_org_xmlvm_iphone_CFURL();
void __INIT_IMPL_org_xmlvm_iphone_CFURL();
void __DELETE_org_xmlvm_iphone_CFURL(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFURL(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CFURL();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CFURL();
void org_xmlvm_iphone_CFURL___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CFURL_createFromFileSystemRepresentation___org_xmlvm_iphone_CFAllocator_byte_1ARRAY_byte(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BYTE n3);

#endif
