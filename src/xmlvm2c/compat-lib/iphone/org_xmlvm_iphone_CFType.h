#ifndef __ORG_XMLVM_IPHONE_CFTYPE__
#define __ORG_XMLVM_IPHONE_CFTYPE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.CFType
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CFType, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CFType)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFType;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFType_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFType_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFType_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CFType void *wrappedCFTypeRef;

#define PASTER(x,y) x ## y
#define EVALUATOR(x,y)  PASTER(x,y)
#define XMLVM_CURRENT_CLASS_NAME_REF EVALUATOR(XMLVM_CURRENT_CLASS_NAME,Ref)

#define XMLVM_VAR_IOS_REF(clazz, var, arg) \
org_xmlvm_iphone_##clazz* j##var = arg; \
clazz##Ref var = (arg == JAVA_NULL) ? nil : (clazz##Ref) (j##var->fields.org_xmlvm_iphone_CFType.wrappedCFTypeRef);

#include "xmlvm-ios.h"

#import <CoreFoundation/CFBase.h>

void org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, CFTypeRef wrappedCFTypeRef);

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CFType \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CFType \
    } org_xmlvm_iphone_CFType

struct org_xmlvm_iphone_CFType {
    __TIB_DEFINITION_org_xmlvm_iphone_CFType* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CFType;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFType
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFType
typedef struct org_xmlvm_iphone_CFType org_xmlvm_iphone_CFType;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CFType 6
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CFType_finalize_org_xmlvm_iphone_CFType__ 2

void __INIT_org_xmlvm_iphone_CFType();
void __INIT_IMPL_org_xmlvm_iphone_CFType();
void __DELETE_org_xmlvm_iphone_CFType(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CFType();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CFType();
void org_xmlvm_iphone_CFType___INIT___(JAVA_OBJECT me);
// Vtable index: 2
void org_xmlvm_iphone_CFType_finalize_org_xmlvm_iphone_CFType__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CFType_retain__(JAVA_OBJECT me);
void org_xmlvm_iphone_CFType_release__(JAVA_OBJECT me);

#endif
