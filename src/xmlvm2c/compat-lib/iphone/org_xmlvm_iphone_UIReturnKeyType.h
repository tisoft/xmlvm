#ifndef __ORG_XMLVM_IPHONE_UIRETURNKEYTYPE__
#define __ORG_XMLVM_IPHONE_UIRETURNKEYTYPE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIReturnKeyType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIReturnKeyType, 11)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIReturnKeyType
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIReturnKeyType \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIReturnKeyType \
    } org_xmlvm_iphone_UIReturnKeyType

struct org_xmlvm_iphone_UIReturnKeyType {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIReturnKeyType* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIReturnKeyType;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIReturnKeyType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIReturnKeyType
typedef struct org_xmlvm_iphone_UIReturnKeyType org_xmlvm_iphone_UIReturnKeyType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIReturnKeyType 11

void __INIT_org_xmlvm_iphone_UIReturnKeyType();
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
void org_xmlvm_iphone_UIReturnKeyType___INIT___(JAVA_OBJECT me);

#endif
