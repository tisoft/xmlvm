#include "xmlvm.h"
#include "java_util_Map.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSError.h"

#define XMLVM_CURRENT_CLASS_NAME NSError
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSError

__TIB_DEFINITION_org_xmlvm_iphone_NSError __TIB_org_xmlvm_iphone_NSError = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSError, // classInitializer
    "org.xmlvm.iphone.NSError", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSError), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_int,
    &__CLASS_java_util_Map,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSError();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSError___INIT____java_lang_String_int_java_util_Map(obj, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, argsArray[2]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_int,
    &__CLASS_java_util_Map,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"error",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"domain",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"code",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"userInfo",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"description",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSError_error___java_lang_String_int_java_util_Map(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, argsArray[2]);
        break;
    case 1:
        org_xmlvm_iphone_NSError_domain__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_NSError_code__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_NSError_userInfo__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_NSError_description__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSError()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_NSError);
    if (!__TIB_org_xmlvm_iphone_NSError.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_NSError();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_NSError);
}

void __INIT_IMPL_org_xmlvm_iphone_NSError()
{
    if (!__TIB_org_xmlvm_iphone_NSError.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_NSError.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_NSError.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSError;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSError.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_NSError.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_NSError_domain__;
        __TIB_org_xmlvm_iphone_NSError.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_NSError_code__;
        __TIB_org_xmlvm_iphone_NSError.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_NSError_userInfo__;
        __TIB_org_xmlvm_iphone_NSError.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_NSError_description__;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_NSError.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSError.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_NSError.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSError.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSError.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_NSError.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSError.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSError.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_NSError.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSError.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_NSError = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSError);
        __TIB_org_xmlvm_iphone_NSError.clazz = __CLASS_org_xmlvm_iphone_NSError;
        __TIB_org_xmlvm_iphone_NSError.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_NSError_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError);
        __CLASS_org_xmlvm_iphone_NSError_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_1ARRAY);
        __CLASS_org_xmlvm_iphone_NSError_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSError]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_NSError.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_NSError(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSError]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSError()
{
    if (!__TIB_org_xmlvm_iphone_NSError.classInitialized) __INIT_org_xmlvm_iphone_NSError();
    org_xmlvm_iphone_NSError* me = (org_xmlvm_iphone_NSError*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSError));
    me->tib = &__TIB_org_xmlvm_iphone_NSError;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSError]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSError()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSError___INIT____java_lang_String_int_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError___INIT____java_lang_String_int_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSError_error___java_lang_String_int_java_util_Map(JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    if (!__TIB_org_xmlvm_iphone_NSError.classInitialized) __INIT_org_xmlvm_iphone_NSError();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_error___java_lang_String_int_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSError_domain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_domain__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSError_code__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_code__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSError_userInfo__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_userInfo__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSError_description__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_description__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

