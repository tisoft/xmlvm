#ifndef __ORG_XMLVM_IPHONE_CABASICANIMATION__
#define __ORG_XMLVM_IPHONE_CABASICANIMATION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_CAPropertyAnimation.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CABasicAnimation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CABasicAnimation, 24, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CABasicAnimation)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CABasicAnimation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CABasicAnimation_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CABasicAnimation_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CABasicAnimation_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CABasicAnimation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CABasicAnimation \
    __INSTANCE_FIELDS_org_xmlvm_iphone_CAPropertyAnimation; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CABasicAnimation \
    } org_xmlvm_iphone_CABasicAnimation

struct org_xmlvm_iphone_CABasicAnimation {
    __TIB_DEFINITION_org_xmlvm_iphone_CABasicAnimation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CABasicAnimation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CABasicAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CABasicAnimation
typedef struct org_xmlvm_iphone_CABasicAnimation org_xmlvm_iphone_CABasicAnimation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CABasicAnimation 24

void __INIT_org_xmlvm_iphone_CABasicAnimation();
void __INIT_IMPL_org_xmlvm_iphone_CABasicAnimation();
void __DELETE_org_xmlvm_iphone_CABasicAnimation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CABasicAnimation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CABasicAnimation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CABasicAnimation();
JAVA_OBJECT org_xmlvm_iphone_CABasicAnimation_animationWithKeyPath___java_lang_String(JAVA_OBJECT n1);
void org_xmlvm_iphone_CABasicAnimation___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CABasicAnimation_getByValue__(JAVA_OBJECT me);
void org_xmlvm_iphone_CABasicAnimation_setByValue___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_CABasicAnimation_getToValue__(JAVA_OBJECT me);
void org_xmlvm_iphone_CABasicAnimation_setToValue___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_CABasicAnimation_getFromValue__(JAVA_OBJECT me);
void org_xmlvm_iphone_CABasicAnimation_setFromValue___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CABasicAnimation \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CAPropertyAnimation \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CABasicAnimation \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CAPropertyAnimation \


#endif
