#ifndef __ORG_XMLVM_IPHONE_UIVIEWANIMATIONCURVE__
#define __ORG_XMLVM_IPHONE_UIVIEWANIMATIONCURVE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.UIViewAnimationCurve
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIViewAnimationCurve, 11)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_ARRAYTYPE;

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIViewAnimationCurve 11

void __INIT_org_xmlvm_iphone_UIViewAnimationCurve();
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
void org_xmlvm_iphone_UIViewAnimationCurve___INIT___(JAVA_OBJECT me);

#endif
