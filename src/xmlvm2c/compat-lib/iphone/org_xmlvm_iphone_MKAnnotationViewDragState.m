#include "xmlvm.h"

#include "org_xmlvm_iphone_MKAnnotationViewDragState.h"

#define XMLVM_CURRENT_CLASS_NAME MKAnnotationViewDragState
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKAnnotationViewDragState

__TIB_DEFINITION_org_xmlvm_iphone_MKAnnotationViewDragState __TIB_org_xmlvm_iphone_MKAnnotationViewDragState = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MKAnnotationViewDragState, // classInitializer
    "org.xmlvm.iphone.MKAnnotationViewDragState", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_MKAnnotationViewDragState), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Starting;
static JAVA_INT _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Dragging;
static JAVA_INT _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Canceling;
static JAVA_INT _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Ending;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_None,
    "",
    JAVA_NULL},
    {"Starting",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Starting,
    "",
    JAVA_NULL},
    {"Dragging",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Dragging,
    "",
    JAVA_NULL},
    {"Canceling",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Canceling,
    "",
    JAVA_NULL},
    {"Ending",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Ending,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKAnnotationViewDragState();
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

void __INIT_org_xmlvm_iphone_MKAnnotationViewDragState()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MKAnnotationViewDragState);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MKAnnotationViewDragState);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MKAnnotationViewDragState();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MKAnnotationViewDragState()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKAnnotationViewDragState;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_None = 0;
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Starting = 1;
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Dragging = 2;
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Canceling = 3;
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Ending = 4;

    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKAnnotationViewDragState);
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.clazz = __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState;
    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKAnnotationViewDragState);
    __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKAnnotationViewDragState_1ARRAY);
    __CLASS_org_xmlvm_iphone_MKAnnotationViewDragState_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKAnnotationViewDragState_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKAnnotationViewDragState]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MKAnnotationViewDragState(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKAnnotationViewDragState]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKAnnotationViewDragState(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKAnnotationViewDragState]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKAnnotationViewDragState()
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    org_xmlvm_iphone_MKAnnotationViewDragState* me = (org_xmlvm_iphone_MKAnnotationViewDragState*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKAnnotationViewDragState));
    me->tib = &__TIB_org_xmlvm_iphone_MKAnnotationViewDragState;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKAnnotationViewDragState(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKAnnotationViewDragState]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKAnnotationViewDragState()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_MKAnnotationViewDragState_GET_None()
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    return _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_None;
}

void org_xmlvm_iphone_MKAnnotationViewDragState_PUT_None(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_None = v;
}

JAVA_INT org_xmlvm_iphone_MKAnnotationViewDragState_GET_Starting()
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    return _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Starting;
}

void org_xmlvm_iphone_MKAnnotationViewDragState_PUT_Starting(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Starting = v;
}

JAVA_INT org_xmlvm_iphone_MKAnnotationViewDragState_GET_Dragging()
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    return _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Dragging;
}

void org_xmlvm_iphone_MKAnnotationViewDragState_PUT_Dragging(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Dragging = v;
}

JAVA_INT org_xmlvm_iphone_MKAnnotationViewDragState_GET_Canceling()
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    return _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Canceling;
}

void org_xmlvm_iphone_MKAnnotationViewDragState_PUT_Canceling(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Canceling = v;
}

JAVA_INT org_xmlvm_iphone_MKAnnotationViewDragState_GET_Ending()
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    return _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Ending;
}

void org_xmlvm_iphone_MKAnnotationViewDragState_PUT_Ending(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MKAnnotationViewDragState.classInitialized) __INIT_org_xmlvm_iphone_MKAnnotationViewDragState();
    _STATIC_org_xmlvm_iphone_MKAnnotationViewDragState_Ending = v;
}

