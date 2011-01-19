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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSTimer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSTimer)
#endif
// Class declarations for org.xmlvm.iphone.NSTimer
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSTimer, 15)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimer;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimer_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSTimer
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSTimer 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSTimer_invalidate__ 14

void __INIT_org_xmlvm_iphone_NSTimer();
void __DELETE_org_xmlvm_iphone_NSTimer(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSTimer();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSTimer();
JAVA_OBJECT org_xmlvm_iphone_NSTimer_scheduledTimerWithTimeInterval___float_org_xmlvm_iphone_NSTimerDelegate_java_lang_Object_boolean(JAVA_FLOAT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4);
// Vtable index: 14
void org_xmlvm_iphone_NSTimer_invalidate__(JAVA_OBJECT me);
JAVA_LONG org_xmlvm_iphone_NSTimer_access$000___org_xmlvm_iphone_NSTimer(JAVA_OBJECT n1);
void org_xmlvm_iphone_NSTimer_access$100___org_xmlvm_iphone_NSTimer(JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_NSTimer_access$200___org_xmlvm_iphone_NSTimer(JAVA_OBJECT n1);

#endif
