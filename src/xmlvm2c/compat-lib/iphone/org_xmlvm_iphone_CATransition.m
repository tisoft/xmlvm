#include "java_lang_String.h"

#include "org_xmlvm_iphone_CATransition.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CATransition __CLASS_org_xmlvm_iphone_CATransition = {
    0, // classInitialized
    "org.xmlvm.iphone.CATransition", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_CAAnimation, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CATransition_Fade;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CATransition_MoveIn;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CATransition_Push;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CATransition_Reveal;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CATransition_FromRight;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CATransition_FromLeft;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CATransition_FromTop;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_CATransition_FromBottom;

void __INIT_org_xmlvm_iphone_CATransition()
{
    __CLASS_org_xmlvm_iphone_CATransition.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_CAAnimation.classInitialized) __INIT_org_xmlvm_iphone_CAAnimation();
    __CLASS_org_xmlvm_iphone_CATransition.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CATransition;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CATransition.vtable, __CLASS_org_xmlvm_iphone_CAAnimation.vtable, sizeof(__CLASS_org_xmlvm_iphone_CAAnimation.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CATransition.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_getEndProgress__;
    __CLASS_org_xmlvm_iphone_CATransition.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_setEndProgress___float;
    __CLASS_org_xmlvm_iphone_CATransition.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_getStartProgress__;
    __CLASS_org_xmlvm_iphone_CATransition.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_setStartProgress___float;
    __CLASS_org_xmlvm_iphone_CATransition.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_getSubtype__;
    __CLASS_org_xmlvm_iphone_CATransition.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_setSubtype___java_lang_String;
    __CLASS_org_xmlvm_iphone_CATransition.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_getType__;
    __CLASS_org_xmlvm_iphone_CATransition.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_setType___java_lang_String;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CATransition.numImplementedInterfaces = 2;
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 2);
    __INIT_org_xmlvm_iphone_CAAction(&__CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]);
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[11] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __INIT_org_xmlvm_iphone_CAMediaTiming(&__CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]);
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[11] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[12] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[13] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[14] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[15] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[16] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[17] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[18] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[19] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[20] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[21] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[22] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[23] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[24] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[25] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    __CLASS_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[26] = __CLASS_org_xmlvm_iphone_CATransition.vtable[-1];
    _STATIC_org_xmlvm_iphone_CATransition_Fade = (java_lang_String*) XMLVMArray_createFromString("\"fade\"");
    _STATIC_org_xmlvm_iphone_CATransition_MoveIn = (java_lang_String*) XMLVMArray_createFromString("\"moveIn\"");
    _STATIC_org_xmlvm_iphone_CATransition_Push = (java_lang_String*) XMLVMArray_createFromString("\"push\"");
    _STATIC_org_xmlvm_iphone_CATransition_Reveal = (java_lang_String*) XMLVMArray_createFromString("\"reveal\"");
    _STATIC_org_xmlvm_iphone_CATransition_FromRight = (java_lang_String*) XMLVMArray_createFromString("\"fromRight\"");
    _STATIC_org_xmlvm_iphone_CATransition_FromLeft = (java_lang_String*) XMLVMArray_createFromString("\"fromLeft\"");
    _STATIC_org_xmlvm_iphone_CATransition_FromTop = (java_lang_String*) XMLVMArray_createFromString("\"fromTop\"");
    _STATIC_org_xmlvm_iphone_CATransition_FromBottom = (java_lang_String*) XMLVMArray_createFromString("\"fromBottom\"");


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CATransition]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_CATransition(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CATransition]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CATransition()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    org_xmlvm_iphone_CATransition* me = (org_xmlvm_iphone_CATransition*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CATransition));
    me->__class = &__CLASS_org_xmlvm_iphone_CATransition;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CATransition]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_CATransition);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CATransition()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CATransition();
    org_xmlvm_iphone_CATransition___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_Fade()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_Fade;
}

void org_xmlvm_iphone_CATransition_PUT_Fade(JAVA_OBJECT v)
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_Fade = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_MoveIn()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_MoveIn;
}

void org_xmlvm_iphone_CATransition_PUT_MoveIn(JAVA_OBJECT v)
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_MoveIn = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_Push()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_Push;
}

void org_xmlvm_iphone_CATransition_PUT_Push(JAVA_OBJECT v)
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_Push = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_Reveal()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_Reveal;
}

void org_xmlvm_iphone_CATransition_PUT_Reveal(JAVA_OBJECT v)
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_Reveal = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromRight()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_FromRight;
}

void org_xmlvm_iphone_CATransition_PUT_FromRight(JAVA_OBJECT v)
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_FromRight = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromLeft()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_FromLeft;
}

void org_xmlvm_iphone_CATransition_PUT_FromLeft(JAVA_OBJECT v)
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_FromLeft = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromTop()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_FromTop;
}

void org_xmlvm_iphone_CATransition_PUT_FromTop(JAVA_OBJECT v)
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_FromTop = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromBottom()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_FromBottom;
}

void org_xmlvm_iphone_CATransition_PUT_FromBottom(JAVA_OBJECT v)
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_FromBottom = v;
}

void org_xmlvm_iphone_CATransition___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_animation__()
{
    if (!__CLASS_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_animation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CATransition_getEndProgress__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_getEndProgress__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransition_setEndProgress___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_setEndProgress___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CATransition_getStartProgress__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_getStartProgress__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransition_setStartProgress___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_setStartProgress___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_getSubtype__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_getSubtype__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransition_setSubtype___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_setSubtype___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_getType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_getType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CATransition_setType___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CATransition_setType___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

