#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSError_Key.h"

#define XMLVM_CURRENT_CLASS_NAME NSError_Key
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSError_Key

__TIB_DEFINITION_org_xmlvm_iphone_NSError_Key __TIB_org_xmlvm_iphone_NSError_Key = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSError_Key, // classInitializer
    "org.xmlvm.iphone.NSError$Key", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSError_Key), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Key;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Key_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Key_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_Key_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedDescription;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSFilePathError;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSStringEncodingError;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSUnderlyingError;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSURLError;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedFailureReason;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoverySuggestion;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoveryOptions;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSRecoveryAttempter;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSHelpAnchor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURL;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLString;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLPeerTrust;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"NSLocalizedDescription",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedDescription,
    "",
    JAVA_NULL},
    {"NSFilePathError",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSFilePathError,
    "",
    JAVA_NULL},
    {"NSStringEncodingError",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSStringEncodingError,
    "",
    JAVA_NULL},
    {"NSUnderlyingError",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSUnderlyingError,
    "",
    JAVA_NULL},
    {"NSURLError",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSURLError,
    "",
    JAVA_NULL},
    {"NSLocalizedFailureReason",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedFailureReason,
    "",
    JAVA_NULL},
    {"NSLocalizedRecoverySuggestion",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoverySuggestion,
    "",
    JAVA_NULL},
    {"NSLocalizedRecoveryOptions",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoveryOptions,
    "",
    JAVA_NULL},
    {"NSRecoveryAttempter",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSRecoveryAttempter,
    "",
    JAVA_NULL},
    {"NSHelpAnchor",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSHelpAnchor,
    "",
    JAVA_NULL},
    {"NSURLErrorFailingURL",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURL,
    "",
    JAVA_NULL},
    {"NSURLErrorFailingURLString",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLString,
    "",
    JAVA_NULL},
    {"NSURLErrorFailingURLPeerTrust",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLPeerTrust,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSError_Key();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSError_Key___INIT___(obj);
        break;
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
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSError_Key()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSError_Key);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSError_Key.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSError_Key.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSError_Key);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSError_Key.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSError_Key.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSError_Key();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSError_Key()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSError_Key.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSError_Key;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSError_Key.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSError_Key.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSError_Key.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedDescription = (java_lang_String*) xmlvm_create_java_string_from_pool(43);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSFilePathError = (java_lang_String*) xmlvm_create_java_string_from_pool(44);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSStringEncodingError = (java_lang_String*) xmlvm_create_java_string_from_pool(45);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSUnderlyingError = (java_lang_String*) xmlvm_create_java_string_from_pool(46);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSURLError = (java_lang_String*) xmlvm_create_java_string_from_pool(47);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedFailureReason = (java_lang_String*) xmlvm_create_java_string_from_pool(48);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoverySuggestion = (java_lang_String*) xmlvm_create_java_string_from_pool(49);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoveryOptions = (java_lang_String*) xmlvm_create_java_string_from_pool(50);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSRecoveryAttempter = (java_lang_String*) xmlvm_create_java_string_from_pool(51);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSHelpAnchor = (java_lang_String*) xmlvm_create_java_string_from_pool(52);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURL = (java_lang_String*) xmlvm_create_java_string_from_pool(53);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLString = (java_lang_String*) xmlvm_create_java_string_from_pool(54);
    _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLPeerTrust = (java_lang_String*) xmlvm_create_java_string_from_pool(55);

    __TIB_org_xmlvm_iphone_NSError_Key.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_Key.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSError_Key.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSError_Key.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_Key.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSError_Key.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSError_Key.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_Key.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSError_Key = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSError_Key);
    __TIB_org_xmlvm_iphone_NSError_Key.clazz = __CLASS_org_xmlvm_iphone_NSError_Key;
    __TIB_org_xmlvm_iphone_NSError_Key.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSError_Key_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_Key);
    __CLASS_org_xmlvm_iphone_NSError_Key_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_Key_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSError_Key_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_Key_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSError_Key]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSError_Key.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSError_Key(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSError_Key]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_Key(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSError_Key()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    org_xmlvm_iphone_NSError_Key* me = (org_xmlvm_iphone_NSError_Key*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSError_Key));
    me->tib = &__TIB_org_xmlvm_iphone_NSError_Key;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_Key(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSError_Key]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSError_Key()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSError_Key();
    org_xmlvm_iphone_NSError_Key___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSLocalizedDescription()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedDescription;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSLocalizedDescription(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedDescription = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSFilePathError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSFilePathError;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSFilePathError(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSFilePathError = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSStringEncodingError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSStringEncodingError;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSStringEncodingError(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSStringEncodingError = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSUnderlyingError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSUnderlyingError;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSUnderlyingError(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSUnderlyingError = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSURLError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSURLError;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSURLError(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSURLError = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSLocalizedFailureReason()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedFailureReason;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSLocalizedFailureReason(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedFailureReason = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSLocalizedRecoverySuggestion()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoverySuggestion;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSLocalizedRecoverySuggestion(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoverySuggestion = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSLocalizedRecoveryOptions()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoveryOptions;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSLocalizedRecoveryOptions(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSLocalizedRecoveryOptions = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSRecoveryAttempter()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSRecoveryAttempter;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSRecoveryAttempter(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSRecoveryAttempter = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSHelpAnchor()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSHelpAnchor;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSHelpAnchor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSHelpAnchor = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSURLErrorFailingURL()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURL;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSURLErrorFailingURL(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURL = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSURLErrorFailingURLString()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLString;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSURLErrorFailingURLString(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLString = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSError_Key_GET_NSURLErrorFailingURLPeerTrust()
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    return _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLPeerTrust;
}

void org_xmlvm_iphone_NSError_Key_PUT_NSURLErrorFailingURLPeerTrust(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_Key.classInitialized) __INIT_org_xmlvm_iphone_NSError_Key();
    _STATIC_org_xmlvm_iphone_NSError_Key_NSURLErrorFailingURLPeerTrust = v;
}

void org_xmlvm_iphone_NSError_Key___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_Key___INIT___]
    java_lang_Thread* curThread;
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSError$Key", "<init>", "?")
    XMLVMElem _r0;
    _r0.o = me;
    XMLVM_SOURCE_POSITION("NSError.java", 71)
    java_lang_Object___INIT___(_r0.o);
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

