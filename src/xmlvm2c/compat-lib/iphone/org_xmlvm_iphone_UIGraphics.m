#include "xmlvm.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGContext.h"

#include "org_xmlvm_iphone_UIGraphics.h"

#define XMLVM_CURRENT_CLASS_NAME UIGraphics
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIGraphics

__TIB_DEFINITION_org_xmlvm_iphone_UIGraphics __TIB_org_xmlvm_iphone_UIGraphics = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIGraphics, // classInitializer
    "org.xmlvm.iphone.UIGraphics", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIGraphics), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGraphics;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGraphics_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGraphics_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIGraphics_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIGraphics();
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

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGContext,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGSize,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGSize,
    &__CLASS_boolean,
    &__CLASS_float,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getCurrentContext",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"pushContext",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"popContext",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"beginImageContext",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"beginImageContextWithOptions",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getImageFromCurrentImageContext",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"endImageContext",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIGraphics_getCurrentContext__();
        break;
    case 1:
        org_xmlvm_iphone_UIGraphics_pushContext___org_xmlvm_iphone_CGContext(argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UIGraphics_popContext__();
        break;
    case 3:
        org_xmlvm_iphone_UIGraphics_beginImageContext___org_xmlvm_iphone_CGSize(argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UIGraphics_beginImageContextWithOptions___org_xmlvm_iphone_CGSize_boolean_float(argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_);
        break;
    case 5:
        org_xmlvm_iphone_UIGraphics_getImageFromCurrentImageContext__();
        break;
    case 6:
        org_xmlvm_iphone_UIGraphics_endImageContext__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIGraphics()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIGraphics);
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIGraphics();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIGraphics);
}

void __INIT_IMPL_org_xmlvm_iphone_UIGraphics()
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIGraphics.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_java_lang_Object.classInitialized) __INIT_IMPL_java_lang_Object();
        __TIB_org_xmlvm_iphone_UIGraphics.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIGraphics;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIGraphics.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_UIGraphics.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIGraphics.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_UIGraphics.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIGraphics.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIGraphics.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIGraphics.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIGraphics.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIGraphics.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIGraphics.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIGraphics.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIGraphics = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIGraphics);
        __TIB_org_xmlvm_iphone_UIGraphics.clazz = __CLASS_org_xmlvm_iphone_UIGraphics;
        __CLASS_org_xmlvm_iphone_UIGraphics_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGraphics, 3);
        __CLASS_org_xmlvm_iphone_UIGraphics_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGraphics, 2);
        __CLASS_org_xmlvm_iphone_UIGraphics_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIGraphics, 1);

        org_xmlvm_iphone_UIGraphics___CLINIT_();
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIGraphics]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIGraphics.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIGraphics(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIGraphics]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGraphics(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIGraphics()
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    org_xmlvm_iphone_UIGraphics* me = (org_xmlvm_iphone_UIGraphics*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIGraphics));
    me->tib = &__TIB_org_xmlvm_iphone_UIGraphics;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIGraphics(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIGraphics]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIGraphics()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIGraphics_getCurrentContext__()
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_getCurrentContext__]
	org_xmlvm_iphone_CGContext *toRet = __NEW_org_xmlvm_iphone_CGContext();
	toRet->fields.org_xmlvm_iphone_CGContext.ocContext = UIGraphicsGetCurrentContext();
	return toRet;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_pushContext___org_xmlvm_iphone_CGContext(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_pushContext___org_xmlvm_iphone_CGContext]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_popContext__()
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_popContext__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_beginImageContext___org_xmlvm_iphone_CGSize(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_beginImageContext___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_beginImageContextWithOptions___org_xmlvm_iphone_CGSize_boolean_float(JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_FLOAT n3)
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_beginImageContextWithOptions___org_xmlvm_iphone_CGSize_boolean_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIGraphics_getImageFromCurrentImageContext__()
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_getImageFromCurrentImageContext__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics_endImageContext__()
{
    if (!__TIB_org_xmlvm_iphone_UIGraphics.classInitialized) __INIT_org_xmlvm_iphone_UIGraphics();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics_endImageContext__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIGraphics___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIGraphics___CLINIT___]
    //XMLVM_END_WRAPPER
}

