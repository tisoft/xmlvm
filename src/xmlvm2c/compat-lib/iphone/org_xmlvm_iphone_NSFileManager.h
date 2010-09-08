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
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSFileManager
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSFileManager, 15)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSFileManager
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_NSFileManager \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_NSFileManager \
    } org_xmlvm_iphone_NSFileManager

struct org_xmlvm_iphone_NSFileManager {
    __CLASS_DEFINITION_org_xmlvm_iphone_NSFileManager* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSFileManager;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSFileManager
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSFileManager
typedef struct org_xmlvm_iphone_NSFileManager org_xmlvm_iphone_NSFileManager;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSFileManager 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String 14

void __INIT_org_xmlvm_iphone_NSFileManager();
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSFileManager();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSFileManager();
void org_xmlvm_iphone_NSFileManager___CLINIT_();
JAVA_OBJECT org_xmlvm_iphone_NSFileManager_defaultManager__();
// Vtable index: 14
JAVA_BOOLEAN org_xmlvm_iphone_NSFileManager_fileExistsAtPath___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
