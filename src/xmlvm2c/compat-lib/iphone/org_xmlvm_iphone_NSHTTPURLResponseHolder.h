#ifndef __ORG_XMLVM_IPHONE_NSHTTPURLRESPONSEHOLDER__
#define __ORG_XMLVM_IPHONE_NSHTTPURLRESPONSEHOLDER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.NSHTTPURLResponseHolder
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSHTTPURLResponseHolder, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSHTTPURLResponseHolder)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSHTTPURLResponseHolder
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSHTTPURLResponseHolder \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSHTTPURLResponseHolder \
    } org_xmlvm_iphone_NSHTTPURLResponseHolder

struct org_xmlvm_iphone_NSHTTPURLResponseHolder {
    __TIB_DEFINITION_org_xmlvm_iphone_NSHTTPURLResponseHolder* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSHTTPURLResponseHolder;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponseHolder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSHTTPURLResponseHolder
typedef struct org_xmlvm_iphone_NSHTTPURLResponseHolder org_xmlvm_iphone_NSHTTPURLResponseHolder;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSHTTPURLResponseHolder 7

void __INIT_org_xmlvm_iphone_NSHTTPURLResponseHolder();
void __INIT_IMPL_org_xmlvm_iphone_NSHTTPURLResponseHolder();
void __DELETE_org_xmlvm_iphone_NSHTTPURLResponseHolder(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSHTTPURLResponseHolder(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSHTTPURLResponseHolder();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSHTTPURLResponseHolder();
void org_xmlvm_iphone_NSHTTPURLResponseHolder___INIT___(JAVA_OBJECT me);

#endif
