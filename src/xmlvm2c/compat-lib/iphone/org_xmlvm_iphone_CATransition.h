#ifndef __ORG_XMLVM_IPHONE_CATRANSITION__
#define __ORG_XMLVM_IPHONE_CATRANSITION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CAAnimation.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CATransition
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CATransition, 24, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CATransition)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransition;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransition_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransition_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransition_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CATransition
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CATransition \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimation; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CATransition \
    } org_xmlvm_iphone_CATransition

struct org_xmlvm_iphone_CATransition {
    __TIB_DEFINITION_org_xmlvm_iphone_CATransition* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CATransition;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CATransition
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CATransition
typedef struct org_xmlvm_iphone_CATransition org_xmlvm_iphone_CATransition;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CATransition 24

void __INIT_org_xmlvm_iphone_CATransition();
void __INIT_IMPL_org_xmlvm_iphone_CATransition();
void __DELETE_org_xmlvm_iphone_CATransition(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CATransition(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CATransition();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CATransition();
JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_Fade();
void org_xmlvm_iphone_CATransition_PUT_Fade(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_MoveIn();
void org_xmlvm_iphone_CATransition_PUT_MoveIn(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_Push();
void org_xmlvm_iphone_CATransition_PUT_Push(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_Reveal();
void org_xmlvm_iphone_CATransition_PUT_Reveal(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromRight();
void org_xmlvm_iphone_CATransition_PUT_FromRight(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromLeft();
void org_xmlvm_iphone_CATransition_PUT_FromLeft(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromTop();
void org_xmlvm_iphone_CATransition_PUT_FromTop(JAVA_OBJECT v);
JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromBottom();
void org_xmlvm_iphone_CATransition_PUT_FromBottom(JAVA_OBJECT v);
void org_xmlvm_iphone_CATransition___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CATransition_animation__();
JAVA_FLOAT org_xmlvm_iphone_CATransition_getEndProgress__(JAVA_OBJECT me);
void org_xmlvm_iphone_CATransition_setEndProgress___float(JAVA_OBJECT me, JAVA_FLOAT n1);
JAVA_FLOAT org_xmlvm_iphone_CATransition_getStartProgress__(JAVA_OBJECT me);
void org_xmlvm_iphone_CATransition_setStartProgress___float(JAVA_OBJECT me, JAVA_FLOAT n1);
JAVA_OBJECT org_xmlvm_iphone_CATransition_getSubtype__(JAVA_OBJECT me);
void org_xmlvm_iphone_CATransition_setSubtype___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_CATransition_getType__(JAVA_OBJECT me);
void org_xmlvm_iphone_CATransition_setType___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
