#include "xmlvm.h"

#include "org_xmlvm_iphone_UITableViewCellStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewCellStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewCellStyle

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewCellStyle __TIB_org_xmlvm_iphone_UITableViewCellStyle = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITableViewCellStyle, // classInitializer
    "org.xmlvm.iphone.UITableViewCellStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UITableViewCellStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Default",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default,
    "",
    JAVA_NULL},
    {"Value1",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1,
    "",
    JAVA_NULL},
    {"Value2",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2,
    "",
    JAVA_NULL},
    {"Subtitle",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewCellStyle();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
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

void __INIT_org_xmlvm_iphone_UITableViewCellStyle()
{
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewCellStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default = 0;
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1 = 1;
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2 = 2;
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle = 3;

    __TIB_org_xmlvm_iphone_UITableViewCellStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableViewCellStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewCellStyle);
    __TIB_org_xmlvm_iphone_UITableViewCellStyle.clazz = __CLASS_org_xmlvm_iphone_UITableViewCellStyle;
    __CLASS_org_xmlvm_iphone_UITableViewCellStyle_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCellStyle, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCellStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITableViewCellStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCellStyle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewCellStyle(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCellStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    org_xmlvm_iphone_UITableViewCellStyle* me = (org_xmlvm_iphone_UITableViewCellStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCellStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewCellStyle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewCellStyle(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCellStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Default()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default;
}

void org_xmlvm_iphone_UITableViewCellStyle_PUT_Default(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Default = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Value1()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1;
}

void org_xmlvm_iphone_UITableViewCellStyle_PUT_Value1(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value1 = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Value2()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2;
}

void org_xmlvm_iphone_UITableViewCellStyle_PUT_Value2(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Value2 = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellStyle_GET_Subtitle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle;
}

void org_xmlvm_iphone_UITableViewCellStyle_PUT_Subtitle(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellStyle_Subtitle = v;
}

