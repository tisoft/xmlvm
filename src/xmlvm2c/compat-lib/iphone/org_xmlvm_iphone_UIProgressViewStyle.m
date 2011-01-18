#include "xmlvm.h"

#include "org_xmlvm_iphone_UIProgressViewStyle.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIProgressViewStyle __TIB_org_xmlvm_iphone_UIProgressViewStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIProgressViewStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIProgressViewStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIProgressViewStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Default",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default,
    "",
    JAVA_NULL},
    {"Bar",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIProgressViewStyle();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIProgressViewStyle___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIProgressViewStyle()
{
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIProgressViewStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIProgressViewStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default = 0;
    _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar = 1;

    __TIB_org_xmlvm_iphone_UIProgressViewStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIProgressViewStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIProgressViewStyle);
    __TIB_org_xmlvm_iphone_UIProgressViewStyle.clazz = __CLASS_org_xmlvm_iphone_UIProgressViewStyle;
    __CLASS_org_xmlvm_iphone_UIProgressViewStyle_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIProgressViewStyle, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIProgressViewStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIProgressViewStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIProgressViewStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIProgressViewStyle()
{
    if (!__TIB_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    org_xmlvm_iphone_UIProgressViewStyle* me = (org_xmlvm_iphone_UIProgressViewStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIProgressViewStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UIProgressViewStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIProgressViewStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIProgressViewStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIProgressViewStyle();
    org_xmlvm_iphone_UIProgressViewStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIProgressViewStyle_GET_Default()
{
    if (!__TIB_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    return _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default;
}

void org_xmlvm_iphone_UIProgressViewStyle_PUT_Default(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIProgressViewStyle_GET_Bar()
{
    if (!__TIB_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    return _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar;
}

void org_xmlvm_iphone_UIProgressViewStyle_PUT_Bar(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIProgressViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UIProgressViewStyle();
    _STATIC_org_xmlvm_iphone_UIProgressViewStyle_Bar = v;
}

void org_xmlvm_iphone_UIProgressViewStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIProgressViewStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

