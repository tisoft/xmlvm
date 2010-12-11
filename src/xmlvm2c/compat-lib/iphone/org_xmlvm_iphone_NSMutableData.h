#ifndef __ORG_XMLVM_IPHONE_NSMUTABLEDATA__
#define __ORG_XMLVM_IPHONE_NSMUTABLEDATA__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSData
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSData)
#endif
// Class declarations for org.xmlvm.iphone.NSMutableData
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSMutableData, 21)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSMutableData
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSMutableData \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSData; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSMutableData \
    } org_xmlvm_iphone_NSMutableData

struct org_xmlvm_iphone_NSMutableData {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSMutableData* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSMutableData;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableData
typedef struct org_xmlvm_iphone_NSMutableData org_xmlvm_iphone_NSMutableData;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSMutableData 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSMutableData_byteCount__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSMutableData_getByte___int 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSMutableData_appendByte___int 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE 20

void __INIT_org_xmlvm_iphone_NSMutableData();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSMutableData();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSMutableData();
void org_xmlvm_iphone_NSMutableData___INIT___(JAVA_OBJECT me);
// Vtable index: 17
JAVA_INT org_xmlvm_iphone_NSMutableData_byteCount__(JAVA_OBJECT me);
// Vtable index: 18
JAVA_INT org_xmlvm_iphone_NSMutableData_getByte___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 19
void org_xmlvm_iphone_NSMutableData_appendByte___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 20
void org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
