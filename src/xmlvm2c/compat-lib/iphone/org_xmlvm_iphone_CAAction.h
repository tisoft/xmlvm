#ifndef __ORG_XMLVM_IPHONE_CAACTION__
#define __ORG_XMLVM_IPHONE_CAACTION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Map
#define XMLVM_FORWARD_DECL_java_util_Map
XMLVM_FORWARD_DECL(java_util_Map)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif

XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CAAction, 0, 0)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAction_3ARRAY;
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAction
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAction
typedef struct org_xmlvm_iphone_CAAction org_xmlvm_iphone_CAAction;
#endif

void __INIT_org_xmlvm_iphone_CAAction();
void __INIT_IMPL_org_xmlvm_iphone_CAAction();

#endif
