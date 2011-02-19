#include "xmlvm.h"
#include "org_xmlvm_iphone_UIView.h"

#include "org_xmlvm_iphone_UITouch.h"

#define XMLVM_CURRENT_CLASS_NAME UITouch
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITouch

__TIB_DEFINITION_org_xmlvm_iphone_UITouch __TIB_org_xmlvm_iphone_UITouch = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITouch, // classInitializer
    "org.xmlvm.iphone.UITouch", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UITouch), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouch;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITouch_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_UITouch_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, UITouch* touch)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, touch);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_UIView,
    &__CLASS_int,
    &__CLASS_int,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITouch();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UITouch___INIT____int_org_xmlvm_iphone_UIView_int_int(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1], ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"locationInView",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getView",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getWindow",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTapCount",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTimestamp",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPhase",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UITouch_getView__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UITouch_getWindow__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UITouch_getTapCount__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UITouch_getTimestamp__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UITouch_getPhase__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UITouch()
{
    __TIB_org_xmlvm_iphone_UITouch.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UITouch.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITouch;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITouch.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITouch.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UITouch.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getView__;
    __TIB_org_xmlvm_iphone_UITouch.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getWindow__;
    __TIB_org_xmlvm_iphone_UITouch.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getTapCount__;
    __TIB_org_xmlvm_iphone_UITouch.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getTimestamp__;
    __TIB_org_xmlvm_iphone_UITouch.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UITouch_getPhase__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITouch.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITouch.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITouch.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITouch.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITouch.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITouch.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITouch.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITouch.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITouch.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITouch.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITouch = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITouch);
    __TIB_org_xmlvm_iphone_UITouch.clazz = __CLASS_org_xmlvm_iphone_UITouch;
    __CLASS_org_xmlvm_iphone_UITouch_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITouch, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITouch]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITouch(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITouch]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITouch()
{
    if (!__TIB_org_xmlvm_iphone_UITouch.classInitialized) __INIT_org_xmlvm_iphone_UITouch();
    org_xmlvm_iphone_UITouch* me = (org_xmlvm_iphone_UITouch*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITouch));
    me->tib = &__TIB_org_xmlvm_iphone_UITouch;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITouch]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITouch()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UITouch___INIT____int_org_xmlvm_iphone_UIView_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch___INIT____int_org_xmlvm_iphone_UIView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_locationInView___org_xmlvm_iphone_UIView]
    UITouch* touch = ((org_xmlvm_iphone_NSObject*) me)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    UIView* view = ((org_xmlvm_iphone_NSObject*) n1)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    CGPoint point = [touch locationInView:view];
    return fromCGPoint(point);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITouch_getView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITouch_getWindow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getWindow__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITouch_getTapCount__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getTapCount__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UITouch_getTimestamp__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getTimestamp__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITouch_getPhase__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITouch_getPhase__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

