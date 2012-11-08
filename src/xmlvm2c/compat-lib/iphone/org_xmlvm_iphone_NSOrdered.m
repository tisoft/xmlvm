#include "xmlvm.h"

#include "org_xmlvm_iphone_NSOrdered.h"

#define XMLVM_CURRENT_CLASS_NAME NSOrdered
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSOrdered

__TIB_DEFINITION_org_xmlvm_iphone_NSOrdered __TIB_org_xmlvm_iphone_NSOrdered = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSOrdered, // classInitializer
    "org.xmlvm.iphone.NSOrdered", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSOrdered), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOrdered;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOrdered_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOrdered_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSOrdered_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSOrdered_Ascending;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSOrdered_Same;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSOrdered_Descending;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Ascending",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSOrdered_Ascending,
    "",
    JAVA_NULL},
    {"Same",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSOrdered_Same,
    "",
    JAVA_NULL},
    {"Descending",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSOrdered_Descending,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSOrdered();
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

void __INIT_org_xmlvm_iphone_NSOrdered()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSOrdered);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSOrdered.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSOrdered.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSOrdered);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSOrdered.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSOrdered.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSOrdered.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSOrdered();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSOrdered()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSOrdered.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSOrdered;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSOrdered.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSOrdered.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSOrdered.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSOrdered_Ascending = -1;
    _STATIC_org_xmlvm_iphone_NSOrdered_Same = 0;
    _STATIC_org_xmlvm_iphone_NSOrdered_Descending = 1;

    __TIB_org_xmlvm_iphone_NSOrdered.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOrdered.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSOrdered.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSOrdered.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOrdered.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSOrdered.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSOrdered.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSOrdered.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSOrdered = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSOrdered);
    __TIB_org_xmlvm_iphone_NSOrdered.clazz = __CLASS_org_xmlvm_iphone_NSOrdered;
    __TIB_org_xmlvm_iphone_NSOrdered.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSOrdered_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOrdered);
    __CLASS_org_xmlvm_iphone_NSOrdered_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOrdered_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSOrdered_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSOrdered_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSOrdered]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSOrdered.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSOrdered(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSOrdered]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOrdered(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOrdered]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSOrdered()
{
    if (!__TIB_org_xmlvm_iphone_NSOrdered.classInitialized) __INIT_org_xmlvm_iphone_NSOrdered();
    org_xmlvm_iphone_NSOrdered* me = (org_xmlvm_iphone_NSOrdered*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSOrdered));
    me->tib = &__TIB_org_xmlvm_iphone_NSOrdered;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSOrdered(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSOrdered]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSOrdered()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSOrdered_GET_Ascending()
{
    if (!__TIB_org_xmlvm_iphone_NSOrdered.classInitialized) __INIT_org_xmlvm_iphone_NSOrdered();
    return _STATIC_org_xmlvm_iphone_NSOrdered_Ascending;
}

void org_xmlvm_iphone_NSOrdered_PUT_Ascending(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSOrdered.classInitialized) __INIT_org_xmlvm_iphone_NSOrdered();
    _STATIC_org_xmlvm_iphone_NSOrdered_Ascending = v;
}

JAVA_INT org_xmlvm_iphone_NSOrdered_GET_Same()
{
    if (!__TIB_org_xmlvm_iphone_NSOrdered.classInitialized) __INIT_org_xmlvm_iphone_NSOrdered();
    return _STATIC_org_xmlvm_iphone_NSOrdered_Same;
}

void org_xmlvm_iphone_NSOrdered_PUT_Same(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSOrdered.classInitialized) __INIT_org_xmlvm_iphone_NSOrdered();
    _STATIC_org_xmlvm_iphone_NSOrdered_Same = v;
}

JAVA_INT org_xmlvm_iphone_NSOrdered_GET_Descending()
{
    if (!__TIB_org_xmlvm_iphone_NSOrdered.classInitialized) __INIT_org_xmlvm_iphone_NSOrdered();
    return _STATIC_org_xmlvm_iphone_NSOrdered_Descending;
}

void org_xmlvm_iphone_NSOrdered_PUT_Descending(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSOrdered.classInitialized) __INIT_org_xmlvm_iphone_NSOrdered();
    _STATIC_org_xmlvm_iphone_NSOrdered_Descending = v;
}

