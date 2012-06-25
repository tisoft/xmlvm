#ifndef __ORG_XMLVM_IPHONE_NSOBJECT__
#define __ORG_XMLVM_IPHONE_NSOBJECT__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Class
#define XMLVM_FORWARD_DECL_java_lang_Class
XMLVM_FORWARD_DECL(java_lang_Class)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_reflect_Method
#define XMLVM_FORWARD_DECL_java_lang_reflect_Method
XMLVM_FORWARD_DECL(java_lang_reflect_Method)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSelector
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSelector
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSSelector)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSString
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSString
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSString)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSThread
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSThread
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSThread)
#endif
// Class declarations for org.xmlvm.iphone.NSObject
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSObject, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSObject)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS

#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif

#import <Foundation/Foundation.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSObject void *wrappedObjCObj;

void org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj);

#include "xmlvm-ios.h"

typedef JAVA_OBJECT (*Func_ONSObject)(NSObject* obj);
void xmlvm_register_wrapper_creator(Func_ONSObject fn);

void xmlvm_set_associated_c_object(JAVA_OBJECT jobj, NSObject* obj);
JAVA_OBJECT xmlvm_get_associated_c_object_if_present(NSObject* obj);
JAVA_OBJECT xmlvm_get_associated_c_object(NSObject* obj);


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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSObject 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_finalize_org_xmlvm_iphone_NSObject__ 2
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_release__ 6

void __INIT_org_xmlvm_iphone_NSObject();
void __INIT_IMPL_org_xmlvm_iphone_NSObject();
void __DELETE_org_xmlvm_iphone_NSObject(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSObject();
void org_xmlvm_iphone_NSObject___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_NSObject_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_double(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_DOUBLE n3);
void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___org_xmlvm_iphone_NSSelector_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3);
void org_xmlvm_iphone_NSObject_performSelector___org_xmlvm_iphone_NSSelector_org_xmlvm_iphone_NSThread_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4);
void org_xmlvm_iphone_NSObject_setValueForKey___java_lang_Object_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 2
void org_xmlvm_iphone_NSObject_finalize_org_xmlvm_iphone_NSObject__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSObject_retain__(JAVA_OBJECT me);
// Vtable index: 6
void org_xmlvm_iphone_NSObject_release__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSObject_dealloc__(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
