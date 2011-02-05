#include "xmlvm.h"

#include "org_xmlvm_iphone_UIKeyboardAppearance.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIKeyboardAppearance __TIB_org_xmlvm_iphone_UIKeyboardAppearance = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIKeyboardAppearance, // classInitializer
    "org.xmlvm.iphone.UIKeyboardAppearance", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardAppearance;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIKeyboardAppearance_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Default",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default,
    "",
    JAVA_NULL},
    {"Alert",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIKeyboardAppearance();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIKeyboardAppearance___INIT___(obj);
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

void __INIT_org_xmlvm_iphone_UIKeyboardAppearance()
{
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardAppearance;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIKeyboardAppearance.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default = 0;
    _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert = 1;

    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIKeyboardAppearance = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIKeyboardAppearance);
    __TIB_org_xmlvm_iphone_UIKeyboardAppearance.clazz = __CLASS_org_xmlvm_iphone_UIKeyboardAppearance;
    __CLASS_org_xmlvm_iphone_UIKeyboardAppearance_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIKeyboardAppearance, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIKeyboardAppearance]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIKeyboardAppearance(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIKeyboardAppearance]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIKeyboardAppearance()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    org_xmlvm_iphone_UIKeyboardAppearance* me = (org_xmlvm_iphone_UIKeyboardAppearance*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIKeyboardAppearance));
    me->tib = &__TIB_org_xmlvm_iphone_UIKeyboardAppearance;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIKeyboardAppearance]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIKeyboardAppearance()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIKeyboardAppearance();
    org_xmlvm_iphone_UIKeyboardAppearance___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardAppearance_GET_Default()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    return _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default;
}

void org_xmlvm_iphone_UIKeyboardAppearance_PUT_Default(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIKeyboardAppearance_GET_Alert()
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    return _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert;
}

void org_xmlvm_iphone_UIKeyboardAppearance_PUT_Alert(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIKeyboardAppearance.classInitialized) __INIT_org_xmlvm_iphone_UIKeyboardAppearance();
    _STATIC_org_xmlvm_iphone_UIKeyboardAppearance_Alert = v;
}

void org_xmlvm_iphone_UIKeyboardAppearance___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIKeyboardAppearance___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

