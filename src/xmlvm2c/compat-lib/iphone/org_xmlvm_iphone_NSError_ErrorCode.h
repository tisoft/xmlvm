#ifndef __ORG_XMLVM_IPHONE_NSERROR_ERRORCODE__
#define __ORG_XMLVM_IPHONE_NSERROR_ERRORCODE__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.NSError$ErrorCode
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSError_ErrorCode, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSError_ErrorCode)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_ErrorCode;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_ErrorCode_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_ErrorCode_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_ErrorCode_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSError_ErrorCode
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSError_ErrorCode \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSError_ErrorCode \
    } org_xmlvm_iphone_NSError_ErrorCode

struct org_xmlvm_iphone_NSError_ErrorCode {
    __TIB_DEFINITION_org_xmlvm_iphone_NSError_ErrorCode* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSError_ErrorCode;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError_ErrorCode
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSError_ErrorCode
typedef struct org_xmlvm_iphone_NSError_ErrorCode org_xmlvm_iphone_NSError_ErrorCode;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSError_ErrorCode 6

void __INIT_org_xmlvm_iphone_NSError_ErrorCode();
void __INIT_IMPL_org_xmlvm_iphone_NSError_ErrorCode();
void __DELETE_org_xmlvm_iphone_NSError_ErrorCode(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_ErrorCode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSError_ErrorCode();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSError_ErrorCode();
void org_xmlvm_iphone_NSError_ErrorCode___INIT___(JAVA_OBJECT me);

#endif
