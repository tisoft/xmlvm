#ifndef __ORG_XMLVM_IPHONE_MKMAPTYPE__
#define __ORG_XMLVM_IPHONE_MKMAPTYPE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.MKMapType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_MKMapType, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_MKMapType)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapType;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapType_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapType_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapType_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKMapType
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_MKMapType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_MKMapType \
    } org_xmlvm_iphone_MKMapType

struct org_xmlvm_iphone_MKMapType {
    __TIB_DEFINITION_org_xmlvm_iphone_MKMapType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_MKMapType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_MKMapType
typedef struct org_xmlvm_iphone_MKMapType org_xmlvm_iphone_MKMapType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_MKMapType 6

void __INIT_org_xmlvm_iphone_MKMapType();
void __INIT_IMPL_org_xmlvm_iphone_MKMapType();
void __DELETE_org_xmlvm_iphone_MKMapType(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapType();
JAVA_INT org_xmlvm_iphone_MKMapType_GET_Standard();
void org_xmlvm_iphone_MKMapType_PUT_Standard(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MKMapType_GET_Satellite();
void org_xmlvm_iphone_MKMapType_PUT_Satellite(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_MKMapType_GET_Hybrid();
void org_xmlvm_iphone_MKMapType_PUT_Hybrid(JAVA_INT v);

#endif
