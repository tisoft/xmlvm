#ifndef __ORG_XMLVM_IPHONE_CGLINECAP__
#define __ORG_XMLVM_IPHONE_CGLINECAP__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CGLineCap
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGLineCap, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGLineCap)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLineCap;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLineCap_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLineCap_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLineCap_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGLineCap
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGLineCap \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGLineCap \
    } org_xmlvm_iphone_CGLineCap

struct org_xmlvm_iphone_CGLineCap {
    __TIB_DEFINITION_org_xmlvm_iphone_CGLineCap* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGLineCap;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGLineCap
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGLineCap
typedef struct org_xmlvm_iphone_CGLineCap org_xmlvm_iphone_CGLineCap;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGLineCap 6

void __INIT_org_xmlvm_iphone_CGLineCap();
void __INIT_IMPL_org_xmlvm_iphone_CGLineCap();
void __DELETE_org_xmlvm_iphone_CGLineCap(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLineCap(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGLineCap();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGLineCap();
JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapButt();
void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapButt(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapRound();
void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapRound(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapSquare();
void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapSquare(JAVA_INT v);

#endif
