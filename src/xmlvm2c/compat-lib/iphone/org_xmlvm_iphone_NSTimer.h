#ifndef __ORG_XMLVM_IPHONE_NSTIMER__
#define __ORG_XMLVM_IPHONE_NSTIMER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimerDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimerDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSTimerDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.NSTimer
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSTimer, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSTimer)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimer;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimer_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimer_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimer_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSTimer \
    JAVA_OBJECT delegate;
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSTimer \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSTimer \
    } org_xmlvm_iphone_NSTimer

struct org_xmlvm_iphone_NSTimer {
    __TIB_DEFINITION_org_xmlvm_iphone_NSTimer* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSTimer;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimer
typedef struct org_xmlvm_iphone_NSTimer org_xmlvm_iphone_NSTimer;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSTimer 6

void __INIT_org_xmlvm_iphone_NSTimer();
void __INIT_IMPL_org_xmlvm_iphone_NSTimer();
void __DELETE_org_xmlvm_iphone_NSTimer(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSTimer(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSTimer();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSTimer();
JAVA_OBJECT org_xmlvm_iphone_NSTimer_scheduledTimerWithTimeInterval___double_org_xmlvm_iphone_NSTimerDelegate_java_lang_Object_boolean(JAVA_DOUBLE n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4);
void org_xmlvm_iphone_NSTimer_invalidate__(JAVA_OBJECT me);

#endif
