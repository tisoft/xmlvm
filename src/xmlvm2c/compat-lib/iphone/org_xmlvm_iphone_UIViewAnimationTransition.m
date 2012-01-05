#include "xmlvm.h"

#include "org_xmlvm_iphone_UIViewAnimationTransition.h"

#define XMLVM_CURRENT_CLASS_NAME UIViewAnimationTransition
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIViewAnimationTransition

__TIB_DEFINITION_org_xmlvm_iphone_UIViewAnimationTransition __TIB_org_xmlvm_iphone_UIViewAnimationTransition = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIViewAnimationTransition, // classInitializer
    "org.xmlvm.iphone.UIViewAnimationTransition", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIViewAnimationTransition), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationTransition;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationTransition_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationTransition_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationTransition_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None,
    "",
    JAVA_NULL},
    {"FlipFromLeft",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft,
    "",
    JAVA_NULL},
    {"FlipFromRight",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight,
    "",
    JAVA_NULL},
    {"CurlUp",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp,
    "",
    JAVA_NULL},
    {"CurlDown",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIViewAnimationTransition();
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

void __INIT_org_xmlvm_iphone_UIViewAnimationTransition()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIViewAnimationTransition);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIViewAnimationTransition);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIViewAnimationTransition.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIViewAnimationTransition.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationTransition();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationTransition()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationTransition;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewAnimationTransition.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None = 0;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft = 1;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight = 2;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp = 3;
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown = 4;

    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewAnimationTransition);
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.clazz = __CLASS_org_xmlvm_iphone_UIViewAnimationTransition;
    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationTransition);
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationTransition_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIViewAnimationTransition_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationTransition_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIViewAnimationTransition(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationTransition(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationTransition()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    org_xmlvm_iphone_UIViewAnimationTransition* me = (org_xmlvm_iphone_UIViewAnimationTransition*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewAnimationTransition));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewAnimationTransition;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationTransition(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewAnimationTransition]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationTransition()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_None = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_FlipFromLeft()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_FlipFromLeft(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromLeft = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_FlipFromRight()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_FlipFromRight(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_FlipFromRight = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_CurlUp()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_CurlUp(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlUp = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationTransition_GET_CurlDown()
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    return _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown;
}

void org_xmlvm_iphone_UIViewAnimationTransition_PUT_CurlDown(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIViewAnimationTransition.classInitialized) __INIT_org_xmlvm_iphone_UIViewAnimationTransition();
    _STATIC_org_xmlvm_iphone_UIViewAnimationTransition_CurlDown = v;
}

