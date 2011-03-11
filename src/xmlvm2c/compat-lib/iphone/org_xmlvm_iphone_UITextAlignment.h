#ifndef __ORG_XMLVM_IPHONE_UITEXTALIGNMENT__
#define __ORG_XMLVM_IPHONE_UITEXTALIGNMENT__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UITextAlignment
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITextAlignment, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextAlignment;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITextAlignment_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextAlignment
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITextAlignment \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITextAlignment \
    } org_xmlvm_iphone_UITextAlignment

struct org_xmlvm_iphone_UITextAlignment {
    __TIB_DEFINITION_org_xmlvm_iphone_UITextAlignment* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITextAlignment;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextAlignment
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITextAlignment
typedef struct org_xmlvm_iphone_UITextAlignment org_xmlvm_iphone_UITextAlignment;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITextAlignment 11

void __INIT_org_xmlvm_iphone_UITextAlignment();
void __INIT_IMPL_org_xmlvm_iphone_UITextAlignment();
void __DELETE_org_xmlvm_iphone_UITextAlignment(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITextAlignment(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITextAlignment();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITextAlignment();
JAVA_INT org_xmlvm_iphone_UITextAlignment_GET_Left();
void org_xmlvm_iphone_UITextAlignment_PUT_Left(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITextAlignment_GET_Center();
void org_xmlvm_iphone_UITextAlignment_PUT_Center(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITextAlignment_GET_Right();
void org_xmlvm_iphone_UITextAlignment_PUT_Right(JAVA_INT v);

#endif
