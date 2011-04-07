#ifndef __ORG_XMLVM_IPHONE_CALAYER__
#define __ORG_XMLVM_IPHONE_CALAYER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPoint)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CAAnimation)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGContext
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGContext)
#endif
// Class declarations for org.xmlvm.iphone.CALayer
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CALayer, 19, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CALayer)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CALayer
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CALayer \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CALayer \
    } org_xmlvm_iphone_CALayer

struct org_xmlvm_iphone_CALayer {
    __TIB_DEFINITION_org_xmlvm_iphone_CALayer* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CALayer;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
typedef struct org_xmlvm_iphone_CALayer org_xmlvm_iphone_CALayer;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CALayer 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_animationForKey___java_lang_String 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_removeAllAnimations__ 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_animationKeys__ 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_getDelegate__ 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_getAnchorPoint__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_setAnchorPoint___org_xmlvm_iphone_CGPoint 18

void __INIT_org_xmlvm_iphone_CALayer();
void __INIT_IMPL_org_xmlvm_iphone_CALayer();
void __DELETE_org_xmlvm_iphone_CALayer(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CALayer();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CALayer();
JAVA_OBJECT org_xmlvm_iphone_CALayer_layer__();
void org_xmlvm_iphone_CALayer___INIT___(JAVA_OBJECT me);
// Vtable index: 9
void org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 10
JAVA_OBJECT org_xmlvm_iphone_CALayer_animationForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 11
void org_xmlvm_iphone_CALayer_removeAllAnimations__(JAVA_OBJECT me);
// Vtable index: 12
void org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 13
JAVA_OBJECT org_xmlvm_iphone_CALayer_animationKeys__(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_CALayer_getDelegate__(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 17
JAVA_OBJECT org_xmlvm_iphone_CALayer_getAnchorPoint__(JAVA_OBJECT me);
// Vtable index: 18
void org_xmlvm_iphone_CALayer_setAnchorPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
