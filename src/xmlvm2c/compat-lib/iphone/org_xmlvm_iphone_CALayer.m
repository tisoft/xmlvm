#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_CAAnimation.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_CGContext.h"

#include "org_xmlvm_iphone_CALayer.h"

#define XMLVM_CURRENT_CLASS_NAME CALayer
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CALayer

__TIB_DEFINITION_org_xmlvm_iphone_CALayer __TIB_org_xmlvm_iphone_CALayer = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CALayer, // classInitializer
    "org.xmlvm.iphone.CALayer", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CALayer), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CALayer();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CALayer___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CAAnimation,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGContext,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"layer",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addAnimation",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"animationForKey",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"removeAllAnimations",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"removeAnimationForKey",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"animationKeys",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"renderInContext",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_CALayer_layer__();
        break;
    case 1:
        org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_CALayer_animationForKey___java_lang_String(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_CALayer_removeAllAnimations__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_CALayer_animationKeys__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_CALayer_getDelegate__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CALayer()
{
    __TIB_org_xmlvm_iphone_CALayer.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CALayer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CALayer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CALayer.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CALayer.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String;
    __TIB_org_xmlvm_iphone_CALayer.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_animationForKey___java_lang_String;
    __TIB_org_xmlvm_iphone_CALayer.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_removeAllAnimations__;
    __TIB_org_xmlvm_iphone_CALayer.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String;
    __TIB_org_xmlvm_iphone_CALayer.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_animationKeys__;
    __TIB_org_xmlvm_iphone_CALayer.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext;
    __TIB_org_xmlvm_iphone_CALayer.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_getDelegate__;
    __TIB_org_xmlvm_iphone_CALayer.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CALayer.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CALayer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_CALayer.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CALayer.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CALayer.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CALayer.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CALayer.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CALayer.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CALayer.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CALayer.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CALayer = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CALayer);
    __TIB_org_xmlvm_iphone_CALayer.clazz = __CLASS_org_xmlvm_iphone_CALayer;
    __CLASS_org_xmlvm_iphone_CALayer_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CALayer, 1);

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
    if (!__TIB_org_xmlvm_iphone_CALayer.classInitialized) __INIT_org_xmlvm_iphone_CALayer();
    org_xmlvm_iphone_CALayer* me = (org_xmlvm_iphone_CALayer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CALayer));
    me->tib = &__TIB_org_xmlvm_iphone_CALayer;
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
    if (!__TIB_org_xmlvm_iphone_CALayer.classInitialized) __INIT_org_xmlvm_iphone_CALayer();
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

