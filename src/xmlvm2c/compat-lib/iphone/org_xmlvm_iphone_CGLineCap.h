#ifndef __ORG_XMLVM_IPHONE_CGLINECAP__
#define __ORG_XMLVM_IPHONE_CGLINECAP__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.CGLineCap
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGLineCap, 11)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLineCap
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_CGLineCap \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLineCap \
    } org_xmlvm_iphone_CGLineCap

struct org_xmlvm_iphone_CGLineCap {
    __CLASS_DEFINITION_org_xmlvm_iphone_CGLineCap* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_CGLineCap;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGLineCap
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGLineCap
typedef struct org_xmlvm_iphone_CGLineCap org_xmlvm_iphone_CGLineCap;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGLineCap 11

void __INIT_org_xmlvm_iphone_CGLineCap();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGLineCap();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGLineCap();
JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapButt();
void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapButt(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapRound();
void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapRound(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapSquare();
void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapSquare(JAVA_INT v);
void org_xmlvm_iphone_CGLineCap___INIT___(JAVA_OBJECT me);

#endif
