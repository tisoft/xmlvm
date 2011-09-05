#include "xmlvm.h"

#include "org_xmlvm_iphone_UIReturnKeyType.h"

#define XMLVM_CURRENT_CLASS_NAME UIReturnKeyType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIReturnKeyType

__TIB_DEFINITION_org_xmlvm_iphone_UIReturnKeyType __TIB_org_xmlvm_iphone_UIReturnKeyType = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIReturnKeyType, // classInitializer
    "org.xmlvm.iphone.UIReturnKeyType", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIReturnKeyType), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIReturnKeyType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIReturnKeyType_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIReturnKeyType_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIReturnKeyType_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Go;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Google;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Join;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Next;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Route;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Search;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Send;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Yahoo;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_Done;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIReturnKeyType_EmergencyCall;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Default",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Default,
    "",
    JAVA_NULL},
    {"Go",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Go,
    "",
    JAVA_NULL},
    {"Google",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Google,
    "",
    JAVA_NULL},
    {"Join",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Join,
    "",
    JAVA_NULL},
    {"Next",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Next,
    "",
    JAVA_NULL},
    {"Route",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Route,
    "",
    JAVA_NULL},
    {"Search",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Search,
    "",
    JAVA_NULL},
    {"Send",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Send,
    "",
    JAVA_NULL},
    {"Yahoo",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Yahoo,
    "",
    JAVA_NULL},
    {"Done",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_Done,
    "",
    JAVA_NULL},
    {"EmergencyCall",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIReturnKeyType_EmergencyCall,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIReturnKeyType();
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

void __INIT_org_xmlvm_iphone_UIReturnKeyType()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIReturnKeyType);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIReturnKeyType.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIReturnKeyType.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIReturnKeyType);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIReturnKeyType.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIReturnKeyType.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIReturnKeyType();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIReturnKeyType()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIReturnKeyType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIReturnKeyType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIReturnKeyType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIReturnKeyType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIReturnKeyType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Default = 0;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Go = 1;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Google = 2;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Join = 3;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Next = 4;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Route = 5;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Search = 6;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Send = 7;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Yahoo = 8;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Done = 9;
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_EmergencyCall = 10;

    __TIB_org_xmlvm_iphone_UIReturnKeyType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIReturnKeyType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIReturnKeyType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIReturnKeyType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIReturnKeyType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIReturnKeyType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIReturnKeyType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIReturnKeyType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIReturnKeyType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIReturnKeyType);
    __TIB_org_xmlvm_iphone_UIReturnKeyType.clazz = __CLASS_org_xmlvm_iphone_UIReturnKeyType;
    __TIB_org_xmlvm_iphone_UIReturnKeyType.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIReturnKeyType_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIReturnKeyType);
    __CLASS_org_xmlvm_iphone_UIReturnKeyType_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIReturnKeyType_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIReturnKeyType_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIReturnKeyType_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIReturnKeyType]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIReturnKeyType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIReturnKeyType]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIReturnKeyType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIReturnKeyType()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    org_xmlvm_iphone_UIReturnKeyType* me = (org_xmlvm_iphone_UIReturnKeyType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIReturnKeyType));
    me->tib = &__TIB_org_xmlvm_iphone_UIReturnKeyType;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIReturnKeyType(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIReturnKeyType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIReturnKeyType()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Default()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Default;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Default(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Go()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Go;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Go(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Go = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Google()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Google;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Google(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Google = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Join()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Join;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Join(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Join = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Next()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Next;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Next(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Next = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Route()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Route;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Route(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Route = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Search()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Search;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Search(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Search = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Send()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Send;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Send(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Send = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Yahoo()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Yahoo;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Yahoo(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Yahoo = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_Done()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_Done;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_Done(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_Done = v;
}

JAVA_INT org_xmlvm_iphone_UIReturnKeyType_GET_EmergencyCall()
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    return _STATIC_org_xmlvm_iphone_UIReturnKeyType_EmergencyCall;
}

void org_xmlvm_iphone_UIReturnKeyType_PUT_EmergencyCall(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIReturnKeyType.classInitialized) __INIT_org_xmlvm_iphone_UIReturnKeyType();
    _STATIC_org_xmlvm_iphone_UIReturnKeyType_EmergencyCall = v;
}

