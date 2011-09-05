#ifndef __ORG_XMLVM_IPHONE_MESSAGECOMPOSERESULT__
#define __ORG_XMLVM_IPHONE_MESSAGECOMPOSERESULT__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.MessageComposeResult
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MessageComposeResult, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_MessageComposeResult)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MessageComposeResult;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MessageComposeResult_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MessageComposeResult_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MessageComposeResult_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MessageComposeResult
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MessageComposeResult \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MessageComposeResult \
    } org_xmlvm_iphone_MessageComposeResult

struct org_xmlvm_iphone_MessageComposeResult {
    __TIB_DEFINITION_org_xmlvm_iphone_MessageComposeResult* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MessageComposeResult;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MessageComposeResult
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MessageComposeResult
typedef struct org_xmlvm_iphone_MessageComposeResult org_xmlvm_iphone_MessageComposeResult;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MessageComposeResult 6

void __INIT_org_xmlvm_iphone_MessageComposeResult();
void __INIT_IMPL_org_xmlvm_iphone_MessageComposeResult();
void __DELETE_org_xmlvm_iphone_MessageComposeResult(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MessageComposeResult(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MessageComposeResult();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MessageComposeResult();
JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Cancelled();
void org_xmlvm_iphone_MessageComposeResult_PUT_Cancelled(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Sent();
void org_xmlvm_iphone_MessageComposeResult_PUT_Sent(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MessageComposeResult_GET_Failed();
void org_xmlvm_iphone_MessageComposeResult_PUT_Failed(JAVA_INT v);

#endif
