#ifndef __ORG_XMLVM_IPHONE_CLLOCATIONCOORDINATE2D__
#define __ORG_XMLVM_IPHONE_CLLOCATIONCOORDINATE2D__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.CLLocationCoordinate2D
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CLLocationCoordinate2D, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationCoordinate2D
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationCoordinate2D \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_DOUBLE latitude_; \
        JAVA_DOUBLE longitude_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationCoordinate2D \
    } org_xmlvm_iphone_CLLocationCoordinate2D

struct org_xmlvm_iphone_CLLocationCoordinate2D {
    __CLASS_DEFINITION_org_xmlvm_iphone_CLLocationCoordinate2D* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationCoordinate2D;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
typedef struct org_xmlvm_iphone_CLLocationCoordinate2D org_xmlvm_iphone_CLLocationCoordinate2D;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLLocationCoordinate2D 14

void __INIT_org_xmlvm_iphone_CLLocationCoordinate2D();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocationCoordinate2D();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocationCoordinate2D();
void org_xmlvm_iphone_CLLocationCoordinate2D___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2);

#endif
