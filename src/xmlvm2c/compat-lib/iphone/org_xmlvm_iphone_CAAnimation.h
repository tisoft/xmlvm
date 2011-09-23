#ifndef __ORG_XMLVM_IPHONE_CAANIMATION__
#define __ORG_XMLVM_IPHONE_CAANIMATION__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
#include "org_xmlvm_iphone_NSObject.h"
#include "org_xmlvm_iphone_CAAction.h"
#include "org_xmlvm_iphone_CAMediaTiming.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CAAnimation)
#endif
// Class declarations for org.xmlvm.iphone.CAAnimation
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CAAnimation, 26, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CAAnimation)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimation;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimation_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimation_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimation_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CAAnimation 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_animationDidStart___org_xmlvm_iphone_CAAnimation 7
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_animationDidStop___org_xmlvm_iphone_CAAnimation 8
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_getBeginTime__ 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_getDuration__ 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_getFillMode__ 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_getRepeatCount__ 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_getRepeatDuration__ 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_getSpeed__ 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_getTimeOffset__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_isAutoreverses__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_runAction___java_lang_String_org_xmlvm_iphone_NSObject_java_util_Map 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setAutoreverses___boolean 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setBeginTime___double 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setDuration___double 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setFillMode___java_lang_String 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setRepeatCount___float 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setRepeatDuration___double 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setSpeed___float 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CAAnimation_setTimeOffset___double 25

void __INIT_org_xmlvm_iphone_CAAnimation();
void __INIT_IMPL_org_xmlvm_iphone_CAAnimation();
void __DELETE_org_xmlvm_iphone_CAAnimation(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CAAnimation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CAAnimation();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CAAnimation();
void org_xmlvm_iphone_CAAnimation___INIT___(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_CAAnimation_defaultValueForKey___java_lang_String(JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_CAAnimation_getDelegate__(JAVA_OBJECT me);
void org_xmlvm_iphone_CAAnimation_setDelegate___org_xmlvm_iphone_NSObject(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_CAAnimation_isRemovedOnCompletion__(JAVA_OBJECT me);
void org_xmlvm_iphone_CAAnimation_setRemovedOnCompletion___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 7
void org_xmlvm_iphone_CAAnimation_animationDidStart___org_xmlvm_iphone_CAAnimation(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 8
void org_xmlvm_iphone_CAAnimation_animationDidStop___org_xmlvm_iphone_CAAnimation(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 9
JAVA_DOUBLE org_xmlvm_iphone_CAAnimation_getBeginTime__(JAVA_OBJECT me);
// Vtable index: 10
JAVA_DOUBLE org_xmlvm_iphone_CAAnimation_getDuration__(JAVA_OBJECT me);
// Vtable index: 11
JAVA_OBJECT org_xmlvm_iphone_CAAnimation_getFillMode__(JAVA_OBJECT me);
// Vtable index: 12
JAVA_FLOAT org_xmlvm_iphone_CAAnimation_getRepeatCount__(JAVA_OBJECT me);
// Vtable index: 13
JAVA_DOUBLE org_xmlvm_iphone_CAAnimation_getRepeatDuration__(JAVA_OBJECT me);
// Vtable index: 14
JAVA_FLOAT org_xmlvm_iphone_CAAnimation_getSpeed__(JAVA_OBJECT me);
// Vtable index: 15
JAVA_DOUBLE org_xmlvm_iphone_CAAnimation_getTimeOffset__(JAVA_OBJECT me);
// Vtable index: 16
JAVA_BOOLEAN org_xmlvm_iphone_CAAnimation_isAutoreverses__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_CAAnimation_runAction___java_lang_String_org_xmlvm_iphone_NSObject_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
// Vtable index: 18
void org_xmlvm_iphone_CAAnimation_setAutoreverses___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 19
void org_xmlvm_iphone_CAAnimation_setBeginTime___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
// Vtable index: 20
void org_xmlvm_iphone_CAAnimation_setDuration___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
// Vtable index: 21
void org_xmlvm_iphone_CAAnimation_setFillMode___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 22
void org_xmlvm_iphone_CAAnimation_setRepeatCount___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 23
void org_xmlvm_iphone_CAAnimation_setRepeatDuration___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
// Vtable index: 24
void org_xmlvm_iphone_CAAnimation_setSpeed___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 25
void org_xmlvm_iphone_CAAnimation_setTimeOffset___double(JAVA_OBJECT me, JAVA_DOUBLE n1);

#endif
