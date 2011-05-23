#ifndef __ORG_XMLVM_IPHONE_CATRANSITION__
#define __ORG_XMLVM_IPHONE_CATRANSITION__

#include "xmlvm.h"
#include "org_xmlvm_iphone_CAAnimation.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CAAnimation)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Map
#define XMLVM_FORWARD_DECL_java_util_Map
XMLVM_FORWARD_DECL(java_util_Map)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CATransition
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CATransition, 40, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CATransition)

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CATransition 40
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getEndProgress__ 32
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setEndProgress___float 33
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getStartProgress__ 34
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setStartProgress___float 35
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getSubtype__ 36
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setSubtype___java_lang_String 37
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getType__ 38
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setType___java_lang_String 39
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setTimeOffset___double 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setDuration___double 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_runAction___java_lang_String_org_xmlvm_iphone_NSObject_java_util_Map 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getSpeed__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setAutoreverses___boolean 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getTimeOffset__ 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setFillMode___java_lang_String 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getRepeatDuration__ 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setBeginTime___double 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setRepeatCount___float 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setSpeed___float 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_isAutoreverses__ 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_setRepeatDuration___double 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getDuration__ 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getBeginTime__ 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getFillMode__ 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CATransition_getRepeatCount__ 31

void __INIT_org_xmlvm_iphone_CATransition();
void __INIT_IMPL_org_xmlvm_iphone_CATransition();
void __DELETE_org_xmlvm_iphone_CATransition(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CATransition(JAVA_OBJECT me);
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
// Vtable index: 32
JAVA_FLOAT org_xmlvm_iphone_CATransition_getEndProgress__(JAVA_OBJECT me);
// Vtable index: 33
void org_xmlvm_iphone_CATransition_setEndProgress___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 34
JAVA_FLOAT org_xmlvm_iphone_CATransition_getStartProgress__(JAVA_OBJECT me);
// Vtable index: 35
void org_xmlvm_iphone_CATransition_setStartProgress___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 36
JAVA_OBJECT org_xmlvm_iphone_CATransition_getSubtype__(JAVA_OBJECT me);
// Vtable index: 37
void org_xmlvm_iphone_CATransition_setSubtype___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 38
JAVA_OBJECT org_xmlvm_iphone_CATransition_getType__(JAVA_OBJECT me);
// Vtable index: 39
void org_xmlvm_iphone_CATransition_setType___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
void org_xmlvm_iphone_CATransition_setTimeOffset___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
// Vtable index: 16
void org_xmlvm_iphone_CATransition_setDuration___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
// Vtable index: 17
void org_xmlvm_iphone_CATransition_runAction___java_lang_String_org_xmlvm_iphone_NSObject_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3);
// Vtable index: 18
JAVA_FLOAT org_xmlvm_iphone_CATransition_getSpeed__(JAVA_OBJECT me);
// Vtable index: 19
void org_xmlvm_iphone_CATransition_setAutoreverses___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 20
JAVA_DOUBLE org_xmlvm_iphone_CATransition_getTimeOffset__(JAVA_OBJECT me);
// Vtable index: 21
void org_xmlvm_iphone_CATransition_setFillMode___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 22
JAVA_DOUBLE org_xmlvm_iphone_CATransition_getRepeatDuration__(JAVA_OBJECT me);
// Vtable index: 23
void org_xmlvm_iphone_CATransition_setBeginTime___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
// Vtable index: 24
void org_xmlvm_iphone_CATransition_setRepeatCount___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 25
void org_xmlvm_iphone_CATransition_setSpeed___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 26
JAVA_BOOLEAN org_xmlvm_iphone_CATransition_isAutoreverses__(JAVA_OBJECT me);
// Vtable index: 27
void org_xmlvm_iphone_CATransition_setRepeatDuration___double(JAVA_OBJECT me, JAVA_DOUBLE n1);
// Vtable index: 28
JAVA_DOUBLE org_xmlvm_iphone_CATransition_getDuration__(JAVA_OBJECT me);
// Vtable index: 29
JAVA_DOUBLE org_xmlvm_iphone_CATransition_getBeginTime__(JAVA_OBJECT me);
// Vtable index: 30
JAVA_OBJECT org_xmlvm_iphone_CATransition_getFillMode__(JAVA_OBJECT me);
// Vtable index: 31
JAVA_FLOAT org_xmlvm_iphone_CATransition_getRepeatCount__(JAVA_OBJECT me);

#endif
