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

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLLocationCoordinate2D
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CLLocationCoordinate2D \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_DOUBLE latitude_; \
        JAVA_DOUBLE longitude_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CLLocationCoordinate2D \
    } org_xmlvm_iphone_CLLocationCoordinate2D

struct org_xmlvm_iphone_CLLocationCoordinate2D {
    __TIB_DEFINITION_org_xmlvm_iphone_CLLocationCoordinate2D* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CLLocationCoordinate2D;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CLLocationCoordinate2D
typedef struct org_xmlvm_iphone_CLLocationCoordinate2D org_xmlvm_iphone_CLLocationCoordinate2D;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CLLocationCoordinate2D 14

void __INIT_org_xmlvm_iphone_CLLocationCoordinate2D();
void __DELETE_org_xmlvm_iphone_CLLocationCoordinate2D(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocationCoordinate2D();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocationCoordinate2D();
void org_xmlvm_iphone_CLLocationCoordinate2D___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2);

#endif
