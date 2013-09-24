#include "xmlvm.h"

#include "org_xmlvm_iphone_NSJSONReadingOptions.h"

#define XMLVM_CURRENT_CLASS_NAME NSJSONReadingOptions
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSJSONReadingOptions

__TIB_DEFINITION_org_xmlvm_iphone_NSJSONReadingOptions __TIB_org_xmlvm_iphone_NSJSONReadingOptions = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSJSONReadingOptions, // classInitializer
    "org.xmlvm.iphone.NSJSONReadingOptions", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSJSONReadingOptions), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONReadingOptions;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableContainers;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableLeaves;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_AllowFragments;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"MutableContainers",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableContainers,
    "",
    JAVA_NULL},
    {"MutableLeaves",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableLeaves,
    "",
    JAVA_NULL},
    {"AllowFragments",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSJSONReadingOptions_AllowFragments,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSJSONReadingOptions();
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

void __INIT_org_xmlvm_iphone_NSJSONReadingOptions()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSJSONReadingOptions);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSJSONReadingOptions.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSJSONReadingOptions);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSJSONReadingOptions.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSJSONReadingOptions.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSJSONReadingOptions.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSJSONReadingOptions")
        __INIT_IMPL_org_xmlvm_iphone_NSJSONReadingOptions();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSJSONReadingOptions()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSJSONReadingOptions;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSJSONReadingOptions.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableContainers = 1;
    _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableLeaves = 2;
    _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_AllowFragments = 4;

    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSJSONReadingOptions = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSJSONReadingOptions);
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.clazz = __CLASS_org_xmlvm_iphone_NSJSONReadingOptions;
    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSJSONReadingOptions);
    __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSJSONReadingOptions_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSJSONReadingOptions_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSJSONReadingOptions_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSJSONReadingOptions]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSJSONReadingOptions.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSJSONReadingOptions(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSJSONReadingOptions]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSJSONReadingOptions(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSJSONReadingOptions]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSJSONReadingOptions()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONReadingOptions)
org_xmlvm_iphone_NSJSONReadingOptions* me = (org_xmlvm_iphone_NSJSONReadingOptions*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSJSONReadingOptions));
    me->tib = &__TIB_org_xmlvm_iphone_NSJSONReadingOptions;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSJSONReadingOptions(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSJSONReadingOptions]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSJSONReadingOptions()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSJSONReadingOptions_GET_MutableContainers()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONReadingOptions)
    return _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableContainers;
}

void org_xmlvm_iphone_NSJSONReadingOptions_PUT_MutableContainers(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONReadingOptions)
_STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableContainers = v;
}

JAVA_INT org_xmlvm_iphone_NSJSONReadingOptions_GET_MutableLeaves()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONReadingOptions)
    return _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableLeaves;
}

void org_xmlvm_iphone_NSJSONReadingOptions_PUT_MutableLeaves(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONReadingOptions)
_STATIC_org_xmlvm_iphone_NSJSONReadingOptions_MutableLeaves = v;
}

JAVA_INT org_xmlvm_iphone_NSJSONReadingOptions_GET_AllowFragments()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONReadingOptions)
    return _STATIC_org_xmlvm_iphone_NSJSONReadingOptions_AllowFragments;
}

void org_xmlvm_iphone_NSJSONReadingOptions_PUT_AllowFragments(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONReadingOptions)
_STATIC_org_xmlvm_iphone_NSJSONReadingOptions_AllowFragments = v;
}

