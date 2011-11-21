#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_ArrayList.h"

#include "org_xmlvm_iphone_Foundation.h"

#define XMLVM_CURRENT_CLASS_NAME Foundation
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_Foundation

__TIB_DEFINITION_org_xmlvm_iphone_Foundation __TIB_org_xmlvm_iphone_Foundation = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_Foundation, // classInitializer
    "org.xmlvm.iphone.Foundation", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_Foundation), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_Foundation;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_Foundation_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_Foundation_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_Foundation_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_Foundation();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_Foundation___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"NSSearchPathForDirectoriesInDomains",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"NSTemporaryDirectory",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_Foundation_NSSearchPathForDirectoriesInDomains___int_int_boolean(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Boolean*) argsArray[2])->fields.java_lang_Boolean.value_);
        break;
    case 1:
        org_xmlvm_iphone_Foundation_NSTemporaryDirectory__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_Foundation()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_Foundation);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_Foundation.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_Foundation.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_Foundation);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_Foundation.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_Foundation.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_Foundation.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_Foundation();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_Foundation()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_Foundation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_Foundation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_Foundation.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_Foundation.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_Foundation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_Foundation.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_Foundation.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_Foundation.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_Foundation.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_Foundation.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_Foundation.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_Foundation.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_Foundation.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_Foundation = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_Foundation);
    __TIB_org_xmlvm_iphone_Foundation.clazz = __CLASS_org_xmlvm_iphone_Foundation;
    __TIB_org_xmlvm_iphone_Foundation.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_Foundation_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_Foundation);
    __CLASS_org_xmlvm_iphone_Foundation_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_Foundation_1ARRAY);
    __CLASS_org_xmlvm_iphone_Foundation_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_Foundation_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_Foundation]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_Foundation.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_Foundation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_Foundation]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_Foundation(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_Foundation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_Foundation()
{
    if (!__TIB_org_xmlvm_iphone_Foundation.classInitialized) __INIT_org_xmlvm_iphone_Foundation();
    org_xmlvm_iphone_Foundation* me = (org_xmlvm_iphone_Foundation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_Foundation));
    me->tib = &__TIB_org_xmlvm_iphone_Foundation;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_Foundation(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_Foundation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_Foundation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_Foundation();
    org_xmlvm_iphone_Foundation___INIT___(me);
    return me;
}

void org_xmlvm_iphone_Foundation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_Foundation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_Foundation_NSSearchPathForDirectoriesInDomains___int_int_boolean(JAVA_INT n1, JAVA_INT n2, JAVA_BOOLEAN n3)
{
    if (!__TIB_org_xmlvm_iphone_Foundation.classInitialized) __INIT_org_xmlvm_iphone_Foundation();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_Foundation_NSSearchPathForDirectoriesInDomains___int_int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_Foundation_NSTemporaryDirectory__()
{
    if (!__TIB_org_xmlvm_iphone_Foundation.classInitialized) __INIT_org_xmlvm_iphone_Foundation();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_Foundation_NSTemporaryDirectory__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

