#include "xmlvm.h"

#include "org_xmlvm_iphone_CGLineCap.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME CGLineCap
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGLineCap

__TIB_DEFINITION_org_xmlvm_iphone_CGLineCap __TIB_org_xmlvm_iphone_CGLineCap = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGLineCap, // classInitializer
    "org.xmlvm.iphone.CGLineCap", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CGLineCap), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLineCap;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLineCap_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLineCap_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLineCap_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kCGLineCapButt",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt,
    "",
    JAVA_NULL},
    {"kCGLineCapRound",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound,
    "",
    JAVA_NULL},
    {"kCGLineCapSquare",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGLineCap();
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

void __INIT_org_xmlvm_iphone_CGLineCap()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGLineCap);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGLineCap.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGLineCap.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGLineCap);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGLineCap.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGLineCap.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CGLineCap();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGLineCap()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CGLineCap.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGLineCap;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGLineCap.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGLineCap.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGLineCap.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt = 0;
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound = 1;
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare = 2;

    __TIB_org_xmlvm_iphone_CGLineCap.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGLineCap.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGLineCap.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGLineCap.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGLineCap.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGLineCap.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGLineCap.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGLineCap.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGLineCap = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGLineCap);
    __TIB_org_xmlvm_iphone_CGLineCap.clazz = __CLASS_org_xmlvm_iphone_CGLineCap;
    __TIB_org_xmlvm_iphone_CGLineCap.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGLineCap_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGLineCap);
    __CLASS_org_xmlvm_iphone_CGLineCap_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGLineCap_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGLineCap_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGLineCap_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGLineCap]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGLineCap.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGLineCap(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGLineCap]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLineCap(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLineCap]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGLineCap()
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    org_xmlvm_iphone_CGLineCap* me = (org_xmlvm_iphone_CGLineCap*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGLineCap));
    me->tib = &__TIB_org_xmlvm_iphone_CGLineCap;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLineCap(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGLineCap]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGLineCap()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapButt()
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    return _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt;
}

void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapButt(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapButt = v;
}

JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapRound()
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    return _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound;
}

void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapRound(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapRound = v;
}

JAVA_INT org_xmlvm_iphone_CGLineCap_GET_kCGLineCapSquare()
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    return _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare;
}

void org_xmlvm_iphone_CGLineCap_PUT_kCGLineCapSquare(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGLineCap.classInitialized) __INIT_org_xmlvm_iphone_CGLineCap();
    _STATIC_org_xmlvm_iphone_CGLineCap_kCGLineCapSquare = v;
}

