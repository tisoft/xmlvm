#include "xmlvm.h"

#include "org_xmlvm_iphone_NSSearchPathDomainMask.h"

#define XMLVM_CURRENT_CLASS_NAME NSSearchPathDomainMask
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSSearchPathDomainMask

__TIB_DEFINITION_org_xmlvm_iphone_NSSearchPathDomainMask __TIB_org_xmlvm_iphone_NSSearchPathDomainMask = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSSearchPathDomainMask, // classInitializer
    "org.xmlvm.iphone.NSSearchPathDomainMask", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSSearchPathDomainMask), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_UserDomain;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_LocalDomain;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_NetworkDomain;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_SystemDomain;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_AllDomains;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"UserDomain",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_UserDomain,
    "",
    JAVA_NULL},
    {"LocalDomain",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_LocalDomain,
    "",
    JAVA_NULL},
    {"NetworkDomain",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_NetworkDomain,
    "",
    JAVA_NULL},
    {"SystemDomain",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_SystemDomain,
    "",
    JAVA_NULL},
    {"AllDomains",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_AllDomains,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSSearchPathDomainMask();
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
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSSearchPathDomainMask()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSSearchPathDomainMask);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSSearchPathDomainMask);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSSearchPathDomainMask();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSSearchPathDomainMask()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSSearchPathDomainMask;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_UserDomain = 1;
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_LocalDomain = 2;
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_NetworkDomain = 4;
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_SystemDomain = 8;
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_AllDomains = 65535;

    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSSearchPathDomainMask);
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.clazz = __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask;
    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSearchPathDomainMask);
    __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSearchPathDomainMask_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSSearchPathDomainMask]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSSearchPathDomainMask(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSSearchPathDomainMask]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSSearchPathDomainMask(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSSearchPathDomainMask]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSSearchPathDomainMask()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    org_xmlvm_iphone_NSSearchPathDomainMask* me = (org_xmlvm_iphone_NSSearchPathDomainMask*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSSearchPathDomainMask));
    me->tib = &__TIB_org_xmlvm_iphone_NSSearchPathDomainMask;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSSearchPathDomainMask(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSSearchPathDomainMask]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSSearchPathDomainMask()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_UserDomain()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_UserDomain;
}

void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_UserDomain(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_UserDomain = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_LocalDomain()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_LocalDomain;
}

void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_LocalDomain(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_LocalDomain = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_NetworkDomain()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_NetworkDomain;
}

void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_NetworkDomain(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_NetworkDomain = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_SystemDomain()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_SystemDomain;
}

void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_SystemDomain(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_SystemDomain = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDomainMask_GET_AllDomains()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_AllDomains;
}

void org_xmlvm_iphone_NSSearchPathDomainMask_PUT_AllDomains(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDomainMask.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDomainMask();
    _STATIC_org_xmlvm_iphone_NSSearchPathDomainMask_AllDomains = v;
}

