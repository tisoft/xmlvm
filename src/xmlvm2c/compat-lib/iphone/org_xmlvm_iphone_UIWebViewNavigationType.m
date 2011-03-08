#include "xmlvm.h"

#include "org_xmlvm_iphone_UIWebViewNavigationType.h"

#define XMLVM_CURRENT_CLASS_NAME UIWebViewNavigationType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIWebViewNavigationType

__TIB_DEFINITION_org_xmlvm_iphone_UIWebViewNavigationType __TIB_org_xmlvm_iphone_UIWebViewNavigationType = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIWebViewNavigationType, // classInitializer
    "org.xmlvm.iphone.UIWebViewNavigationType", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIWebViewNavigationType), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebViewNavigationType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebViewNavigationType_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_LinkClicked;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormSubmitted;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_BackForward;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Reload;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormResubmitted;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Other;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"LinkClicked",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIWebViewNavigationType_LinkClicked,
    "",
    JAVA_NULL},
    {"FormSubmitted",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormSubmitted,
    "",
    JAVA_NULL},
    {"BackForward",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIWebViewNavigationType_BackForward,
    "",
    JAVA_NULL},
    {"Reload",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Reload,
    "",
    JAVA_NULL},
    {"FormResubmitted",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormResubmitted,
    "",
    JAVA_NULL},
    {"Other",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Other,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIWebViewNavigationType();
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

void __INIT_org_xmlvm_iphone_UIWebViewNavigationType()
{
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIWebViewNavigationType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIWebViewNavigationType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_LinkClicked = 0;
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormSubmitted = 1;
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_BackForward = 2;
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Reload = 3;
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormResubmitted = 4;
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Other = 5;

    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIWebViewNavigationType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIWebViewNavigationType);
    __TIB_org_xmlvm_iphone_UIWebViewNavigationType.clazz = __CLASS_org_xmlvm_iphone_UIWebViewNavigationType;
    __CLASS_org_xmlvm_iphone_UIWebViewNavigationType_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIWebViewNavigationType, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIWebViewNavigationType]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIWebViewNavigationType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIWebViewNavigationType]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIWebViewNavigationType(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIWebViewNavigationType()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    org_xmlvm_iphone_UIWebViewNavigationType* me = (org_xmlvm_iphone_UIWebViewNavigationType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIWebViewNavigationType));
    me->tib = &__TIB_org_xmlvm_iphone_UIWebViewNavigationType;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIWebViewNavigationType(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIWebViewNavigationType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIWebViewNavigationType()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIWebViewNavigationType_GET_LinkClicked()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    return _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_LinkClicked;
}

void org_xmlvm_iphone_UIWebViewNavigationType_PUT_LinkClicked(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_LinkClicked = v;
}

JAVA_INT org_xmlvm_iphone_UIWebViewNavigationType_GET_FormSubmitted()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    return _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormSubmitted;
}

void org_xmlvm_iphone_UIWebViewNavigationType_PUT_FormSubmitted(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormSubmitted = v;
}

JAVA_INT org_xmlvm_iphone_UIWebViewNavigationType_GET_BackForward()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    return _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_BackForward;
}

void org_xmlvm_iphone_UIWebViewNavigationType_PUT_BackForward(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_BackForward = v;
}

JAVA_INT org_xmlvm_iphone_UIWebViewNavigationType_GET_Reload()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    return _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Reload;
}

void org_xmlvm_iphone_UIWebViewNavigationType_PUT_Reload(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Reload = v;
}

JAVA_INT org_xmlvm_iphone_UIWebViewNavigationType_GET_FormResubmitted()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    return _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormResubmitted;
}

void org_xmlvm_iphone_UIWebViewNavigationType_PUT_FormResubmitted(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_FormResubmitted = v;
}

JAVA_INT org_xmlvm_iphone_UIWebViewNavigationType_GET_Other()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    return _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Other;
}

void org_xmlvm_iphone_UIWebViewNavigationType_PUT_Other(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewNavigationType.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewNavigationType();
    _STATIC_org_xmlvm_iphone_UIWebViewNavigationType_Other = v;
}

