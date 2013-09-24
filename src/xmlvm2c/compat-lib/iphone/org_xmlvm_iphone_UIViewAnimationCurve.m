#include "xmlvm.h"

#include "org_xmlvm_iphone_UIViewAnimationCurve.h"

#define XMLVM_CURRENT_CLASS_NAME UIViewAnimationCurve
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIViewAnimationCurve

__TIB_DEFINITION_org_xmlvm_iphone_UIViewAnimationCurve __TIB_org_xmlvm_iphone_UIViewAnimationCurve = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIViewAnimationCurve, // classInitializer
    "org.xmlvm.iphone.UIViewAnimationCurve", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIViewAnimationCurve), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"EaseInOut",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut,
    "",
    JAVA_NULL},
    {"EaseIn",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn,
    "",
    JAVA_NULL},
    {"EaseOut",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut,
    "",
    JAVA_NULL},
    {"Linear",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIViewAnimationCurve();
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

void __INIT_org_xmlvm_iphone_UIViewAnimationCurve()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIViewAnimationCurve);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIViewAnimationCurve);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIViewAnimationCurve.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIViewAnimationCurve.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIViewAnimationCurve")
        __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationCurve();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIViewAnimationCurve()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationCurve;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewAnimationCurve.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut = 0;
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn = 1;
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut = 2;
    _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear = 3;

    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIViewAnimationCurve = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewAnimationCurve);
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.clazz = __CLASS_org_xmlvm_iphone_UIViewAnimationCurve;
    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationCurve);
    __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationCurve_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIViewAnimationCurve_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewAnimationCurve_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewAnimationCurve]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIViewAnimationCurve.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIViewAnimationCurve(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewAnimationCurve]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationCurve(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationCurve]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewAnimationCurve()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
org_xmlvm_iphone_UIViewAnimationCurve* me = (org_xmlvm_iphone_UIViewAnimationCurve*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewAnimationCurve));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewAnimationCurve;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewAnimationCurve(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewAnimationCurve]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewAnimationCurve()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseInOut()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
    return _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut;
}

void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseInOut(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
_STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseInOut = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseIn()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
    return _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn;
}

void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseIn(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
_STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseIn = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_EaseOut()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
    return _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut;
}

void org_xmlvm_iphone_UIViewAnimationCurve_PUT_EaseOut(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
_STATIC_org_xmlvm_iphone_UIViewAnimationCurve_EaseOut = v;
}

JAVA_INT org_xmlvm_iphone_UIViewAnimationCurve_GET_Linear()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
    return _STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear;
}

void org_xmlvm_iphone_UIViewAnimationCurve_PUT_Linear(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewAnimationCurve)
_STATIC_org_xmlvm_iphone_UIViewAnimationCurve_Linear = v;
}

