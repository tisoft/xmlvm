#include "xmlvm.h"

#include "org_xmlvm_iphone_UITableViewCellSeparatorStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewCellSeparatorStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewCellSeparatorStyle

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewCellSeparatorStyle __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle, // classInitializer
    "org.xmlvm.iphone.UITableViewCellSeparatorStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UITableViewCellSeparatorStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellSeparatorStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellSeparatorStyle_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None,
    "",
    JAVA_NULL},
    {"SingleLine",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
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

void __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle()
{
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellSeparatorStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None = 0;
    _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine = 1;

    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableViewCellSeparatorStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle);
    __TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.clazz = __CLASS_org_xmlvm_iphone_UITableViewCellSeparatorStyle;
    __CLASS_org_xmlvm_iphone_UITableViewCellSeparatorStyle_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCellSeparatorStyle, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITableViewCellSeparatorStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCellSeparatorStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCellSeparatorStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    org_xmlvm_iphone_UITableViewCellSeparatorStyle* me = (org_xmlvm_iphone_UITableViewCellSeparatorStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCellSeparatorStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCellSeparatorStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellSeparatorStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellSeparatorStyle_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None;
}

void org_xmlvm_iphone_UITableViewCellSeparatorStyle_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_None = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellSeparatorStyle_GET_SingleLine()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine;
}

void org_xmlvm_iphone_UITableViewCellSeparatorStyle_PUT_SingleLine(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellSeparatorStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellSeparatorStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellSeparatorStyle_SingleLine = v;
}

