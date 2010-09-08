#ifndef __ORG_XMLVM_IPHONE_NSNOTIFICATION__
#define __ORG_XMLVM_IPHONE_NSNOTIFICATION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.NSNotification
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNotification, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNotification
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSNotification \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNotification \
    } org_xmlvm_iphone_NSNotification

struct org_xmlvm_iphone_NSNotification {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSNotification* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSNotification;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNotification
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNotification
typedef struct org_xmlvm_iphone_NSNotification org_xmlvm_iphone_NSNotification;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSNotification 14

void __INIT_org_xmlvm_iphone_NSNotification();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNotification();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNotification();
void org_xmlvm_iphone_NSNotification___INIT___(JAVA_OBJECT me);

#endif
