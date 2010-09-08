#ifndef __ORG_XMLVM_IPHONE_NSDATE__
#define __ORG_XMLVM_IPHONE_NSDATE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDate)
#endif
// Class declarations for org.xmlvm.iphone.NSDate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSDate, 15)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDate
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSDate \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDate \
    } org_xmlvm_iphone_NSDate

struct org_xmlvm_iphone_NSDate {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSDate* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSDate;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
typedef struct org_xmlvm_iphone_NSDate org_xmlvm_iphone_NSDate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSDate 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__ 14

void __INIT_org_xmlvm_iphone_NSDate();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDate();
JAVA_OBJECT org_xmlvm_iphone_NSDate_date__();
JAVA_OBJECT org_xmlvm_iphone_NSDate_dateWithTimeIntervalSince1970___double(JAVA_DOUBLE n1);
JAVA_OBJECT org_xmlvm_iphone_NSDate_dateWithTimeIntervalSinceReferenceDate___double(JAVA_DOUBLE n1);
// Vtable index: 14
JAVA_DOUBLE org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__(JAVA_OBJECT me);

#endif
