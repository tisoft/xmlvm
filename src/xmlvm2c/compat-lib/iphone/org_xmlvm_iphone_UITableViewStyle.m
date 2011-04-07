#include "xmlvm.h"

#include "org_xmlvm_iphone_UITableViewStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewStyle

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewStyle __TIB_org_xmlvm_iphone_UITableViewStyle = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITableViewStyle, // classInitializer
    "org.xmlvm.iphone.UITableViewStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UITableViewStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewStyle_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewStyle_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewStyle_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewStyle_Plain;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewStyle_Grouped;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Plain",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewStyle_Plain,
    "",
    JAVA_NULL},
    {"Grouped",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewStyle_Grouped,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewStyle();
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

void __INIT_org_xmlvm_iphone_UITableViewStyle()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UITableViewStyle);
    if (!__TIB_org_xmlvm_iphone_UITableViewStyle.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UITableViewStyle();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UITableViewStyle);
}

void __INIT_IMPL_org_xmlvm_iphone_UITableViewStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewStyle.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UITableViewStyle.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_UITableViewStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewStyle;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UITableViewStyle.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UITableViewStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces
        _STATIC_org_xmlvm_iphone_UITableViewStyle_Plain = 0;
        _STATIC_org_xmlvm_iphone_UITableViewStyle_Grouped = 1;

        __TIB_org_xmlvm_iphone_UITableViewStyle.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITableViewStyle.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UITableViewStyle.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITableViewStyle.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UITableViewStyle.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UITableViewStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewStyle);
        __TIB_org_xmlvm_iphone_UITableViewStyle.clazz = __CLASS_org_xmlvm_iphone_UITableViewStyle;
        __TIB_org_xmlvm_iphone_UITableViewStyle.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UITableViewStyle_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewStyle);
        __CLASS_org_xmlvm_iphone_UITableViewStyle_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewStyle_1ARRAY);
        __CLASS_org_xmlvm_iphone_UITableViewStyle_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewStyle_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewStyle]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UITableViewStyle.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UITableViewStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewStyle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewStyle(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewStyle();
    org_xmlvm_iphone_UITableViewStyle* me = (org_xmlvm_iphone_UITableViewStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewStyle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewStyle(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewStyle_GET_Plain()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewStyle_Plain;
}

void org_xmlvm_iphone_UITableViewStyle_PUT_Plain(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewStyle();
    _STATIC_org_xmlvm_iphone_UITableViewStyle_Plain = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewStyle_GET_Grouped()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewStyle_Grouped;
}

void org_xmlvm_iphone_UITableViewStyle_PUT_Grouped(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewStyle();
    _STATIC_org_xmlvm_iphone_UITableViewStyle_Grouped = v;
}

