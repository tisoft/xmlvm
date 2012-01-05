#include "xmlvm.h"

#include "org_xmlvm_iphone_UIButtonType.h"

#define XMLVM_CURRENT_CLASS_NAME UIButtonType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIButtonType

__TIB_DEFINITION_org_xmlvm_iphone_UIButtonType __TIB_org_xmlvm_iphone_UIButtonType = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIButtonType, // classInitializer
    "org.xmlvm.iphone.UIButtonType", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIButtonType), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButtonType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButtonType_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButtonType_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButtonType_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_Custom;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_InfoLight;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_InfoDark;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Custom",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIButtonType_Custom,
    "",
    JAVA_NULL},
    {"RoundedRect",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect,
    "",
    JAVA_NULL},
    {"DetailDisclosure",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure,
    "",
    JAVA_NULL},
    {"InfoLight",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIButtonType_InfoLight,
    "",
    JAVA_NULL},
    {"InfoDark",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIButtonType_InfoDark,
    "",
    JAVA_NULL},
    {"ContactAdd",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIButtonType();
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

void __INIT_org_xmlvm_iphone_UIButtonType()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIButtonType);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIButtonType.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIButtonType.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIButtonType);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIButtonType.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIButtonType.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIButtonType();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIButtonType()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIButtonType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIButtonType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIButtonType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIButtonType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIButtonType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIButtonType_Custom = 0;
    _STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect = 1;
    _STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure = 2;
    _STATIC_org_xmlvm_iphone_UIButtonType_InfoLight = 3;
    _STATIC_org_xmlvm_iphone_UIButtonType_InfoDark = 4;
    _STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd = 5;

    __TIB_org_xmlvm_iphone_UIButtonType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIButtonType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIButtonType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIButtonType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIButtonType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIButtonType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIButtonType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIButtonType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIButtonType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIButtonType);
    __TIB_org_xmlvm_iphone_UIButtonType.clazz = __CLASS_org_xmlvm_iphone_UIButtonType;
    __TIB_org_xmlvm_iphone_UIButtonType.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIButtonType_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIButtonType);
    __CLASS_org_xmlvm_iphone_UIButtonType_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIButtonType_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIButtonType_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIButtonType_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIButtonType]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIButtonType.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIButtonType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIButtonType]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIButtonType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIButtonType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIButtonType()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    org_xmlvm_iphone_UIButtonType* me = (org_xmlvm_iphone_UIButtonType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIButtonType));
    me->tib = &__TIB_org_xmlvm_iphone_UIButtonType;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIButtonType(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIButtonType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIButtonType()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_Custom()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_Custom;
}

void org_xmlvm_iphone_UIButtonType_PUT_Custom(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_Custom = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_RoundedRect()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect;
}

void org_xmlvm_iphone_UIButtonType_PUT_RoundedRect(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_RoundedRect = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_DetailDisclosure()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure;
}

void org_xmlvm_iphone_UIButtonType_PUT_DetailDisclosure(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_DetailDisclosure = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_InfoLight()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_InfoLight;
}

void org_xmlvm_iphone_UIButtonType_PUT_InfoLight(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_InfoLight = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_InfoDark()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_InfoDark;
}

void org_xmlvm_iphone_UIButtonType_PUT_InfoDark(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_InfoDark = v;
}

JAVA_INT org_xmlvm_iphone_UIButtonType_GET_ContactAdd()
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    return _STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd;
}

void org_xmlvm_iphone_UIButtonType_PUT_ContactAdd(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIButtonType.classInitialized) __INIT_org_xmlvm_iphone_UIButtonType();
    _STATIC_org_xmlvm_iphone_UIButtonType_ContactAdd = v;
}

