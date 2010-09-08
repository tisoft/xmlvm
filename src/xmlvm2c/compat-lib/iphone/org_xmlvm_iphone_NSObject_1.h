#ifndef __ORG_XMLVM_IPHONE_NSOBJECT_1__
#define __ORG_XMLVM_IPHONE_NSOBJECT_1__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_Object.h"
#include "java_lang_Runnable.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Runnable
#define XMLVM_FORWARD_DECL_java_lang_Runnable
XMLVM_FORWARD_DECL(java_lang_Runnable)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSObject$1
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSObject_1, 12)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject_1
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject_1 \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject_1 \
    } org_xmlvm_iphone_NSObject_1

struct org_xmlvm_iphone_NSObject_1 {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSObject_1* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject_1;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject_1
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject_1
typedef struct org_xmlvm_iphone_NSObject_1 org_xmlvm_iphone_NSObject_1;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSObject_1 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_1_run__ 11

void __INIT_org_xmlvm_iphone_NSObject_1();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject_1();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSObject_1();
void org_xmlvm_iphone_NSObject_1___INIT____java_lang_Object_java_lang_Object_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
// Vtable index: 11
void org_xmlvm_iphone_NSObject_1_run__(JAVA_OBJECT me);

#endif
