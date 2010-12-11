#ifndef __ORG_XMLVM_IPHONE_MKCOORDINATESPAN__
#define __ORG_XMLVM_IPHONE_MKCOORDINATESPAN__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.MKCoordinateSpan
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKCoordinateSpan, 14)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MKCoordinateSpan
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_MKCoordinateSpan \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_DOUBLE latitudeDelta_; \
        JAVA_DOUBLE longitudeDelta_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_MKCoordinateSpan \
    } org_xmlvm_iphone_MKCoordinateSpan

struct org_xmlvm_iphone_MKCoordinateSpan {
    __CLASS_DEFINITION_org_xmlvm_iphone_MKCoordinateSpan* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_MKCoordinateSpan;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKCoordinateSpan
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKCoordinateSpan
typedef struct org_xmlvm_iphone_MKCoordinateSpan org_xmlvm_iphone_MKCoordinateSpan;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKCoordinateSpan 14

void __INIT_org_xmlvm_iphone_MKCoordinateSpan();
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKCoordinateSpan();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKCoordinateSpan();
void org_xmlvm_iphone_MKCoordinateSpan___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2);

#endif
