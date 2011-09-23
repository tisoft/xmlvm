#ifndef __ORG_XMLVM_IPHONE_UIVIEWANIMATIONCURVE__
#define __ORG_XMLVM_IPHONE_UIVIEWANIMATIONCURVE__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.UIViewAnimationCurve
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIViewAnimationCurve, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIViewAnimationCurve)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAnimationCurve
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAnimationCurve \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAnimationCurve \
    } org_xmlvm_iphone_UIViewAnimationCurve

struct org_xmlvm_iphone_UIViewAnimationCurve {
    __TIB_DEFINITION_org_xmlvm_iphone_UIViewAnimationCurve* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIViewAnimationCurve;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAnimationCurve
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAnimationCurve
typedef struct org_xmlvm_iphone_UIViewAnimationCurve org_xmlvm_iphone_UIViewAnimationCurve;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIViewAnimationCurve 6

void __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
void __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationCurve();
void __DELETE_org_xmlvm_iphone_UIViewAnimationCurve(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationCurve(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationCurve();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationCurve();
JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseInOut();
void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseInOut(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseIn();
void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseIn(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseOut();
void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseOut(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_Linear();
void org_xmlvm_iphone_UIViewAnimationCurve_PUT_Linear(JAVA_INT v);

#endif
