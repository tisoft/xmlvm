#ifndef __ORG_XMLVM_IPHONE_SKREQUESTDELEGATE__
#define __ORG_XMLVM_IPHONE_SKREQUESTDELEGATE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKRequest
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKRequest
XMLVM_FORWARD_DECL(org_xmlvm_iphone_SKRequest)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSError)
#endif
// Class declarations for org.xmlvm.iphone.SKRequestDelegate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_SKRequestDelegate, 13)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequestDelegate;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequestDelegate_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequestDelegate_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKRequestDelegate_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKRequestDelegate
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_SKRequestDelegate \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_SKRequestDelegate \
    } org_xmlvm_iphone_SKRequestDelegate

struct org_xmlvm_iphone_SKRequestDelegate {
    __TIB_DEFINITION_org_xmlvm_iphone_SKRequestDelegate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_SKRequestDelegate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKRequestDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_SKRequestDelegate
typedef struct org_xmlvm_iphone_SKRequestDelegate org_xmlvm_iphone_SKRequestDelegate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_SKRequestDelegate 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKRequestDelegate_requestDidFailWithError___org_xmlvm_iphone_SKRequest_org_xmlvm_iphone_NSError 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKRequestDelegate_requestDidFinish___org_xmlvm_iphone_SKRequest 12

void __INIT_org_xmlvm_iphone_SKRequestDelegate();
void __INIT_IMPL_org_xmlvm_iphone_SKRequestDelegate();
void __DELETE_org_xmlvm_iphone_SKRequestDelegate(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKRequestDelegate(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_SKRequestDelegate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKRequestDelegate();
void org_xmlvm_iphone_SKRequestDelegate___INIT___(JAVA_OBJECT me);
// Vtable index: 11
void org_xmlvm_iphone_SKRequestDelegate_requestDidFailWithError___org_xmlvm_iphone_SKRequest_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 12
void org_xmlvm_iphone_SKRequestDelegate_requestDidFinish___org_xmlvm_iphone_SKRequest(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
