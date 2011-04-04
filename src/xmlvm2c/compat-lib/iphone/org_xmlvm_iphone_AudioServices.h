#ifndef __ORG_XMLVM_IPHONE_AUDIOSERVICES__
#define __ORG_XMLVM_IPHONE_AUDIOSERVICES__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.AudioServices
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_AudioServices, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_AudioServices)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_AudioServices;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_AudioServices_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_AudioServices_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_AudioServices_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_AudioServices
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_AudioServices \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_AudioServices \
    } org_xmlvm_iphone_AudioServices

struct org_xmlvm_iphone_AudioServices {
    __TIB_DEFINITION_org_xmlvm_iphone_AudioServices* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_AudioServices;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_AudioServices
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_AudioServices
typedef struct org_xmlvm_iphone_AudioServices org_xmlvm_iphone_AudioServices;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_AudioServices 6

void __INIT_org_xmlvm_iphone_AudioServices();
void __INIT_IMPL_org_xmlvm_iphone_AudioServices();
void __DELETE_org_xmlvm_iphone_AudioServices(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_AudioServices(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_AudioServices();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_AudioServices();
void org_xmlvm_iphone_AudioServices_playSystemSound___int(JAVA_INT n1);

#endif
