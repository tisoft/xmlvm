#ifndef __ORG_XMLVM_IPHONE_UIUSERINTERFACEIDIOM__
#define __ORG_XMLVM_IPHONE_UIUSERINTERFACEIDIOM__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIUserInterfaceIdiom
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIUserInterfaceIdiom, 11)

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIUserInterfaceIdiom 11

void __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIUserInterfaceIdiom();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIUserInterfaceIdiom();
JAVA_INT org_xmlvm_iphone_UIUserInterfaceIdiom_GET_Phone();
void org_xmlvm_iphone_UIUserInterfaceIdiom_PUT_Phone(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIUserInterfaceIdiom_GET_Pad();
void org_xmlvm_iphone_UIUserInterfaceIdiom_PUT_Pad(JAVA_INT v);
void org_xmlvm_iphone_UIUserInterfaceIdiom___INIT___(JAVA_OBJECT me);

#endif
