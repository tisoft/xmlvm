#ifndef __ORG_XMLVM_IPHONE_UITEXTAUTOCAPITALIZATIONTYPE__
#define __ORG_XMLVM_IPHONE_UITEXTAUTOCAPITALIZATIONTYPE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UITextAutocapitalizationType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITextAutocapitalizationType, 11)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextAutocapitalizationType
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITextAutocapitalizationType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextAutocapitalizationType \
    } org_xmlvm_iphone_UITextAutocapitalizationType

struct org_xmlvm_iphone_UITextAutocapitalizationType {
    __TIB_DEFINITION_org_xmlvm_iphone_UITextAutocapitalizationType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITextAutocapitalizationType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextAutocapitalizationType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextAutocapitalizationType
typedef struct org_xmlvm_iphone_UITextAutocapitalizationType org_xmlvm_iphone_UITextAutocapitalizationType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITextAutocapitalizationType 11

void __INIT_org_xmlvm_iphone_UITextAutocapitalizationType();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextAutocapitalizationType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextAutocapitalizationType();
JAVA_INT org_xmlvm_iphone_UITextAutocapitalizationType_GET_None();
void org_xmlvm_iphone_UITextAutocapitalizationType_PUT_None(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITextAutocapitalizationType_GET_Words();
void org_xmlvm_iphone_UITextAutocapitalizationType_PUT_Words(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITextAutocapitalizationType_GET_Sentences();
void org_xmlvm_iphone_UITextAutocapitalizationType_PUT_Sentences(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITextAutocapitalizationType_GET_AllCharacters();
void org_xmlvm_iphone_UITextAutocapitalizationType_PUT_AllCharacters(JAVA_INT v);
void org_xmlvm_iphone_UITextAutocapitalizationType___INIT___(JAVA_OBJECT me);

#endif
