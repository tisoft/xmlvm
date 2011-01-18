#ifndef __ORG_XMLVM_IPHONE_CAANIMATION__
#define __ORG_XMLVM_IPHONE_CAANIMATION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"
#include "org_xmlvm_iphone_NSObject.h"
#include "org_xmlvm_iphone_CAAction.h"
#include "org_xmlvm_iphone_CAMediaTiming.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAMediaTiming
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAMediaTiming
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CAMediaTiming)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CAAnimation)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAction
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAction
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CAAction)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CAAnimation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CAAnimation, 20)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimation_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimation
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimation \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimation \
    } org_xmlvm_iphone_CAAnimation

struct org_xmlvm_iphone_CAAnimation {
    __TIB_DEFINITION_org_xmlvm_iphone_CAAnimation* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimation;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
typedef struct org_xmlvm_iphone_CAAnimation org_xmlvm_iphone_CAAnimation;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CAAnimation 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_getDelegate__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setDelegate___org_xmlvm_iphone_NSObject 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_isRemovedOnCompletion__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setRemovedOnCompletion___boolean 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_animationDidStart___org_xmlvm_iphone_CAAnimation 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_animationDidStop___org_xmlvm_iphone_CAAnimation 19

void __INIT_org_xmlvm_iphone_CAAnimation();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CAAnimation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CAAnimation();
void org_xmlvm_iphone_CAAnimation___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CAAnimation_defaultValueForKey___java_lang_String(JAVA_OBJECT n1);
// Vtable index: 14
JAVA_OBJECT org_xmlvm_iphone_CAAnimation_getDelegate__(JAVA_OBJECT me);
// Vtable index: 15
void org_xmlvm_iphone_CAAnimation_setDelegate___org_xmlvm_iphone_NSObject(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 16
JAVA_BOOLEAN org_xmlvm_iphone_CAAnimation_isRemovedOnCompletion__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_CAAnimation_setRemovedOnCompletion___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 18
void org_xmlvm_iphone_CAAnimation_animationDidStart___org_xmlvm_iphone_CAAnimation(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 19
void org_xmlvm_iphone_CAAnimation_animationDidStop___org_xmlvm_iphone_CAAnimation(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
