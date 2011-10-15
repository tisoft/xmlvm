#ifndef __ORG_XMLVM_IPHONE_NSRUNLOOP__
#define __ORG_XMLVM_IPHONE_NSRUNLOOP__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_List
#define XMLVM_FORWARD_DECL_java_util_List
XMLVM_FORWARD_DECL(java_util_List)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSelector
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSelector
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSSelector)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSTimer)
#endif
// Class declarations for org.xmlvm.iphone.NSRunLoop
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSRunLoop, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSRunLoop)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRunLoop;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRunLoop_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRunLoop_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRunLoop_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSRunLoop
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSRunLoop \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSRunLoop \
    } org_xmlvm_iphone_NSRunLoop

struct org_xmlvm_iphone_NSRunLoop {
    __TIB_DEFINITION_org_xmlvm_iphone_NSRunLoop* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSRunLoop;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSRunLoop
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSRunLoop
typedef struct org_xmlvm_iphone_NSRunLoop org_xmlvm_iphone_NSRunLoop;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSRunLoop 7

void __INIT_org_xmlvm_iphone_NSRunLoop();
void __INIT_IMPL_org_xmlvm_iphone_NSRunLoop();
void __DELETE_org_xmlvm_iphone_NSRunLoop(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSRunLoop(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSRunLoop();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSRunLoop();
JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_GET_NSDefaultRunLoopMode();
void org_xmlvm_iphone_NSRunLoop_PUT_NSDefaultRunLoopMode(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_GET_NSRunLoopCommonModes();
void org_xmlvm_iphone_NSRunLoop_PUT_NSRunLoopCommonModes(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_currentRunLoop__();
JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_mainRunLoop__();
void org_xmlvm_iphone_NSRunLoop___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_currentMode__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSRunLoop_addTimer___org_xmlvm_iphone_NSTimer_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_NSRunLoop_limitDateForMode___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_NSRunLoop_acceptInputForMode___java_lang_String_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_NSRunLoop_run__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSRunLoop_runUntilDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_NSRunLoop_runMode___java_lang_String_org_xmlvm_iphone_NSDate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_NSRunLoop_configureAsServer__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSRunLoop_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_java_lang_Object_int_java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4, JAVA_OBJECT n5);
void org_xmlvm_iphone_NSRunLoop_cancelPerformSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
void org_xmlvm_iphone_NSRunLoop_cancelPerformSelectorsWithTarget___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
