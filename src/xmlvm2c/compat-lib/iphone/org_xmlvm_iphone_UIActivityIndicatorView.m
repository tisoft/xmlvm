#include "xmlvm.h"

#include "org_xmlvm_iphone_UIActivityIndicatorView.h"

#define XMLVM_CURRENT_CLASS_NAME UIActivityIndicatorView
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIActivityIndicatorView

__TIB_DEFINITION_org_xmlvm_iphone_UIActivityIndicatorView __TIB_org_xmlvm_iphone_UIActivityIndicatorView = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIActivityIndicatorView, // classInitializer
    "org.xmlvm.iphone.UIActivityIndicatorView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIActivityIndicatorView), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActivityIndicatorView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIActivityIndicatorView_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_int,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIActivityIndicatorView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIActivityIndicatorView___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UIActivityIndicatorView___INIT____int(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setActivityIndicatorViewStyle",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getActivityIndicatorViewStyle",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setHidesWhenStopped",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getHidesWhenStopped",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"startAnimating",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stopAnimating",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UIActivityIndicatorView_setActivityIndicatorViewStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_UIActivityIndicatorView_getActivityIndicatorViewStyle__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIActivityIndicatorView_setHidesWhenStopped___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 3:
        org_xmlvm_iphone_UIActivityIndicatorView_getHidesWhenStopped__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UIActivityIndicatorView_startAnimating__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UIActivityIndicatorView_stopAnimating__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIActivityIndicatorView()
{
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIActivityIndicatorView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIActivityIndicatorView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_setActivityIndicatorViewStyle___int;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_getActivityIndicatorViewStyle__;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_setHidesWhenStopped___boolean;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_getHidesWhenStopped__;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_startAnimating__;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIActivityIndicatorView_stopAnimating__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIActivityIndicatorView);
    __TIB_org_xmlvm_iphone_UIActivityIndicatorView.clazz = __CLASS_org_xmlvm_iphone_UIActivityIndicatorView;
    __CLASS_org_xmlvm_iphone_UIActivityIndicatorView_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIActivityIndicatorView, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIActivityIndicatorView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIActivityIndicatorView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIActivityIndicatorView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIActivityIndicatorView()
{
    if (!__TIB_org_xmlvm_iphone_UIActivityIndicatorView.classInitialized) __INIT_org_xmlvm_iphone_UIActivityIndicatorView();
    org_xmlvm_iphone_UIActivityIndicatorView* me = (org_xmlvm_iphone_UIActivityIndicatorView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIActivityIndicatorView));
    me->tib = &__TIB_org_xmlvm_iphone_UIActivityIndicatorView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIActivityIndicatorView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIActivityIndicatorView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIActivityIndicatorView();
    org_xmlvm_iphone_UIActivityIndicatorView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIActivityIndicatorView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView___INIT____int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView___INIT____int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView_setActivityIndicatorViewStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_setActivityIndicatorViewStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIActivityIndicatorView_getActivityIndicatorViewStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_getActivityIndicatorViewStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView_setHidesWhenStopped___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_setHidesWhenStopped___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIActivityIndicatorView_getHidesWhenStopped__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_getHidesWhenStopped__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView_startAnimating__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_startAnimating__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIActivityIndicatorView_stopAnimating__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIActivityIndicatorView_stopAnimating__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

