#include "xmlvm.h"

#include "sdljava_SDLNewTimerCallback.h"

__TIB_DEFINITION_sdljava_SDLNewTimerCallback __TIB_sdljava_SDLNewTimerCallback = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_SDLNewTimerCallback, // classInitializer
    "sdljava.SDLNewTimerCallback", // className
    "sdljava", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_sdljava_SDLNewTimerCallback;
JAVA_OBJECT __CLASS_sdljava_SDLNewTimerCallback_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_SDLNewTimerCallback_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_SDLNewTimerCallback_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"call",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(ILjava/lang/Object;)I",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_sdljava_SDLNewTimerCallback()
{
    staticInitializerLock(&__TIB_sdljava_SDLNewTimerCallback);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_SDLNewTimerCallback.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_SDLNewTimerCallback.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_SDLNewTimerCallback);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_SDLNewTimerCallback.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_SDLNewTimerCallback.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_SDLNewTimerCallback.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.SDLNewTimerCallback")
        __INIT_IMPL_sdljava_SDLNewTimerCallback();
    }
}

void __INIT_IMPL_sdljava_SDLNewTimerCallback()
{
    __TIB_sdljava_SDLNewTimerCallback.numInterfaces = 0;
    __TIB_sdljava_SDLNewTimerCallback.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_SDLNewTimerCallback.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_sdljava_SDLNewTimerCallback.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_SDLNewTimerCallback.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_SDLNewTimerCallback.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_sdljava_SDLNewTimerCallback = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_SDLNewTimerCallback);
    __TIB_sdljava_SDLNewTimerCallback.clazz = __CLASS_sdljava_SDLNewTimerCallback;
    __TIB_sdljava_SDLNewTimerCallback.baseType = JAVA_NULL;
    __CLASS_sdljava_SDLNewTimerCallback_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLNewTimerCallback);
    __CLASS_sdljava_SDLNewTimerCallback_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLNewTimerCallback_1ARRAY);
    __CLASS_sdljava_SDLNewTimerCallback_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLNewTimerCallback_2ARRAY);

    __TIB_sdljava_SDLNewTimerCallback.classInitialized = 1;
}

