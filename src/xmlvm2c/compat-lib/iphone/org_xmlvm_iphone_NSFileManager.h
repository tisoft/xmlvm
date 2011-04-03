#ifndef __ORG_XMLVM_IPHONE_NSFILEMANAGER__
#define __ORG_XMLVM_IPHONE_NSFILEMANAGER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSErrorHolder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSErrorHolder)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Map
#define XMLVM_FORWARD_DECL_java_util_Map
XMLVM_FORWARD_DECL(java_util_Map)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSFileManager
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSFileManager, 12, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSFileManager)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSFileManager_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSFileManager
//XMLVM_END_DECLARATIONS

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSFileManager 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder 11

void __INIT_org_xmlvm_iphone_NSFileManager();
void __INIT_IMPL_org_xmlvm_iphone_NSFileManager();
void __DELETE_org_xmlvm_iphone_NSFileManager(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSFileManager(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSFileManager();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSFileManager();
JAVA_OBJECT org_xmlvm_iphone_NSFileManager_defaultManager__();
// Vtable index: 9
JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 10
JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_createDirectoryAtPath___java_lang_String_boolean_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_OBJECT n3);
// Vtable index: 11
JAVA_OBJECT org_xmlvm_iphone_NSFileManager_contentsOfDirectoryAtPath___java_lang_String_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_NSFileManager___CLINIT_();

#endif
