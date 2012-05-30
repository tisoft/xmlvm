#include "xmlvm.h"

#include "org_xmlvm_iphone_UIRemoteNotificationType.h"

#define XMLVM_CURRENT_CLASS_NAME UIRemoteNotificationType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIRemoteNotificationType

__TIB_DEFINITION_org_xmlvm_iphone_UIRemoteNotificationType __TIB_org_xmlvm_iphone_UIRemoteNotificationType = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIRemoteNotificationType, // classInitializer
    "org.xmlvm.iphone.UIRemoteNotificationType", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIRemoteNotificationType), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIRemoteNotificationType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Badge;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Sound;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Alert;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_NewsstandContentAvailability;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIRemoteNotificationType_None,
    "",
    JAVA_NULL},
    {"Badge",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Badge,
    "",
    JAVA_NULL},
    {"Sound",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Sound,
    "",
    JAVA_NULL},
    {"Alert",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Alert,
    "",
    JAVA_NULL},
    {"NewsstandContentAvailability",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIRemoteNotificationType_NewsstandContentAvailability,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIRemoteNotificationType();
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

void __INIT_org_xmlvm_iphone_UIRemoteNotificationType()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIRemoteNotificationType);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIRemoteNotificationType);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIRemoteNotificationType.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIRemoteNotificationType.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIRemoteNotificationType();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIRemoteNotificationType()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIRemoteNotificationType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIRemoteNotificationType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_None = 0;
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Badge = 1;
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Sound = 2;
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Alert = 4;
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_NewsstandContentAvailability = 8;

    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIRemoteNotificationType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIRemoteNotificationType);
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.clazz = __CLASS_org_xmlvm_iphone_UIRemoteNotificationType;
    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIRemoteNotificationType);
    __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIRemoteNotificationType_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIRemoteNotificationType_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIRemoteNotificationType_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIRemoteNotificationType]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIRemoteNotificationType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIRemoteNotificationType]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIRemoteNotificationType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIRemoteNotificationType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIRemoteNotificationType()
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    org_xmlvm_iphone_UIRemoteNotificationType* me = (org_xmlvm_iphone_UIRemoteNotificationType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIRemoteNotificationType));
    me->tib = &__TIB_org_xmlvm_iphone_UIRemoteNotificationType;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIRemoteNotificationType(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIRemoteNotificationType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIRemoteNotificationType()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    return _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_None;
}

void org_xmlvm_iphone_UIRemoteNotificationType_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_None = v;
}

JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_Badge()
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    return _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Badge;
}

void org_xmlvm_iphone_UIRemoteNotificationType_PUT_Badge(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Badge = v;
}

JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_Sound()
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    return _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Sound;
}

void org_xmlvm_iphone_UIRemoteNotificationType_PUT_Sound(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Sound = v;
}

JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_Alert()
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    return _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Alert;
}

void org_xmlvm_iphone_UIRemoteNotificationType_PUT_Alert(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_Alert = v;
}

JAVA_INT org_xmlvm_iphone_UIRemoteNotificationType_GET_NewsstandContentAvailability()
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    return _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_NewsstandContentAvailability;
}

void org_xmlvm_iphone_UIRemoteNotificationType_PUT_NewsstandContentAvailability(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIRemoteNotificationType.classInitialized) __INIT_org_xmlvm_iphone_UIRemoteNotificationType();
    _STATIC_org_xmlvm_iphone_UIRemoteNotificationType_NewsstandContentAvailability = v;
}

