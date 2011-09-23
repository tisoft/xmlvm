#ifndef __ORG_XMLVM_IPHONE_FOUNDATION__
#define __ORG_XMLVM_IPHONE_FOUNDATION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
// Class declarations for org.xmlvm.iphone.Foundation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_Foundation, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_Foundation)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_Foundation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_Foundation_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_Foundation_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_Foundation_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_Foundation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_Foundation \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_Foundation \
    } org_xmlvm_iphone_Foundation

struct org_xmlvm_iphone_Foundation {
    __TIB_DEFINITION_org_xmlvm_iphone_Foundation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_Foundation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_Foundation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_Foundation
typedef struct org_xmlvm_iphone_Foundation org_xmlvm_iphone_Foundation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_Foundation 6

void __INIT_org_xmlvm_iphone_Foundation();
void __INIT_IMPL_org_xmlvm_iphone_Foundation();
void __DELETE_org_xmlvm_iphone_Foundation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_Foundation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_Foundation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_Foundation();
void org_xmlvm_iphone_Foundation___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_Foundation_NSSearchPathForDirectoriesInDomains___int_int_boolean(JAVA_INT n1, JAVA_INT n2, JAVA_BOOLEAN n3);
JAVA_OBJECT org_xmlvm_iphone_Foundation_NSTemporaryDirectory__();

#endif
