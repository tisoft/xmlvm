#ifndef __ORG_XMLVM_IPHONE_MKMAPRECT__
#define __ORG_XMLVM_IPHONE_MKMAPRECT__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapPoint
XMLVM_FORWARD_DECL(org_xmlvm_iphone_MKMapPoint)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_MKMapSize)
#endif
// Class declarations for org.xmlvm.iphone.MKMapRect
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKMapRect, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapRect
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapRect \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT origin_; \
        JAVA_OBJECT size_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapRect \
    } org_xmlvm_iphone_MKMapRect

struct org_xmlvm_iphone_MKMapRect {
    __CLASS_DEFINITION_org_xmlvm_iphone_MKMapRect* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapRect;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapRect
typedef struct org_xmlvm_iphone_MKMapRect org_xmlvm_iphone_MKMapRect;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKMapRect 14

void __INIT_org_xmlvm_iphone_MKMapRect();
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapRect();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapRect();
void org_xmlvm_iphone_MKMapRect___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4);

#endif
