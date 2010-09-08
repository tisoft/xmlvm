#ifndef __ORG_XMLVM_IPHONE_NSNUMBERFORMATTER__
#define __ORG_XMLVM_IPHONE_NSNUMBERFORMATTER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.NSNumberFormatter
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSNumberFormatter, 18)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNumberFormatter
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSNumberFormatter \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNumberFormatter \
    } org_xmlvm_iphone_NSNumberFormatter

struct org_xmlvm_iphone_NSNumberFormatter {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSNumberFormatter* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSNumberFormatter;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNumberFormatter
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSNumberFormatter
typedef struct org_xmlvm_iphone_NSNumberFormatter org_xmlvm_iphone_NSNumberFormatter;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSNumberFormatter 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSNumberFormatter_numberStyle__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int 17

void __INIT_org_xmlvm_iphone_NSNumberFormatter();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNumberFormatter();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNumberFormatter();
void org_xmlvm_iphone_NSNumberFormatter___INIT___(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 15
JAVA_INT org_xmlvm_iphone_NSNumberFormatter_numberStyle__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_INT org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int(JAVA_OBJECT me, JAVA_INT n1);

#endif
