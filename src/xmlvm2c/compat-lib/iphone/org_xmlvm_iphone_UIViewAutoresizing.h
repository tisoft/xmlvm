#ifndef __ORG_XMLVM_IPHONE_UIVIEWAUTORESIZING__
#define __ORG_XMLVM_IPHONE_UIVIEWAUTORESIZING__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIViewAutoresizing
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIViewAutoresizing, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAutoresizing;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAutoresizing_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAutoresizing
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAutoresizing \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAutoresizing \
    } org_xmlvm_iphone_UIViewAutoresizing

struct org_xmlvm_iphone_UIViewAutoresizing {
    __TIB_DEFINITION_org_xmlvm_iphone_UIViewAutoresizing* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAutoresizing;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAutoresizing
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAutoresizing
typedef struct org_xmlvm_iphone_UIViewAutoresizing org_xmlvm_iphone_UIViewAutoresizing;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIViewAutoresizing 11

void __INIT_org_xmlvm_iphone_UIViewAutoresizing();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAutoresizing();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAutoresizing();
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_None();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_None(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleLeftMargin();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleLeftMargin(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleWidth();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleWidth(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleRightMargin();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleRightMargin(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleTopMargin();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleTopMargin(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleHeight();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleHeight(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAutoresizing_GET_FlexibleBottomMargin();
void org_xmlvm_iphone_UIViewAutoresizing_PUT_FlexibleBottomMargin(JAVA_INT v);
void org_xmlvm_iphone_UIViewAutoresizing___INIT___(JAVA_OBJECT me);

#endif
