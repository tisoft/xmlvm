#include "org_xmlvm_iphone_CAMediaTiming.h"
#include "org_xmlvm_iphone_CAAction.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CAAnimation.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CAAnimation __CLASS_org_xmlvm_iphone_CAAnimation = {
    0, // classInitialized
    "org.xmlvm.iphone.CAAnimation", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CAAnimation()
{
    __CLASS_org_xmlvm_iphone_CAAnimation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CAAnimation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CAAnimation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CAAnimation.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CAAnimation.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CAAnimation_getDelegate__;
    __CLASS_org_xmlvm_iphone_CAAnimation.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CAAnimation_setDelegate___org_xmlvm_iphone_NSObject;
    __CLASS_org_xmlvm_iphone_CAAnimation.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CAAnimation_isRemovedOnCompletion__;
    __CLASS_org_xmlvm_iphone_CAAnimation.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CAAnimation_setRemovedOnCompletion___boolean;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CAAnimation.numImplementedInterfaces = 2;
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 2);
    __INIT_org_xmlvm_iphone_CAMediaTiming(&__CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]);
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[11] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[12] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[13] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[14] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[15] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[16] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[17] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[18] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[19] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[20] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[21] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[22] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[23] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[24] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[25] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][0]->vtable[26] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];
    __INIT_org_xmlvm_iphone_CAAction(&__CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][1]);
    __CLASS_org_xmlvm_iphone_CAAnimation.implementedInterfaces[0][1]->vtable[11] = __CLASS_org_xmlvm_iphone_CAAnimation.vtable[-1];


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CAAnimation]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CAAnimation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CAAnimation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CAAnimation()
{
    if (!__CLASS_org_xmlvm_iphone_CAAnimation.classInitialized) __INIT_org_xmlvm_iphone_CAAnimation();
    org_xmlvm_iphone_CAAnimation* me = (org_xmlvm_iphone_CAAnimation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CAAnimation));
    me->__class = &__CLASS_org_xmlvm_iphone_CAAnimation;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CAAnimation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CAAnimation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CAAnimation();
    org_xmlvm_iphone_CAAnimation___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CAAnimation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CAAnimation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CAAnimation_defaultValueForKey___java_lang_String(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_CAAnimation.classInitialized) __INIT_org_xmlvm_iphone_CAAnimation();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CAAnimation_defaultValueForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CAAnimation_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CAAnimation_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CAAnimation_setDelegate___org_xmlvm_iphone_NSObject(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CAAnimation_setDelegate___org_xmlvm_iphone_NSObject]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CAAnimation_isRemovedOnCompletion__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CAAnimation_isRemovedOnCompletion__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CAAnimation_setRemovedOnCompletion___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CAAnimation_setRemovedOnCompletion___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

