#include "org_xmlvm_iphone_UIView.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_CAAnimation.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_CGContext.h"

#include "org_xmlvm_iphone_CALayer.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CALayer __CLASS_org_xmlvm_iphone_CALayer = {
    0, // classInitialized
    "org.xmlvm.iphone.CALayer", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CALayer()
{
    __CLASS_org_xmlvm_iphone_CALayer.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CALayer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CALayer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CALayer.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CALayer.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String;
    __CLASS_org_xmlvm_iphone_CALayer.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_animationForKey___java_lang_String;
    __CLASS_org_xmlvm_iphone_CALayer.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_removeAllAnimations__;
    __CLASS_org_xmlvm_iphone_CALayer.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String;
    __CLASS_org_xmlvm_iphone_CALayer.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_animationKeys__;
    __CLASS_org_xmlvm_iphone_CALayer.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext;
    __CLASS_org_xmlvm_iphone_CALayer.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_getDelegate__;
    __CLASS_org_xmlvm_iphone_CALayer.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CALayer.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CALayer.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CALayer]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CALayer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CALayer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CALayer()
{
    if (!__CLASS_org_xmlvm_iphone_CALayer.classInitialized) __INIT_org_xmlvm_iphone_CALayer();
    org_xmlvm_iphone_CALayer* me = (org_xmlvm_iphone_CALayer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CALayer));
    me->__class = &__CLASS_org_xmlvm_iphone_CALayer;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CALayer]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CALayer()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CALayer();
    org_xmlvm_iphone_CALayer___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_layer__()
{
    if (!__CLASS_org_xmlvm_iphone_CALayer.classInitialized) __INIT_org_xmlvm_iphone_CALayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_layer__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_animationForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_animationForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_removeAllAnimations__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_removeAllAnimations__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_animationKeys__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_animationKeys__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

