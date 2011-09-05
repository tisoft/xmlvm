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
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSMutableData, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSMutableData)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableData;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableData_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableData_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableData_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableData
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableData \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSData; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableData \
    } org_xmlvm_iphone_NSMutableData

struct org_xmlvm_iphone_NSMutableData {
    __TIB_DEFINITION_org_xmlvm_iphone_NSMutableData* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSMutableData;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableData
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSMutableData
typedef struct org_xmlvm_iphone_NSMutableData org_xmlvm_iphone_NSMutableData;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSMutableData 6

void __INIT_org_xmlvm_iphone_NSMutableData();
void __INIT_IMPL_org_xmlvm_iphone_NSMutableData();
void __DELETE_org_xmlvm_iphone_NSMutableData(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSMutableData(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSMutableData();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSMutableData();
void org_xmlvm_iphone_NSMutableData___INIT___(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSMutableData_byteCount__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_NSMutableData_getByte___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSMutableData_appendByte___int(JAVA_OBJECT me, JAVA_INT n1);
void org_xmlvm_iphone_NSMutableData_appendBytes___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
