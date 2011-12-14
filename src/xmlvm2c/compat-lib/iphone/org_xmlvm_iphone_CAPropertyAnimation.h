#ifndef __ORG_XMLVM_IPHONE_CAPROPERTYANIMATION__
#define __ORG_XMLVM_IPHONE_CAPROPERTYANIMATION__

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
// Class declarations for org.xmlvm.iphone.CAPropertyAnimation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CAPropertyAnimation, 24, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CAPropertyAnimation)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAPropertyAnimation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAPropertyAnimation_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAPropertyAnimation_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAPropertyAnimation_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CAPropertyAnimation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CAPropertyAnimation \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimation; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CAPropertyAnimation \
    } org_xmlvm_iphone_CAPropertyAnimation

struct org_xmlvm_iphone_CAPropertyAnimation {
    __TIB_DEFINITION_org_xmlvm_iphone_CAPropertyAnimation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CAPropertyAnimation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAPropertyAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAPropertyAnimation
typedef struct org_xmlvm_iphone_CAPropertyAnimation org_xmlvm_iphone_CAPropertyAnimation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CAPropertyAnimation 24

void __INIT_org_xmlvm_iphone_CAPropertyAnimation();
void __INIT_IMPL_org_xmlvm_iphone_CAPropertyAnimation();
void __DELETE_org_xmlvm_iphone_CAPropertyAnimation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CAPropertyAnimation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CAPropertyAnimation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CAPropertyAnimation();
JAVA_OBJECT org_xmlvm_iphone_CAPropertyAnimation_animationWithKeyPath___java_lang_String(JAVA_OBJECT n1);
void org_xmlvm_iphone_CAPropertyAnimation___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CAPropertyAnimation_getKeyPath__(JAVA_OBJECT me);
void org_xmlvm_iphone_CAPropertyAnimation_setKeyPath___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_CAPropertyAnimation_isAdditive__(JAVA_OBJECT me);
void org_xmlvm_iphone_CAPropertyAnimation_setAdditive___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_BOOLEAN org_xmlvm_iphone_CAPropertyAnimation_isCumulative__(JAVA_OBJECT me);
void org_xmlvm_iphone_CAPropertyAnimation_setCumulative___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);

#endif
