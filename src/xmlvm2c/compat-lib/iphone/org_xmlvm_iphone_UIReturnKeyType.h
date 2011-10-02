#ifndef __ORG_XMLVM_IPHONE_UIRETURNKEYTYPE__
#define __ORG_XMLVM_IPHONE_UIRETURNKEYTYPE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIReturnKeyType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIReturnKeyType, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIReturnKeyType)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIReturnKeyType;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIReturnKeyType_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIReturnKeyType_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIReturnKeyType_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIReturnKeyType
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIReturnKeyType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIReturnKeyType \
    } org_xmlvm_iphone_UIReturnKeyType

struct org_xmlvm_iphone_UIReturnKeyType {
    __TIB_DEFINITION_org_xmlvm_iphone_UIReturnKeyType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIReturnKeyType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIReturnKeyType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIReturnKeyType
typedef struct org_xmlvm_iphone_UIReturnKeyType org_xmlvm_iphone_UIReturnKeyType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIReturnKeyType 6

void __INIT_org_xmlvm_iphone_UIReturnKeyType();
void __INIT_IMPL_org_xmlvm_iphone_UIReturnKeyType();
void __DELETE_org_xmlvm_iphone_UIReturnKeyType(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIReturnKeyType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIReturnKeyType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIReturnKeyType();
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Default();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Go();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Go(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Google();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Google(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Join();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Join(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Next();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Next(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Route();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Route(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Search();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Search(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Send();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Send(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Yahoo();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Yahoo(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Done();
void org_xmlvm_iphone_UIReturnKeyType_PUT_Done(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_EmergencyCall();
void org_xmlvm_iphone_UIReturnKeyType_PUT_EmergencyCall(JAVA_INT v);

#endif
