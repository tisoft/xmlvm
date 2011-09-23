#ifndef __ORG_XMLVM_IPHONE_UIBUTTONTYPE__
#define __ORG_XMLVM_IPHONE_UIBUTTONTYPE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIButtonType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIButtonType, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIButtonType)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButtonType;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButtonType_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButtonType_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButtonType_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIButtonType
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIButtonType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIButtonType \
    } org_xmlvm_iphone_UIButtonType

struct org_xmlvm_iphone_UIButtonType {
    __TIB_DEFINITION_org_xmlvm_iphone_UIButtonType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIButtonType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIButtonType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIButtonType
typedef struct org_xmlvm_iphone_UIButtonType org_xmlvm_iphone_UIButtonType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIButtonType 6

void __INIT_org_xmlvm_iphone_UIButtonType();
void __INIT_IMPL_org_xmlvm_iphone_UIButtonType();
void __DELETE_org_xmlvm_iphone_UIButtonType(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIButtonType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIButtonType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIButtonType();
JAVA_INT org_xmlvm_iphone_UIButtonType_GET_Custom();
void org_xmlvm_iphone_UIButtonType_PUT_Custom(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIButtonType_GET_RoundedRect();
void org_xmlvm_iphone_UIButtonType_PUT_RoundedRect(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIButtonType_GET_DetailDisclosure();
void org_xmlvm_iphone_UIButtonType_PUT_DetailDisclosure(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIButtonType_GET_InfoLight();
void org_xmlvm_iphone_UIButtonType_PUT_InfoLight(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIButtonType_GET_InfoDark();
void org_xmlvm_iphone_UIButtonType_PUT_InfoDark(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIButtonType_GET_ContactAdd();
void org_xmlvm_iphone_UIButtonType_PUT_ContactAdd(JAVA_INT v);

#endif
