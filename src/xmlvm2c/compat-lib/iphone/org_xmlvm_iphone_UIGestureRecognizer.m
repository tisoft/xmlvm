#include "xmlvm.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_NSSelector.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "org_xmlvm_iphone_UIGestureRecognizerDelegate.h"
#include "org_xmlvm_iphone_UITouch.h"
#include "org_xmlvm_iphone_UIView.h"

#include "org_xmlvm_iphone_UIGestureRecognizer.h"

#define XMLVM_CURRENT_CLASS_NAME UIGestureRecognizer
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIGestureRecognizer

__TIB_DEFINITION_org_xmlvm_iphone_UIGestureRecognizer __TIB_org_xmlvm_iphone_UIGestureRecognizer = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIGestureRecognizer, // classInitializer
    "org.xmlvm.iphone.UIGestureRecognizer", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIGestureRecognizer), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGestureRecognizer;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGestureRecognizer_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGestureRecognizer_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGestureRecognizer_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import "java_lang_RuntimeException.h"
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSSelector,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSSelector;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIGestureRecognizer();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIGestureRecognizer___INIT____org_xmlvm_iphone_NSSelector(obj, argsArray[0]);
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
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIGestureRecognizerDelegate,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSSelector,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSSelector,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIGestureRecognizer,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UITouch,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIGestureRecognizer,
};

static JAVA_OBJECT* __method22_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIGestureRecognizer,
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method24_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method25_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method26_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getState",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIGestureRecognizerDelegate;",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIGestureRecognizerDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isEnabled",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setEnabled",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getView",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIView;",
    JAVA_NULL,
    JAVA_NULL},
    {"isCancelsTouchesInView",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setCancelsTouchesInView",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isDelaysTouchesBegan",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelaysTouchesBegan",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isDelaysTouchesEnded",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelaysTouchesEnded",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"addTarget",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSSelector;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"removeTarget",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSSelector;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"requireGestureRecognizerToFail",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIGestureRecognizer;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"locationInView",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIView;)Lorg/xmlvm/iphone/CGPoint;",
    JAVA_NULL,
    JAVA_NULL},
    {"numberOfTouches",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"locationOfTouch",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(ILorg/xmlvm/iphone/UIView;)Lorg/xmlvm/iphone/CGPoint;",
    JAVA_NULL,
    JAVA_NULL},
    {"ignoreTouch",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UITouch;Lorg/xmlvm/iphone/UIEvent;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setState",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"reset",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"canPreventGestureRecognizer",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIGestureRecognizer;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"canBePreventedByGestureRecognizer",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIGestureRecognizer;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesBegan",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Set;Lorg/xmlvm/iphone/UIEvent;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesMoved",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Set;Lorg/xmlvm/iphone/UIEvent;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesEnded",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Set;Lorg/xmlvm/iphone/UIEvent;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesCancelled",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Set;Lorg/xmlvm/iphone/UIEvent;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIGestureRecognizer_getState__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIGestureRecognizer_getDelegate__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIGestureRecognizer_setDelegate___org_xmlvm_iphone_UIGestureRecognizerDelegate(receiver, argsArray[0]);
        break;
    case 3:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIGestureRecognizer_isEnabled__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 4:
        org_xmlvm_iphone_UIGestureRecognizer_setEnabled___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 5:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIGestureRecognizer_getView__(receiver);
        break;
    case 6:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIGestureRecognizer_isCancelsTouchesInView__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 7:
        org_xmlvm_iphone_UIGestureRecognizer_setCancelsTouchesInView___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 8:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIGestureRecognizer_isDelaysTouchesBegan__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 9:
        org_xmlvm_iphone_UIGestureRecognizer_setDelaysTouchesBegan___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 10:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIGestureRecognizer_isDelaysTouchesEnded__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 11:
        org_xmlvm_iphone_UIGestureRecognizer_setDelaysTouchesEnded___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 12:
        org_xmlvm_iphone_UIGestureRecognizer_addTarget___org_xmlvm_iphone_NSSelector(receiver, argsArray[0]);
        break;
    case 13:
        org_xmlvm_iphone_UIGestureRecognizer_removeTarget___org_xmlvm_iphone_NSSelector(receiver, argsArray[0]);
        break;
    case 14:
        org_xmlvm_iphone_UIGestureRecognizer_requireGestureRecognizerToFail___org_xmlvm_iphone_UIGestureRecognizer(receiver, argsArray[0]);
        break;
    case 15:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIGestureRecognizer_locationInView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 16:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIGestureRecognizer_numberOfTouches__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 17:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIGestureRecognizer_locationOfTouch___int_org_xmlvm_iphone_UIView(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1]);
        break;
    case 18:
        org_xmlvm_iphone_UIGestureRecognizer_ignoreTouch___org_xmlvm_iphone_UITouch_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 19:
        org_xmlvm_iphone_UIGestureRecognizer_setState___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 20:
        org_xmlvm_iphone_UIGestureRecognizer_reset__(receiver);
        break;
    case 21:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIGestureRecognizer_canPreventGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer(receiver, argsArray[0]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 22:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIGestureRecognizer_canBePreventedByGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer(receiver, argsArray[0]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 23:
        org_xmlvm_iphone_UIGestureRecognizer_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 24:
        org_xmlvm_iphone_UIGestureRecognizer_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 25:
        org_xmlvm_iphone_UIGestureRecognizer_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 26:
        org_xmlvm_iphone_UIGestureRecognizer_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIGestureRecognizer()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIGestureRecognizer);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIGestureRecognizer.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIGestureRecognizer);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIGestureRecognizer.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIGestureRecognizer.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIGestureRecognizer.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIGestureRecognizer")
        __INIT_IMPL_org_xmlvm_iphone_UIGestureRecognizer();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIGestureRecognizer()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIGestureRecognizer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIGestureRecognizer.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIGestureRecognizer.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIGestureRecognizer = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIGestureRecognizer);
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.clazz = __CLASS_org_xmlvm_iphone_UIGestureRecognizer;
    __TIB_org_xmlvm_iphone_UIGestureRecognizer.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIGestureRecognizer_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGestureRecognizer);
    __CLASS_org_xmlvm_iphone_UIGestureRecognizer_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGestureRecognizer_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIGestureRecognizer_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGestureRecognizer_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIGestureRecognizer]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIGestureRecognizer.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIGestureRecognizer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIGestureRecognizer]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGestureRecognizer(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGestureRecognizer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIGestureRecognizer()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIGestureRecognizer)
org_xmlvm_iphone_UIGestureRecognizer* me = (org_xmlvm_iphone_UIGestureRecognizer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIGestureRecognizer));
    me->tib = &__TIB_org_xmlvm_iphone_UIGestureRecognizer;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGestureRecognizer(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIGestureRecognizer]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIGestureRecognizer()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIGestureRecognizer___INIT____org_xmlvm_iphone_NSSelector(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer___INIT____org_xmlvm_iphone_NSSelector]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "<init>", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.o = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 33)
    XMLVM_CHECK_NPE(0)
    org_xmlvm_iphone_NSObject___INIT___(_r0.o);
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 34)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIGestureRecognizer_getState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_getState__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "getState", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 43)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIGestureRecognizer_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_getDelegate__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "getDelegate", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 50)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_setDelegate___org_xmlvm_iphone_UIGestureRecognizerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_setDelegate___org_xmlvm_iphone_UIGestureRecognizerDelegate]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "setDelegate", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 57)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIGestureRecognizer_isEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_isEnabled__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "isEnabled", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 64)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_setEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_setEnabled___boolean]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "setEnabled", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.i = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 71)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIGestureRecognizer_getView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_getView__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "getView", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 78)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIGestureRecognizer_isCancelsTouchesInView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_isCancelsTouchesInView__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "isCancelsTouchesInView", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 85)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_setCancelsTouchesInView___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_setCancelsTouchesInView___boolean]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "setCancelsTouchesInView", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.i = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 92)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIGestureRecognizer_isDelaysTouchesBegan__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_isDelaysTouchesBegan__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "isDelaysTouchesBegan", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 99)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_setDelaysTouchesBegan___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_setDelaysTouchesBegan___boolean]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "setDelaysTouchesBegan", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.i = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 106)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIGestureRecognizer_isDelaysTouchesEnded__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_isDelaysTouchesEnded__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "isDelaysTouchesEnded", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 113)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_setDelaysTouchesEnded___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_setDelaysTouchesEnded___boolean]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "setDelaysTouchesEnded", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.i = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 120)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_addTarget___org_xmlvm_iphone_NSSelector(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_addTarget___org_xmlvm_iphone_NSSelector]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "addTarget", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 130)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_removeTarget___org_xmlvm_iphone_NSSelector(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_removeTarget___org_xmlvm_iphone_NSSelector]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "removeTarget", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 137)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_requireGestureRecognizerToFail___org_xmlvm_iphone_UIGestureRecognizer(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_requireGestureRecognizerToFail___org_xmlvm_iphone_UIGestureRecognizer]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "requireGestureRecognizerToFail", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 145)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIGestureRecognizer_locationInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_locationInView___org_xmlvm_iphone_UIView]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "locationInView", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 152)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIGestureRecognizer_numberOfTouches__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_numberOfTouches__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "numberOfTouches", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 159)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIGestureRecognizer_locationOfTouch___int_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_locationOfTouch___int_org_xmlvm_iphone_UIView]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "locationOfTouch", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    _r2.o = me;
    _r3.i = n1;
    _r4.o = n2;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 166)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_ignoreTouch___org_xmlvm_iphone_UITouch_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_ignoreTouch___org_xmlvm_iphone_UITouch_org_xmlvm_iphone_UIEvent]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "ignoreTouch", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    _r2.o = me;
    _r3.o = n1;
    _r4.o = n2;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 173)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_setState___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_setState___int]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "setState", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.i = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 180)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_reset__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_reset__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "reset", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r2.o = me;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 187)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIGestureRecognizer_canPreventGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_canPreventGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "canPreventGestureRecognizer", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 195)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIGestureRecognizer_canBePreventedByGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_canBePreventedByGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "canBePreventedByGestureRecognizer", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    _r2.o = me;
    _r3.o = n1;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 203)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "touchesBegan", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    _r2.o = me;
    _r3.o = n1;
    _r4.o = n2;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 210)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_touchesMoved___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "touchesMoved", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    _r2.o = me;
    _r3.o = n1;
    _r4.o = n2;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 217)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "touchesEnded", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    _r2.o = me;
    _r3.o = n1;
    _r4.o = n2;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 224)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGestureRecognizer_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGestureRecognizer_touchesCancelled___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.UIGestureRecognizer", "touchesCancelled", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    _r2.o = me;
    _r3.o = n1;
    _r4.o = n2;
    XMLVM_SOURCE_POSITION("UIGestureRecognizer.java", 231)
    _r0.o = __NEW_java_lang_RuntimeException();
    // "Stub"
    _r1.o = xmlvm_create_java_string_from_pool(40);
    XMLVM_CHECK_NPE(0)
    java_lang_RuntimeException___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_THROW_CUSTOM(_r0.o)
    //XMLVM_END_WRAPPER
}

