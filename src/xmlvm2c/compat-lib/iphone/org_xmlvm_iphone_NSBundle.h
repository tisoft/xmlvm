#ifndef __ORG_XMLVM_IPHONE_NSBUNDLE__
#define __ORG_XMLVM_IPHONE_NSBUNDLE__

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
// Class declarations for org.xmlvm.iphone.NSBundle
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSBundle, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSBundle)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSBundle;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSBundle_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSBundle_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSBundle_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSBundle
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSBundle \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSBundle \
    } org_xmlvm_iphone_NSBundle

struct org_xmlvm_iphone_NSBundle {
    __TIB_DEFINITION_org_xmlvm_iphone_NSBundle* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSBundle;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSBundle
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSBundle
typedef struct org_xmlvm_iphone_NSBundle org_xmlvm_iphone_NSBundle;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSBundle 6

void __INIT_org_xmlvm_iphone_NSBundle();
void __INIT_IMPL_org_xmlvm_iphone_NSBundle();
void __DELETE_org_xmlvm_iphone_NSBundle(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSBundle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSBundle();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSBundle();
JAVA_OBJECT org_xmlvm_iphone_NSBundle_mainBundle__();
JAVA_OBJECT org_xmlvm_iphone_NSBundle_pathForResource___java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
JAVA_OBJECT org_xmlvm_iphone_NSBundle_pathForResource___java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_NSBundle_bundlePath__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSBundle_localizedStringForKey___java_lang_String_java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
void org_xmlvm_iphone_NSBundle___CLINIT_();

#endif
