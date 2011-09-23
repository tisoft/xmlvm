#ifndef __ORG_XMLVM_IPHONE_UIBARSTYLE__
#define __ORG_XMLVM_IPHONE_UIBARSTYLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Preprocessor constants for interfaces:

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIBarStyle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIBarStyle, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIBarStyle)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarStyle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarStyle_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarStyle_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarStyle_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIBarStyle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIBarStyle \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIBarStyle \
    } org_xmlvm_iphone_UIBarStyle

struct org_xmlvm_iphone_UIBarStyle {
    __TIB_DEFINITION_org_xmlvm_iphone_UIBarStyle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIBarStyle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIBarStyle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIBarStyle
typedef struct org_xmlvm_iphone_UIBarStyle org_xmlvm_iphone_UIBarStyle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIBarStyle 6

void __INIT_org_xmlvm_iphone_UIBarStyle();
void __INIT_IMPL_org_xmlvm_iphone_UIBarStyle();
void __DELETE_org_xmlvm_iphone_UIBarStyle(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarStyle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarStyle();
JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_Default();
void org_xmlvm_iphone_UIBarStyle_PUT_Default(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_Black();
void org_xmlvm_iphone_UIBarStyle_PUT_Black(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_BlackOpaque();
void org_xmlvm_iphone_UIBarStyle_PUT_BlackOpaque(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_BlackTranslucent();
void org_xmlvm_iphone_UIBarStyle_PUT_BlackTranslucent(JAVA_INT v);

#endif
