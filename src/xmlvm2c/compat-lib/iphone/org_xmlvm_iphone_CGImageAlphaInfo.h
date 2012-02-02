#ifndef __ORG_XMLVM_IPHONE_CGIMAGEALPHAINFO__
#define __ORG_XMLVM_IPHONE_CGIMAGEALPHAINFO__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CGImageAlphaInfo
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CGImageAlphaInfo, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CGImageAlphaInfo)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImageAlphaInfo;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImageAlphaInfo_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGImageAlphaInfo
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CGImageAlphaInfo \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CGImageAlphaInfo \
    } org_xmlvm_iphone_CGImageAlphaInfo

struct org_xmlvm_iphone_CGImageAlphaInfo {
    __TIB_DEFINITION_org_xmlvm_iphone_CGImageAlphaInfo* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CGImageAlphaInfo;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImageAlphaInfo
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGImageAlphaInfo
typedef struct org_xmlvm_iphone_CGImageAlphaInfo org_xmlvm_iphone_CGImageAlphaInfo;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CGImageAlphaInfo 6

void __INIT_org_xmlvm_iphone_CGImageAlphaInfo();
void __INIT_IMPL_org_xmlvm_iphone_CGImageAlphaInfo();
void __DELETE_org_xmlvm_iphone_CGImageAlphaInfo(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGImageAlphaInfo(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CGImageAlphaInfo();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGImageAlphaInfo();
JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaNone();
void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaNone(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaPremultipliedLast();
void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaPremultipliedLast(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaPremultipliedFirst();
void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaPremultipliedFirst(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaLast();
void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaLast(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaFirst();
void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaFirst(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaNoneSkipLast();
void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaNoneSkipLast(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CGImageAlphaInfo_GET_kCGImageAlphaNoneSkipFirst();
void org_xmlvm_iphone_CGImageAlphaInfo_PUT_kCGImageAlphaNoneSkipFirst(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CGImageAlphaInfo \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CGImageAlphaInfo \


#endif
