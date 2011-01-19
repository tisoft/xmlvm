#ifndef __ORG_XMLVM_IPHONE_NSOBJECT__
#define __ORG_XMLVM_IPHONE_NSOBJECT__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSObject
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSObject, 14)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS

#import <Foundation/Foundation.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSObject void *wrappedObjCObj;

void org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj);
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSObject \
    } org_xmlvm_iphone_NSObject

struct org_xmlvm_iphone_NSObject {
    __TIB_DEFINITION_org_xmlvm_iphone_NSObject* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
typedef struct org_xmlvm_iphone_NSObject org_xmlvm_iphone_NSObject;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSObject 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_retain__ 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_release__ 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_dealloc__ 13

void __INIT_org_xmlvm_iphone_NSObject();
void __DELETE_org_xmlvm_iphone_NSObject(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSObject();
void org_xmlvm_iphone_NSObject___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4);
// Vtable index: 11
JAVA_OBJECT org_xmlvm_iphone_NSObject_retain__(JAVA_OBJECT me);
// Vtable index: 12
void org_xmlvm_iphone_NSObject_release__(JAVA_OBJECT me);
// Vtable index: 13
void org_xmlvm_iphone_NSObject_dealloc__(JAVA_OBJECT me);

#endif
