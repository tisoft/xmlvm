#include "xmlvm.h"

#include "org_xmlvm_iphone_UIDataDetectorType.h"

#define XMLVM_CURRENT_CLASS_NAME UIDataDetectorType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIDataDetectorType

__TIB_DEFINITION_org_xmlvm_iphone_UIDataDetectorType __TIB_org_xmlvm_iphone_UIDataDetectorType = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIDataDetectorType, // classInitializer
    "org.xmlvm.iphone.UIDataDetectorType", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIDataDetectorType), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDataDetectorType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDataDetectorType_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDataDetectorType_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIDataDetectorType_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIDataDetectorType_All;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"PhoneNumber",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber,
    "",
    JAVA_NULL},
    {"Link",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_Link,
    "",
    JAVA_NULL},
    {"Address",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_Address,
    "",
    JAVA_NULL},
    {"CalendarEvent",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent,
    "",
    JAVA_NULL},
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_None,
    "",
    JAVA_NULL},
    {"All",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIDataDetectorType_All,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIDataDetectorType();
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

void __INIT_org_xmlvm_iphone_UIDataDetectorType()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIDataDetectorType);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIDataDetectorType.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIDataDetectorType.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIDataDetectorType);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIDataDetectorType.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIDataDetectorType.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIDataDetectorType")
        __INIT_IMPL_org_xmlvm_iphone_UIDataDetectorType();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIDataDetectorType()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_UIDataDetectorType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIDataDetectorType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIDataDetectorType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIDataDetectorType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIDataDetectorType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber = 1;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link = 2;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address = 4;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent = 8;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_None = 0;
    _STATIC_org_xmlvm_iphone_UIDataDetectorType_All = 2147483647;

    __TIB_org_xmlvm_iphone_UIDataDetectorType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIDataDetectorType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIDataDetectorType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIDataDetectorType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIDataDetectorType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIDataDetectorType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIDataDetectorType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIDataDetectorType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIDataDetectorType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIDataDetectorType);
    __TIB_org_xmlvm_iphone_UIDataDetectorType.clazz = __CLASS_org_xmlvm_iphone_UIDataDetectorType;
    __TIB_org_xmlvm_iphone_UIDataDetectorType.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIDataDetectorType_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDataDetectorType);
    __CLASS_org_xmlvm_iphone_UIDataDetectorType_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDataDetectorType_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIDataDetectorType_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIDataDetectorType_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIDataDetectorType.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIDataDetectorType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDataDetectorType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIDataDetectorType()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
org_xmlvm_iphone_UIDataDetectorType* me = (org_xmlvm_iphone_UIDataDetectorType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIDataDetectorType));
    me->tib = &__TIB_org_xmlvm_iphone_UIDataDetectorType;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIDataDetectorType(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIDataDetectorType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIDataDetectorType()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_PhoneNumber()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_PhoneNumber(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
_STATIC_org_xmlvm_iphone_UIDataDetectorType_PhoneNumber = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_Link()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_Link;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_Link(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
_STATIC_org_xmlvm_iphone_UIDataDetectorType_Link = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_Address()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_Address;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_Address(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
_STATIC_org_xmlvm_iphone_UIDataDetectorType_Address = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_CalendarEvent()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_CalendarEvent(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
_STATIC_org_xmlvm_iphone_UIDataDetectorType_CalendarEvent = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_None()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_None;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_None(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
_STATIC_org_xmlvm_iphone_UIDataDetectorType_None = v;
}

JAVA_INT org_xmlvm_iphone_UIDataDetectorType_GET_All()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
    return _STATIC_org_xmlvm_iphone_UIDataDetectorType_All;
}

void org_xmlvm_iphone_UIDataDetectorType_PUT_All(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIDataDetectorType)
_STATIC_org_xmlvm_iphone_UIDataDetectorType_All = v;
}

