#ifndef __ORG_XMLVM_IPHONE_CGSIZE__
#define __ORG_XMLVM_IPHONE_CGSIZE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CGSize
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGSize, 14)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGSize;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGSize_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGSize
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGSize \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_FLOAT width_; \
        JAVA_FLOAT height_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGSize \
    } org_xmlvm_iphone_CGSize

struct org_xmlvm_iphone_CGSize {
    __TIB_DEFINITION_org_xmlvm_iphone_CGSize* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGSize;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
typedef struct org_xmlvm_iphone_CGSize org_xmlvm_iphone_CGSize;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGSize 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGSize_toString__ 4
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CGSize_equals___java_lang_Object 2

void __INIT_org_xmlvm_iphone_CGSize();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGSize();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGSize();
void org_xmlvm_iphone_CGSize___INIT____org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_CGSize___INIT____float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 4
JAVA_OBJECT org_xmlvm_iphone_CGSize_toString__(JAVA_OBJECT me);
// Vtable index: 2
JAVA_BOOLEAN org_xmlvm_iphone_CGSize_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
