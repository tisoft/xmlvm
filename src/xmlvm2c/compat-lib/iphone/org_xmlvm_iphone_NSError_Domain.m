#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSError_Domain.h"

#include "org_xmlvm_iphone_NSError_Domain.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME NSError_Domain
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSError_Domain

__TIB_DEFINITION_org_xmlvm_iphone_NSError_Domain __TIB_org_xmlvm_iphone_NSError_Domain = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSError_Domain, // classInitializer
    "org.xmlvm.iphone.NSError$Domain", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSError_Domain), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Domain;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Domain_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Domain_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Domain_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Domain_NSCocoa;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Domain_NSURL;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Domain_NSPOSIX;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Domain_NSOSStatus;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Domain_NSMach;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"NSCocoa",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Domain_NSCocoa,
    "",
    JAVA_NULL},
    {"NSURL",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Domain_NSURL,
    "",
    JAVA_NULL},
    {"NSPOSIX",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Domain_NSPOSIX,
    "",
    JAVA_NULL},
    {"NSOSStatus",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Domain_NSOSStatus,
    "",
    JAVA_NULL},
    {"NSMach",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Domain_NSMach,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSError_Domain();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSError_Domain___INIT___(obj);
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

void __INIT_org_xmlvm_iphone_NSError_Domain()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSError_Domain);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSError_Domain.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSError_Domain.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSError_Domain);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSError_Domain.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSError_Domain.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSError_Domain();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSError_Domain()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSError_Domain.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSError_Domain;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSError_Domain.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSError_Domain.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSError_Domain.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSCocoa = (java_lang_String*) xmlvm_create_java_string_from_pool(21);
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSURL = (java_lang_String*) xmlvm_create_java_string_from_pool(22);
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSPOSIX = (java_lang_String*) xmlvm_create_java_string_from_pool(23);
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSOSStatus = (java_lang_String*) xmlvm_create_java_string_from_pool(24);
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSMach = (java_lang_String*) xmlvm_create_java_string_from_pool(25);

    __TIB_org_xmlvm_iphone_NSError_Domain.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_Domain.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSError_Domain.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSError_Domain.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_Domain.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSError_Domain.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSError_Domain.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_Domain.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSError_Domain = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSError_Domain);
    __TIB_org_xmlvm_iphone_NSError_Domain.clazz = __CLASS_org_xmlvm_iphone_NSError_Domain;
    __TIB_org_xmlvm_iphone_NSError_Domain.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSError_Domain_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_Domain);
    __CLASS_org_xmlvm_iphone_NSError_Domain_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_Domain_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSError_Domain_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_Domain_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSError_Domain]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSError_Domain.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSError_Domain(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSError_Domain]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_Domain(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_Domain]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSError_Domain()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    org_xmlvm_iphone_NSError_Domain* me = (org_xmlvm_iphone_NSError_Domain*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSError_Domain));
    me->tib = &__TIB_org_xmlvm_iphone_NSError_Domain;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_Domain(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSError_Domain]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSError_Domain()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSError_Domain();
    org_xmlvm_iphone_NSError_Domain___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSCocoa()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    return _STATIC_org_xmlvm_iphone_NSError_Domain_NSCocoa;
}

void org_xmlvm_iphone_NSError_Domain_PUT_NSCocoa(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSCocoa = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSURL()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    return _STATIC_org_xmlvm_iphone_NSError_Domain_NSURL;
}

void org_xmlvm_iphone_NSError_Domain_PUT_NSURL(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSURL = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSPOSIX()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    return _STATIC_org_xmlvm_iphone_NSError_Domain_NSPOSIX;
}

void org_xmlvm_iphone_NSError_Domain_PUT_NSPOSIX(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSPOSIX = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSOSStatus()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    return _STATIC_org_xmlvm_iphone_NSError_Domain_NSOSStatus;
}

void org_xmlvm_iphone_NSError_Domain_PUT_NSOSStatus(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSOSStatus = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Domain_GET_NSMach()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    return _STATIC_org_xmlvm_iphone_NSError_Domain_NSMach;
}

void org_xmlvm_iphone_NSError_Domain_PUT_NSMach(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Domain.classInitialized) __INIT_org_xmlvm_iphone_NSError_Domain();
    _STATIC_org_xmlvm_iphone_NSError_Domain_NSMach = v;
}

void org_xmlvm_iphone_NSError_Domain___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_Domain___INIT___]
    java_lang_Thread* curThread;
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSError$Domain", "<init>", "?")
    XMLVMElem _r0;
    _r0.o = me;
    XMLVM_SOURCE_POSITION("NSError.java", 61)
    java_lang_Object___INIT___(_r0.o);
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

