#include "xmlvm.h"

#include "org_xmlvm_iphone_UIInterfaceOrientation.h"

#define XMLVM_CURRENT_CLASS_NAME UIInterfaceOrientation
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIInterfaceOrientation

__TIB_DEFINITION_org_xmlvm_iphone_UIInterfaceOrientation __TIB_org_xmlvm_iphone_UIInterfaceOrientation = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIInterfaceOrientation, // classInitializer
    "org.xmlvm.iphone.UIInterfaceOrientation", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIInterfaceOrientation), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIInterfaceOrientation;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIInterfaceOrientation_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Portrait",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait,
    "",
    JAVA_NULL},
    {"PortraitUpsideDown",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown,
    "",
    JAVA_NULL},
    {"LandscapeLeft",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft,
    "",
    JAVA_NULL},
    {"LandscapeRight",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIInterfaceOrientation();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIInterfaceOrientation___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIInterfaceOrientation()
{
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIInterfaceOrientation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIInterfaceOrientation.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait = 1;
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown = 2;
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft = 3;
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight = 4;

    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIInterfaceOrientation = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIInterfaceOrientation);
    __TIB_org_xmlvm_iphone_UIInterfaceOrientation.clazz = __CLASS_org_xmlvm_iphone_UIInterfaceOrientation;
    __CLASS_org_xmlvm_iphone_UIInterfaceOrientation_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIInterfaceOrientation, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIInterfaceOrientation]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIInterfaceOrientation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIInterfaceOrientation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIInterfaceOrientation()
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    org_xmlvm_iphone_UIInterfaceOrientation* me = (org_xmlvm_iphone_UIInterfaceOrientation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIInterfaceOrientation));
    me->tib = &__TIB_org_xmlvm_iphone_UIInterfaceOrientation;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIInterfaceOrientation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIInterfaceOrientation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIInterfaceOrientation();
    org_xmlvm_iphone_UIInterfaceOrientation___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_Portrait()
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    return _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait;
}

void org_xmlvm_iphone_UIInterfaceOrientation_PUT_Portrait(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_Portrait = v;
}

JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_PortraitUpsideDown()
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    return _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown;
}

void org_xmlvm_iphone_UIInterfaceOrientation_PUT_PortraitUpsideDown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_PortraitUpsideDown = v;
}

JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_LandscapeLeft()
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    return _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft;
}

void org_xmlvm_iphone_UIInterfaceOrientation_PUT_LandscapeLeft(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIInterfaceOrientation_GET_LandscapeRight()
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    return _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight;
}

void org_xmlvm_iphone_UIInterfaceOrientation_PUT_LandscapeRight(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIInterfaceOrientation.classInitialized) __INIT_org_xmlvm_iphone_UIInterfaceOrientation();
    _STATIC_org_xmlvm_iphone_UIInterfaceOrientation_LandscapeRight = v;
}

void org_xmlvm_iphone_UIInterfaceOrientation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIInterfaceOrientation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

