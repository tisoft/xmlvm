#ifndef __ORG_XMLVM_IPHONE_NSFILEMANAGER__
#define __ORG_XMLVM_IPHONE_NSFILEMANAGER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSFileManager
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSFileManager
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSFileManager)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_List
#define XMLVM_FORWARD_DECL_java_util_List
XMLVM_FORWARD_DECL(java_util_List)
#endif
// Class declarations for org.xmlvm.iphone.NSFileManager
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSFileManager, 17)

//XMLVM_BEGIN_FIELDS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSFileManager
//XMLVM_END_FIELDS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSFileManager \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSFileManager \
    } org_xmlvm_iphone_NSFileManager

struct org_xmlvm_iphone_NSFileManager {
    __TIB_DEFINITION_org_xmlvm_iphone_NSFileManager* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSFileManager;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSFileManager
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSFileManager
typedef struct org_xmlvm_iphone_NSFileManager org_xmlvm_iphone_NSFileManager;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSFileManager 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder 16

void __INIT_org_xmlvm_iphone_NSFileManager();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSFileManager();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSFileManager();
JAVA_OBJECT org_xmlvm_iphone_NSFileManager_defaultManager__();
// Vtable index: 14
JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_OBJECT n3);
// Vtable index: 16
JAVA_OBJECT org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_NSFileManager___CLINIT_();

#endif
