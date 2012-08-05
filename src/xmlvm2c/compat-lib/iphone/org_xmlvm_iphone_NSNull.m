#include "xmlvm.h"

#include "org_xmlvm_iphone_NSNull.h"

#define XMLVM_CURRENT_CLASS_NAME NSNull
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSNull

__TIB_DEFINITION_org_xmlvm_iphone_NSNull __TIB_org_xmlvm_iphone_NSNull = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNull, // classInitializer
    "org.xmlvm.iphone.NSNull", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSNull), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNull;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNull_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNull_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNull_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSNull_singleton;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"singleton",
    &__CLASS_org_xmlvm_iphone_NSNull,
    0 | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSNull_singleton,
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSNull();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSNull___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"Null",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSNull;",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSNull_Null__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSNull()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNull);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNull.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNull.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNull);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNull.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNull.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNull.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSNull();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNull()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSNull.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSNull;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSNull.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSNull.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNull.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSNull_singleton = (org_xmlvm_iphone_NSNull*) JAVA_NULL;

    __TIB_org_xmlvm_iphone_NSNull.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNull.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNull.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSNull.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNull.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNull.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSNull.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNull.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSNull = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNull);
    __TIB_org_xmlvm_iphone_NSNull.clazz = __CLASS_org_xmlvm_iphone_NSNull;
    __TIB_org_xmlvm_iphone_NSNull.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNull_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNull);
    __CLASS_org_xmlvm_iphone_NSNull_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNull_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNull_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNull_2ARRAY);
    org_xmlvm_iphone_NSNull___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSNull]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSNull.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSNull(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSNull]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNull(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNull]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNull()
{
    if (!__TIB_org_xmlvm_iphone_NSNull.classInitialized) __INIT_org_xmlvm_iphone_NSNull();
    org_xmlvm_iphone_NSNull* me = (org_xmlvm_iphone_NSNull*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNull));
    me->tib = &__TIB_org_xmlvm_iphone_NSNull;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNull(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSNull]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNull()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSNull();
    org_xmlvm_iphone_NSNull___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSNull_GET_singleton()
{
    if (!__TIB_org_xmlvm_iphone_NSNull.classInitialized) __INIT_org_xmlvm_iphone_NSNull();
    return _STATIC_org_xmlvm_iphone_NSNull_singleton;
}

void org_xmlvm_iphone_NSNull_PUT_singleton(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSNull.classInitialized) __INIT_org_xmlvm_iphone_NSNull();
    _STATIC_org_xmlvm_iphone_NSNull_singleton = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSNull_Null__()
{
    if (!__TIB_org_xmlvm_iphone_NSNull.classInitialized) __INIT_org_xmlvm_iphone_NSNull();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNull_Null__]
    return org_xmlvm_iphone_NSNull_GET_singleton();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNull___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNull___INIT___]
    NSNull* n = [NSNull null];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, n);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNull___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNull___CLINIT___]
    org_xmlvm_iphone_NSNull* singleton = __NEW_INSTANCE_org_xmlvm_iphone_NSNull();
    org_xmlvm_iphone_NSNull_PUT_singleton(singleton);
    //XMLVM_END_WRAPPER
}

