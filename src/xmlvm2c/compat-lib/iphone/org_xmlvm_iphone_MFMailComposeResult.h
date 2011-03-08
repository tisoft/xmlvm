#ifndef __ORG_XMLVM_IPHONE_MFMAILCOMPOSERESULT__
#define __ORG_XMLVM_IPHONE_MFMAILCOMPOSERESULT__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.MFMailComposeResult
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MFMailComposeResult, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeResult;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeResult_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MFMailComposeResult
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MFMailComposeResult \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MFMailComposeResult \
    } org_xmlvm_iphone_MFMailComposeResult

struct org_xmlvm_iphone_MFMailComposeResult {
    __TIB_DEFINITION_org_xmlvm_iphone_MFMailComposeResult* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MFMailComposeResult;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MFMailComposeResult
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MFMailComposeResult
typedef struct org_xmlvm_iphone_MFMailComposeResult org_xmlvm_iphone_MFMailComposeResult;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MFMailComposeResult 11

void __INIT_org_xmlvm_iphone_MFMailComposeResult();
void __DELETE_org_xmlvm_iphone_MFMailComposeResult(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MFMailComposeResult(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMailComposeResult();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeResult();
JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Cancelled();
void org_xmlvm_iphone_MFMailComposeResult_PUT_Cancelled(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Saved();
void org_xmlvm_iphone_MFMailComposeResult_PUT_Saved(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Sent();
void org_xmlvm_iphone_MFMailComposeResult_PUT_Sent(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Failed();
void org_xmlvm_iphone_MFMailComposeResult_PUT_Failed(JAVA_INT v);

#endif
