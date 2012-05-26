#ifndef __ORG_XMLVM_IPHONE_CFRUNLOOP__
#define __ORG_XMLVM_IPHONE_CFRUNLOOP__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CFType.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CFRunLoop
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CFRunLoop, 8, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CFRunLoop)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFRunLoop;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFRunLoop_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFRunLoop_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFRunLoop_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CFRunLoop
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CFRunLoop \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CFType; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CFRunLoop \
    } org_xmlvm_iphone_CFRunLoop

struct org_xmlvm_iphone_CFRunLoop {
    __TIB_DEFINITION_org_xmlvm_iphone_CFRunLoop* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CFRunLoop;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFRunLoop
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CFRunLoop
typedef struct org_xmlvm_iphone_CFRunLoop org_xmlvm_iphone_CFRunLoop;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CFRunLoop 8

void __INIT_org_xmlvm_iphone_CFRunLoop();
void __INIT_IMPL_org_xmlvm_iphone_CFRunLoop();
void __DELETE_org_xmlvm_iphone_CFRunLoop(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFRunLoop(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CFRunLoop();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CFRunLoop();
JAVA_OBJECT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopDefaultMode();
void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopDefaultMode(JAVA_OBJECT v);
JAVA_INT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopRunFinished();
void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopRunFinished(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopRunStopped();
void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopRunStopped(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopRunTimedOut();
void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopRunTimedOut(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_CFRunLoop_GET_kCFRunLoopRunHandledSource();
void org_xmlvm_iphone_CFRunLoop_PUT_kCFRunLoopRunHandledSource(JAVA_INT v);
JAVA_LONG org_xmlvm_iphone_CFRunLoop_getTypeID__();
JAVA_OBJECT org_xmlvm_iphone_CFRunLoop_getCurrent__();
JAVA_OBJECT org_xmlvm_iphone_CFRunLoop_getMain__();
void org_xmlvm_iphone_CFRunLoop_run__();
JAVA_INT org_xmlvm_iphone_CFRunLoop_runInMode___java_lang_String_double_byte(JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_BYTE n3);
void org_xmlvm_iphone_CFRunLoop___INIT___(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CFRunLoop \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CFType \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CFRunLoop \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CFType \


#endif
