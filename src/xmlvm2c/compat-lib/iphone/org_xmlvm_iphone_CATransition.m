#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CATransition.h"

__TIB_DEFINITION_org_xmlvm_iphone_CATransition __TIB_org_xmlvm_iphone_CATransition = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CATransition, // classInitializer
    "org.xmlvm.iphone.CATransition", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CAAnimation, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransition;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CATransition_ARRAYTYPE;

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

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Fade",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CATransition_Fade,
    "",
    JAVA_NULL},
    {"MoveIn",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CATransition_MoveIn,
    "",
    JAVA_NULL},
    {"Push",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CATransition_Push,
    "",
    JAVA_NULL},
    {"Reveal",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CATransition_Reveal,
    "",
    JAVA_NULL},
    {"FromRight",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CATransition_FromRight,
    "",
    JAVA_NULL},
    {"FromLeft",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CATransition_FromLeft,
    "",
    JAVA_NULL},
    {"FromTop",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CATransition_FromTop,
    "",
    JAVA_NULL},
    {"FromBottom",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CATransition_FromBottom,
    "",
    JAVA_NULL},
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CATransition();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CATransition___INIT___(obj);
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
    &__CLASS_float,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"animation",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getEndProgress",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setEndProgress",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getStartProgress",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setStartProgress",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSubtype",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSubtype",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getType",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setType",
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
        org_xmlvm_iphone_CATransition_animation__();
        break;
    case 1:
        org_xmlvm_iphone_CATransition_getEndProgress__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_CATransition_setEndProgress___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 3:
        org_xmlvm_iphone_CATransition_getStartProgress__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_CATransition_setStartProgress___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 5:
        org_xmlvm_iphone_CATransition_getSubtype__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_CATransition_setSubtype___java_lang_String(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_CATransition_getType__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_CATransition_setType___java_lang_String(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CATransition()
{
    __TIB_org_xmlvm_iphone_CATransition.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_CAAnimation.classInitialized) __INIT_org_xmlvm_iphone_CAAnimation();
    __TIB_org_xmlvm_iphone_CATransition.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CATransition;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CATransition.vtable, __TIB_org_xmlvm_iphone_CAAnimation.vtable, sizeof(__TIB_org_xmlvm_iphone_CAAnimation.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CATransition.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_getEndProgress__;
    __TIB_org_xmlvm_iphone_CATransition.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_setEndProgress___float;
    __TIB_org_xmlvm_iphone_CATransition.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_getStartProgress__;
    __TIB_org_xmlvm_iphone_CATransition.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_setStartProgress___float;
    __TIB_org_xmlvm_iphone_CATransition.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_getSubtype__;
    __TIB_org_xmlvm_iphone_CATransition.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_setSubtype___java_lang_String;
    __TIB_org_xmlvm_iphone_CATransition.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_getType__;
    __TIB_org_xmlvm_iphone_CATransition.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_CATransition_setType___java_lang_String;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CATransition.numImplementedInterfaces = 2;
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 2);
    __INIT_FOR_CLASS_org_xmlvm_iphone_CAMediaTiming(&__TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]);
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[11] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[12] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[13] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[14] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[15] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[16] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[17] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[18] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[19] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[20] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[21] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[22] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[23] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[24] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[25] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][0]->vtable[26] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    __INIT_FOR_CLASS_org_xmlvm_iphone_CAAction(&__TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]);
    __TIB_org_xmlvm_iphone_CATransition.implementedInterfaces[0][1]->vtable[11] = __TIB_org_xmlvm_iphone_CATransition.vtable[-1];
    _STATIC_org_xmlvm_iphone_CATransition_Fade = (java_lang_String*) XMLVMArray_createFromString("\"fade\"");
    _STATIC_org_xmlvm_iphone_CATransition_MoveIn = (java_lang_String*) XMLVMArray_createFromString("\"moveIn\"");
    _STATIC_org_xmlvm_iphone_CATransition_Push = (java_lang_String*) XMLVMArray_createFromString("\"push\"");
    _STATIC_org_xmlvm_iphone_CATransition_Reveal = (java_lang_String*) XMLVMArray_createFromString("\"reveal\"");
    _STATIC_org_xmlvm_iphone_CATransition_FromRight = (java_lang_String*) XMLVMArray_createFromString("\"fromRight\"");
    _STATIC_org_xmlvm_iphone_CATransition_FromLeft = (java_lang_String*) XMLVMArray_createFromString("\"fromLeft\"");
    _STATIC_org_xmlvm_iphone_CATransition_FromTop = (java_lang_String*) XMLVMArray_createFromString("\"fromTop\"");
    _STATIC_org_xmlvm_iphone_CATransition_FromBottom = (java_lang_String*) XMLVMArray_createFromString("\"fromBottom\"");

    __TIB_org_xmlvm_iphone_CATransition.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CATransition.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CATransition.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CATransition.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CATransition.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CATransition.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CATransition.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CATransition.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CATransition = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CATransition);
    __TIB_org_xmlvm_iphone_CATransition.clazz = __CLASS_org_xmlvm_iphone_CATransition;
    __CLASS_org_xmlvm_iphone_CATransition_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CATransition, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CATransition]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CATransition(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CATransition]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CATransition()
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    org_xmlvm_iphone_CATransition* me = (org_xmlvm_iphone_CATransition*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CATransition));
    me->tib = &__TIB_org_xmlvm_iphone_CATransition;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CATransition]
    //XMLVM_END_WRAPPER
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
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_Fade;
}

void org_xmlvm_iphone_CATransition_PUT_Fade(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_Fade = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_MoveIn()
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_MoveIn;
}

void org_xmlvm_iphone_CATransition_PUT_MoveIn(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_MoveIn = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_Push()
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_Push;
}

void org_xmlvm_iphone_CATransition_PUT_Push(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_Push = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_Reveal()
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_Reveal;
}

void org_xmlvm_iphone_CATransition_PUT_Reveal(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_Reveal = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromRight()
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_FromRight;
}

void org_xmlvm_iphone_CATransition_PUT_FromRight(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_FromRight = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromLeft()
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_FromLeft;
}

void org_xmlvm_iphone_CATransition_PUT_FromLeft(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_FromLeft = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromTop()
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_FromTop;
}

void org_xmlvm_iphone_CATransition_PUT_FromTop(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    _STATIC_org_xmlvm_iphone_CATransition_FromTop = v;
}

JAVA_OBJECT org_xmlvm_iphone_CATransition_GET_FromBottom()
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
    return _STATIC_org_xmlvm_iphone_CATransition_FromBottom;
}

void org_xmlvm_iphone_CATransition_PUT_FromBottom(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
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
    if (!__TIB_org_xmlvm_iphone_CATransition.classInitialized) __INIT_org_xmlvm_iphone_CATransition();
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

