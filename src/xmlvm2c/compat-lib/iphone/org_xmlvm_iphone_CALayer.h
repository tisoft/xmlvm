#ifndef __ORG_XMLVM_IPHONE_CALAYER__
#define __ORG_XMLVM_IPHONE_CALAYER__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_util_HashMap
#define XMLVM_FORWARD_DECL_java_util_HashMap
XMLVM_FORWARD_DECL(java_util_HashMap)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CALayer)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimation
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CAAnimation)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.CALayer
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CALayer, 19)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT animation_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer \
    } org_xmlvm_iphone_CALayer

struct org_xmlvm_iphone_CALayer {
    __CLASS_DEFINITION_org_xmlvm_iphone_CALayer* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
typedef struct org_xmlvm_iphone_CALayer org_xmlvm_iphone_CALayer;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CALayer 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_animationForKey___java_lang_String 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_removeAllAnimations__ 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_animationKeys__ 18

void __INIT_org_xmlvm_iphone_CALayer();
JAVA_OBJECT __NEW_org_xmlvm_iphone_CALayer();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CALayer();
JAVA_OBJECT org_xmlvm_iphone_CALayer_layer__();
void org_xmlvm_iphone_CALayer___INIT___(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 15
JAVA_OBJECT org_xmlvm_iphone_CALayer_animationForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 16
void org_xmlvm_iphone_CALayer_removeAllAnimations__(JAVA_OBJECT me);
// Vtable index: 17
void org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_CALayer_animationKeys__(JAVA_OBJECT me);

#endif
