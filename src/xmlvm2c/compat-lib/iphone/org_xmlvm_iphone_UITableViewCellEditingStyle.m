#include "xmlvm.h"

#include "org_xmlvm_iphone_UITableViewCellEditingStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewCellEditingStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewCellEditingStyle

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewCellEditingStyle __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle, // classInitializer
    "org.xmlvm.iphone.UITableViewCellEditingStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UITableViewCellEditingStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None,
    "",
    JAVA_NULL},
    {"Delete",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete,
    "",
    JAVA_NULL},
    {"Insert",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewCellEditingStyle();
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

void __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle);
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UITableViewCellEditingStyle();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle);
}

void __INIT_IMPL_org_xmlvm_iphone_UITableViewCellEditingStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellEditingStyle;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces
        _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None = 0;
        _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete = 1;
        _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert = 2;

        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle);
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.clazz = __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle;
        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle);
        __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_1ARRAY);
        __CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewCellEditingStyle_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewCellEditingStyle]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UITableViewCellEditingStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewCellEditingStyle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewCellEditingStyle(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewCellEditingStyle()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    org_xmlvm_iphone_UITableViewCellEditingStyle* me = (org_xmlvm_iphone_UITableViewCellEditingStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewCellEditingStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewCellEditingStyle(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewCellEditingStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewCellEditingStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None;
}

void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_None = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_Delete()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete;
}

void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_Delete(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Delete = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewCellEditingStyle_GET_Insert()
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    return _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert;
}

void org_xmlvm_iphone_UITableViewCellEditingStyle_PUT_Insert(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UITableViewCellEditingStyle.classInitialized) __INIT_org_xmlvm_iphone_UITableViewCellEditingStyle();
    _STATIC_org_xmlvm_iphone_UITableViewCellEditingStyle_Insert = v;
}

