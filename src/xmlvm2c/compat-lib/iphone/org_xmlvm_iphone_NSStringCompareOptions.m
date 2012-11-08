#include "xmlvm.h"

#include "org_xmlvm_iphone_NSStringCompareOptions.h"

#define XMLVM_CURRENT_CLASS_NAME NSStringCompareOptions
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSStringCompareOptions

__TIB_DEFINITION_org_xmlvm_iphone_NSStringCompareOptions __TIB_org_xmlvm_iphone_NSStringCompareOptions = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSStringCompareOptions, // classInitializer
    "org.xmlvm.iphone.NSStringCompareOptions", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSStringCompareOptions), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringCompareOptions;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringCompareOptions_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringCompareOptions_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringCompareOptions_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSCaseInsensitiveSearch;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSLiteralSearch;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSBackwardsSearch;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSAnchoredSearch;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSNumericSearch;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSDiacriticInsensitiveSearch;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSWidthInsensitiveSearch;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSForcedOrderingSearch;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSRegularExpressionSearch;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"NSCaseInsensitiveSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSCaseInsensitiveSearch,
    "",
    JAVA_NULL},
    {"NSLiteralSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSLiteralSearch,
    "",
    JAVA_NULL},
    {"NSBackwardsSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSBackwardsSearch,
    "",
    JAVA_NULL},
    {"NSAnchoredSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSAnchoredSearch,
    "",
    JAVA_NULL},
    {"NSNumericSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSNumericSearch,
    "",
    JAVA_NULL},
    {"NSDiacriticInsensitiveSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSDiacriticInsensitiveSearch,
    "",
    JAVA_NULL},
    {"NSWidthInsensitiveSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSWidthInsensitiveSearch,
    "",
    JAVA_NULL},
    {"NSForcedOrderingSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSForcedOrderingSearch,
    "",
    JAVA_NULL},
    {"NSRegularExpressionSearch",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSRegularExpressionSearch,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSStringCompareOptions();
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

void __INIT_org_xmlvm_iphone_NSStringCompareOptions()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSStringCompareOptions);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSStringCompareOptions);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSStringCompareOptions.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSStringCompareOptions.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSStringCompareOptions();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSStringCompareOptions()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSStringCompareOptions;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSStringCompareOptions.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSCaseInsensitiveSearch = 1;
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSLiteralSearch = 2;
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSBackwardsSearch = 4;
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSAnchoredSearch = 8;
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSNumericSearch = 64;
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSDiacriticInsensitiveSearch = 128;
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSWidthInsensitiveSearch = 256;
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSForcedOrderingSearch = 512;
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSRegularExpressionSearch = 1024;

    __TIB_org_xmlvm_iphone_NSStringCompareOptions.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSStringCompareOptions = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSStringCompareOptions);
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.clazz = __CLASS_org_xmlvm_iphone_NSStringCompareOptions;
    __TIB_org_xmlvm_iphone_NSStringCompareOptions.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSStringCompareOptions_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSStringCompareOptions);
    __CLASS_org_xmlvm_iphone_NSStringCompareOptions_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSStringCompareOptions_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSStringCompareOptions_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSStringCompareOptions_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSStringCompareOptions]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSStringCompareOptions(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSStringCompareOptions]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSStringCompareOptions(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSStringCompareOptions]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSStringCompareOptions()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    org_xmlvm_iphone_NSStringCompareOptions* me = (org_xmlvm_iphone_NSStringCompareOptions*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSStringCompareOptions));
    me->tib = &__TIB_org_xmlvm_iphone_NSStringCompareOptions;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSStringCompareOptions(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSStringCompareOptions]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSStringCompareOptions()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSCaseInsensitiveSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSCaseInsensitiveSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSCaseInsensitiveSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSCaseInsensitiveSearch = v;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSLiteralSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSLiteralSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSLiteralSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSLiteralSearch = v;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSBackwardsSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSBackwardsSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSBackwardsSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSBackwardsSearch = v;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSAnchoredSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSAnchoredSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSAnchoredSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSAnchoredSearch = v;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSNumericSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSNumericSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSNumericSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSNumericSearch = v;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSDiacriticInsensitiveSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSDiacriticInsensitiveSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSDiacriticInsensitiveSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSDiacriticInsensitiveSearch = v;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSWidthInsensitiveSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSWidthInsensitiveSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSWidthInsensitiveSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSWidthInsensitiveSearch = v;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSForcedOrderingSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSForcedOrderingSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSForcedOrderingSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSForcedOrderingSearch = v;
}

JAVA_INT org_xmlvm_iphone_NSStringCompareOptions_GET_NSRegularExpressionSearch()
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    return _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSRegularExpressionSearch;
}

void org_xmlvm_iphone_NSStringCompareOptions_PUT_NSRegularExpressionSearch(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringCompareOptions.classInitialized) __INIT_org_xmlvm_iphone_NSStringCompareOptions();
    _STATIC_org_xmlvm_iphone_NSStringCompareOptions_NSRegularExpressionSearch = v;
}

