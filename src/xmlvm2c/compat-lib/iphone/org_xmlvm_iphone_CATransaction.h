#ifndef __ORG_XMLVM_IPHONE_CATRANSACTION__
#define __ORG_XMLVM_IPHONE_CATRANSACTION__

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
// Class declarations for org.xmlvm.iphone.CATransaction
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CATransaction, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CATransaction)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransaction;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransaction_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransaction_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransaction_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CATransaction
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CATransaction \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CATransaction \
    } org_xmlvm_iphone_CATransaction

struct org_xmlvm_iphone_CATransaction {
    __TIB_DEFINITION_org_xmlvm_iphone_CATransaction* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CATransaction;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CATransaction
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CATransaction
typedef struct org_xmlvm_iphone_CATransaction org_xmlvm_iphone_CATransaction;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CATransaction 7

void __INIT_org_xmlvm_iphone_CATransaction();
void __INIT_IMPL_org_xmlvm_iphone_CATransaction();
void __DELETE_org_xmlvm_iphone_CATransaction(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CATransaction(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CATransaction();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CATransaction();
void org_xmlvm_iphone_CATransaction_begin__();
void org_xmlvm_iphone_CATransaction_commit__();
void org_xmlvm_iphone_CATransaction_flush__();
void org_xmlvm_iphone_CATransaction_lock__();
void org_xmlvm_iphone_CATransaction_unlock__();
JAVA_DOUBLE org_xmlvm_iphone_CATransaction_animationDuration__();
void org_xmlvm_iphone_CATransaction_setAnimationDuration___double(JAVA_DOUBLE n1);
JAVA_BOOLEAN org_xmlvm_iphone_CATransaction_disableActions__();
void org_xmlvm_iphone_CATransaction_setDisableActions___boolean(JAVA_BOOLEAN n1);
JAVA_OBJECT org_xmlvm_iphone_CATransaction_completionBlock__();
void org_xmlvm_iphone_CATransaction_setCompletionBlock___java_lang_Object(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_CATransaction_valueForKeyInCATransaction___java_lang_String(JAVA_OBJECT n1);
void org_xmlvm_iphone_CATransaction_setValue___java_lang_Object_java_lang_String(JAVA_OBJECT n1, JAVA_OBJECT n2);
void org_xmlvm_iphone_CATransaction___INIT___(JAVA_OBJECT me);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CATransaction \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CATransaction \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
