#ifndef __ORG_XMLVM_IPHONE_UIUSERINTERFACEIDIOM__
#define __ORG_XMLVM_IPHONE_UIUSERINTERFACEIDIOM__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIUserInterfaceIdiom
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIUserInterfaceIdiom, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIUserInterfaceIdiom)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIUserInterfaceIdiom
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIUserInterfaceIdiom \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIUserInterfaceIdiom \
    } org_xmlvm_iphone_UIUserInterfaceIdiom

struct org_xmlvm_iphone_UIUserInterfaceIdiom {
    __TIB_DEFINITION_org_xmlvm_iphone_UIUserInterfaceIdiom* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIUserInterfaceIdiom;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIUserInterfaceIdiom
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIUserInterfaceIdiom
typedef struct org_xmlvm_iphone_UIUserInterfaceIdiom org_xmlvm_iphone_UIUserInterfaceIdiom;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIUserInterfaceIdiom 6

void __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
void __INIT_IMPL_org_xmlvm_iphone_UIUserInterfaceIdiom();
void __DELETE_org_xmlvm_iphone_UIUserInterfaceIdiom(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIUserInterfaceIdiom(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIUserInterfaceIdiom();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIUserInterfaceIdiom();
JAVA_INT org_xmlvm_iphone_UIUserInterfaceIdiom_GET_Phone();
void org_xmlvm_iphone_UIUserInterfaceIdiom_PUT_Phone(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIUserInterfaceIdiom_GET_Pad();
void org_xmlvm_iphone_UIUserInterfaceIdiom_PUT_Pad(JAVA_INT v);

#endif
