#include "xmlvm.h"

#include "org_xmlvm_iphone_UIBarButtonItemStyle.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemStyle __TIB_org_xmlvm_iphone_UIBarButtonItemStyle = {
    0, // classInitialized
    "org.xmlvm.iphone.UIBarButtonItemStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Plain",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain,
    "",
    JAVA_NULL},
    {"Bordered",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered,
    "",
    JAVA_NULL},
    {"Done",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIBarButtonItemStyle();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIBarButtonItemStyle___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItemStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain = 0;
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered = 1;
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done = 2;

    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIBarButtonItemStyle);
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.clazz = __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle;
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIBarButtonItemStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    org_xmlvm_iphone_UIBarButtonItemStyle* me = (org_xmlvm_iphone_UIBarButtonItemStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarButtonItemStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UIBarButtonItemStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIBarButtonItemStyle();
    org_xmlvm_iphone_UIBarButtonItemStyle___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Plain()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Plain(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Bordered()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Bordered(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Done()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Done(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done = v;
}

void org_xmlvm_iphone_UIBarButtonItemStyle___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItemStyle___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

