#include "xmlvm.h"
#include "org_xmlvm_iphone_AVAudioPlayer.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_AVAudioPlayerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_AVAudioPlayerDelegate __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_AVAudioPlayerDelegate, // classInitializer
    "org.xmlvm.iphone.AVAudioPlayerDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_AVAudioPlayer,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_AVAudioPlayer,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_AVAudioPlayer,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_AVAudioPlayer,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"audioPlayerDidFinishPlaying",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/AVAudioPlayer;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"audioPlayerDecodeErrorDidOccur",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/AVAudioPlayer;Lorg/xmlvm/iphone/NSError;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"audioPlayerBeginInterruption",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/AVAudioPlayer;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"audioPlayerEndInterruption",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/AVAudioPlayer;)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_AVAudioPlayerDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_AVAudioPlayerDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_AVAudioPlayerDelegate()
{
    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate);
    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.clazz = __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate;
    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate);
    __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitialized = 1;
}

