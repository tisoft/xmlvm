#ifndef __ORG_XMLVM_IPHONE_UIACCELERATION__
#define __ORG_XMLVM_IPHONE_UIACCELERATION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.UIAcceleration
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIAcceleration, 17)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAcceleration
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIAcceleration \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAcceleration \
    } org_xmlvm_iphone_UIAcceleration

struct org_xmlvm_iphone_UIAcceleration {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIAcceleration* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIAcceleration;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAcceleration
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAcceleration
typedef struct org_xmlvm_iphone_UIAcceleration org_xmlvm_iphone_UIAcceleration;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIAcceleration 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAcceleration_x__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAcceleration_y__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAcceleration_z__ 16

void __INIT_org_xmlvm_iphone_UIAcceleration();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAcceleration();
void org_xmlvm_iphone_UIAcceleration___INIT____double_double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3);
// Vtable index: 14
JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_x__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_y__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_z__(JAVA_OBJECT me);

#endif
