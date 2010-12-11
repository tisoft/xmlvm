#ifndef __ORG_XMLVM_IPHONE_MKMAPPOINT__
#define __ORG_XMLVM_IPHONE_MKMAPPOINT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.MKMapPoint
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKMapPoint, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapPoint
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapPoint \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_DOUBLE x_; \
        JAVA_DOUBLE y_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapPoint \
    } org_xmlvm_iphone_MKMapPoint

struct org_xmlvm_iphone_MKMapPoint {
    __CLASS_DEFINITION_org_xmlvm_iphone_MKMapPoint* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapPoint;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapPoint
typedef struct org_xmlvm_iphone_MKMapPoint org_xmlvm_iphone_MKMapPoint;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKMapPoint 14

void __INIT_org_xmlvm_iphone_MKMapPoint();
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapPoint();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapPoint();
void org_xmlvm_iphone_MKMapPoint___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2);

#endif
