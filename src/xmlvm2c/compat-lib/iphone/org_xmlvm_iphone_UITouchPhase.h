#ifndef __ORG_XMLVM_IPHONE_UITOUCHPHASE__
#define __ORG_XMLVM_IPHONE_UITOUCHPHASE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UITouchPhase
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UITouchPhase, 11)

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITouchPhase
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UITouchPhase \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UITouchPhase \
    } org_xmlvm_iphone_UITouchPhase

struct org_xmlvm_iphone_UITouchPhase {
    __TIB_DEFINITION_org_xmlvm_iphone_UITouchPhase* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UITouchPhase;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITouchPhase
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UITouchPhase
typedef struct org_xmlvm_iphone_UITouchPhase org_xmlvm_iphone_UITouchPhase;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UITouchPhase 11

void __INIT_org_xmlvm_iphone_UITouchPhase();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UITouchPhase();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITouchPhase();
JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Began();
void org_xmlvm_iphone_UITouchPhase_PUT_Began(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Moved();
void org_xmlvm_iphone_UITouchPhase_PUT_Moved(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Stationary();
void org_xmlvm_iphone_UITouchPhase_PUT_Stationary(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Ended();
void org_xmlvm_iphone_UITouchPhase_PUT_Ended(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UITouchPhase_GET_Cancelled();
void org_xmlvm_iphone_UITouchPhase_PUT_Cancelled(JAVA_INT v);
void org_xmlvm_iphone_UITouchPhase___INIT___(JAVA_OBJECT me);

#endif
