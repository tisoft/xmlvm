#ifndef __ORG_XMLVM_IPHONE_MKMAPSIZE__
#define __ORG_XMLVM_IPHONE_MKMAPSIZE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.MKMapSize
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKMapSize, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapSize
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapSize \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_DOUBLE width_; \
        JAVA_DOUBLE height_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapSize \
    } org_xmlvm_iphone_MKMapSize

struct org_xmlvm_iphone_MKMapSize {
    __CLASS_DEFINITION_org_xmlvm_iphone_MKMapSize* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapSize;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapSize
typedef struct org_xmlvm_iphone_MKMapSize org_xmlvm_iphone_MKMapSize;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKMapSize 14

void __INIT_org_xmlvm_iphone_MKMapSize();
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapSize();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapSize();
void org_xmlvm_iphone_MKMapSize___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2);

#endif
