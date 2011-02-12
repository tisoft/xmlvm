#include "xmlvm.h"

#include "org_xmlvm_iphone_UISegmentedControlStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UISegmentedControlStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UISegmentedControlStyle

__TIB_DEFINITION_org_xmlvm_iphone_UISegmentedControlStyle __TIB_org_xmlvm_iphone_UISegmentedControlStyle = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UISegmentedControlStyle, // classInitializer
    "org.xmlvm.iphone.UISegmentedControlStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISegmentedControlStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISegmentedControlStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain;
static JAVA_INT _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered;
static JAVA_INT _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Plain",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain,
    "",
    JAVA_NULL},
    {"Bordered",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered,
    "",
    JAVA_NULL},
    {"Bar",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UISegmentedControlStyle();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UISegmentedControlStyle___INIT___(obj);
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

void __INIT_org_xmlvm_iphone_UISegmentedControlStyle()
{
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISegmentedControlStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISegmentedControlStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain = 0;
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered = 1;
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar = 2;

    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UISegmentedControlStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UISegmentedControlStyle);
    __TIB_org_xmlvm_iphone_UISegmentedControlStyle.clazz = __CLASS_org_xmlvm_iphone_UISegmentedControlStyle;
    __CLASS_org_xmlvm_iphone_UISegmentedControlStyle_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISegmentedControlStyle, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISegmentedControlStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UISegmentedControlStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISegmentedControlStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISegmentedControlStyle()
{
    if (!__TIB_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    org_xmlvm_iphone_UISegmentedControlStyle* me = (org_xmlvm_iphone_UISegmentedControlStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISegmentedControlStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UISegmentedControlStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISegmentedControlStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISegmentedControlStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISegmentedControlStyle();
    org_xmlvm_iphone_UISegmentedControlStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UISegmentedControlStyle_GET_Plain()
{
    if (!__TIB_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    return _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain;
}

void org_xmlvm_iphone_UISegmentedControlStyle_PUT_Plain(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Plain = v;
}

JAVA_INT org_xmlvm_iphone_UISegmentedControlStyle_GET_Bordered()
{
    if (!__TIB_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    return _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered;
}

void org_xmlvm_iphone_UISegmentedControlStyle_PUT_Bordered(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bordered = v;
}

JAVA_INT org_xmlvm_iphone_UISegmentedControlStyle_GET_Bar()
{
    if (!__TIB_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    return _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar;
}

void org_xmlvm_iphone_UISegmentedControlStyle_PUT_Bar(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UISegmentedControlStyle.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControlStyle();
    _STATIC_org_xmlvm_iphone_UISegmentedControlStyle_Bar = v;
}

void org_xmlvm_iphone_UISegmentedControlStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControlStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

