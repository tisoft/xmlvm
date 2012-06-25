#ifndef __ORG_XMLVM_IPHONE_NSTHREAD__
#define __ORG_XMLVM_IPHONE_NSTHREAD__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSThread
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSThread, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSThread)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSThread;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSThread_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSThread_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSThread_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSThread
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSThread \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSThread \
    } org_xmlvm_iphone_NSThread

struct org_xmlvm_iphone_NSThread {
    __TIB_DEFINITION_org_xmlvm_iphone_NSThread* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSThread;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSThread
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSThread
typedef struct org_xmlvm_iphone_NSThread org_xmlvm_iphone_NSThread;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSThread 7

void __INIT_org_xmlvm_iphone_NSThread();
void __INIT_IMPL_org_xmlvm_iphone_NSThread();
void __DELETE_org_xmlvm_iphone_NSThread(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSThread(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSThread();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSThread();
void org_xmlvm_iphone_NSThread___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSThread_currentThread__();

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSThread \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSThread \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
