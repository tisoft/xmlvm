#include "xmlvm.h"

#include "org_xmlvm_iphone_UIViewTintAdjustmentMode.h"

#define XMLVM_CURRENT_CLASS_NAME UIViewTintAdjustmentMode
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIViewTintAdjustmentMode

__TIB_DEFINITION_org_xmlvm_iphone_UIViewTintAdjustmentMode __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIViewTintAdjustmentMode, // classInitializer
    "org.xmlvm.iphone.UIViewTintAdjustmentMode", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIViewTintAdjustmentMode), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Automatic;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Normal;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Dimmed;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Automatic",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Automatic,
    "",
    JAVA_NULL},
    {"Normal",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Normal,
    "",
    JAVA_NULL},
    {"Dimmed",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Dimmed,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIViewTintAdjustmentMode();
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

void __INIT_org_xmlvm_iphone_UIViewTintAdjustmentMode()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIViewTintAdjustmentMode")
        __INIT_IMPL_org_xmlvm_iphone_UIViewTintAdjustmentMode();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIViewTintAdjustmentMode()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewTintAdjustmentMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Automatic = 0;
    _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Normal = 1;
    _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Dimmed = 2;

    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode);
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.clazz = __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode;
    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode);
    __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewTintAdjustmentMode_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewTintAdjustmentMode]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIViewTintAdjustmentMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewTintAdjustmentMode]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewTintAdjustmentMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewTintAdjustmentMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewTintAdjustmentMode()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewTintAdjustmentMode)
org_xmlvm_iphone_UIViewTintAdjustmentMode* me = (org_xmlvm_iphone_UIViewTintAdjustmentMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewTintAdjustmentMode));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewTintAdjustmentMode;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewTintAdjustmentMode(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewTintAdjustmentMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewTintAdjustmentMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIViewTintAdjustmentMode_GET_Automatic()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewTintAdjustmentMode)
    return _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Automatic;
}

void org_xmlvm_iphone_UIViewTintAdjustmentMode_PUT_Automatic(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewTintAdjustmentMode)
_STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Automatic = v;
}

JAVA_INT org_xmlvm_iphone_UIViewTintAdjustmentMode_GET_Normal()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewTintAdjustmentMode)
    return _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Normal;
}

void org_xmlvm_iphone_UIViewTintAdjustmentMode_PUT_Normal(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewTintAdjustmentMode)
_STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Normal = v;
}

JAVA_INT org_xmlvm_iphone_UIViewTintAdjustmentMode_GET_Dimmed()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewTintAdjustmentMode)
    return _STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Dimmed;
}

void org_xmlvm_iphone_UIViewTintAdjustmentMode_PUT_Dimmed(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIViewTintAdjustmentMode)
_STATIC_org_xmlvm_iphone_UIViewTintAdjustmentMode_Dimmed = v;
}

