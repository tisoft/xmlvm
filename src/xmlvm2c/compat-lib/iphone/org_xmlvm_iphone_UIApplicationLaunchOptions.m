#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIApplicationLaunchOptions.h"

#define XMLVM_CURRENT_CLASS_NAME UIApplicationLaunchOptions
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIApplicationLaunchOptions

__TIB_DEFINITION_org_xmlvm_iphone_UIApplicationLaunchOptions __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions, // classInitializer
    "org.xmlvm.iphone.UIApplicationLaunchOptions", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIApplicationLaunchOptions), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_URLKey;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_SourceApplicationKey;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_RemoteNotificationKey;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_AnnotationKey;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocalNotificationKey;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocationKey;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_NewsstandDownloadsKey;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"URLKey",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_URLKey,
    "",
    JAVA_NULL},
    {"SourceApplicationKey",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_SourceApplicationKey,
    "",
    JAVA_NULL},
    {"RemoteNotificationKey",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_RemoteNotificationKey,
    "",
    JAVA_NULL},
    {"AnnotationKey",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_AnnotationKey,
    "",
    JAVA_NULL},
    {"LocalNotificationKey",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocalNotificationKey,
    "",
    JAVA_NULL},
    {"LocationKey",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocationKey,
    "",
    JAVA_NULL},
    {"NewsstandDownloadsKey",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_NewsstandDownloadsKey,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIApplicationLaunchOptions();
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

void __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIApplicationLaunchOptions();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIApplicationLaunchOptions()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIApplicationLaunchOptions;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_URLKey = (java_lang_String*) xmlvm_create_java_string_from_pool(48);
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_SourceApplicationKey = (java_lang_String*) xmlvm_create_java_string_from_pool(49);
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_RemoteNotificationKey = (java_lang_String*) xmlvm_create_java_string_from_pool(50);
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_AnnotationKey = (java_lang_String*) xmlvm_create_java_string_from_pool(51);
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocalNotificationKey = (java_lang_String*) xmlvm_create_java_string_from_pool(52);
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocationKey = (java_lang_String*) xmlvm_create_java_string_from_pool(53);
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_NewsstandDownloadsKey = (java_lang_String*) xmlvm_create_java_string_from_pool(54);

    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions);
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.clazz = __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions;
    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions);
    __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIApplicationLaunchOptions_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIApplicationLaunchOptions]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIApplicationLaunchOptions(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIApplicationLaunchOptions]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplicationLaunchOptions(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplicationLaunchOptions]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIApplicationLaunchOptions()
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    org_xmlvm_iphone_UIApplicationLaunchOptions* me = (org_xmlvm_iphone_UIApplicationLaunchOptions*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIApplicationLaunchOptions));
    me->tib = &__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIApplicationLaunchOptions(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIApplicationLaunchOptions]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIApplicationLaunchOptions()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIApplicationLaunchOptions_GET_URLKey()
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    return _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_URLKey;
}

void org_xmlvm_iphone_UIApplicationLaunchOptions_PUT_URLKey(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_URLKey = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIApplicationLaunchOptions_GET_SourceApplicationKey()
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    return _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_SourceApplicationKey;
}

void org_xmlvm_iphone_UIApplicationLaunchOptions_PUT_SourceApplicationKey(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_SourceApplicationKey = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIApplicationLaunchOptions_GET_RemoteNotificationKey()
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    return _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_RemoteNotificationKey;
}

void org_xmlvm_iphone_UIApplicationLaunchOptions_PUT_RemoteNotificationKey(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_RemoteNotificationKey = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIApplicationLaunchOptions_GET_AnnotationKey()
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    return _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_AnnotationKey;
}

void org_xmlvm_iphone_UIApplicationLaunchOptions_PUT_AnnotationKey(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_AnnotationKey = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIApplicationLaunchOptions_GET_LocalNotificationKey()
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    return _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocalNotificationKey;
}

void org_xmlvm_iphone_UIApplicationLaunchOptions_PUT_LocalNotificationKey(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocalNotificationKey = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIApplicationLaunchOptions_GET_LocationKey()
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    return _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocationKey;
}

void org_xmlvm_iphone_UIApplicationLaunchOptions_PUT_LocationKey(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_LocationKey = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIApplicationLaunchOptions_GET_NewsstandDownloadsKey()
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    return _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_NewsstandDownloadsKey;
}

void org_xmlvm_iphone_UIApplicationLaunchOptions_PUT_NewsstandDownloadsKey(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIApplicationLaunchOptions.classInitialized) __INIT_org_xmlvm_iphone_UIApplicationLaunchOptions();
    _STATIC_org_xmlvm_iphone_UIApplicationLaunchOptions_NewsstandDownloadsKey = v;
}

