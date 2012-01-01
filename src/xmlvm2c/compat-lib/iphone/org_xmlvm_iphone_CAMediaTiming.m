#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CAMediaTiming.h"

__TIB_DEFINITION_org_xmlvm_iphone_CAMediaTiming __TIB_org_xmlvm_iphone_CAMediaTiming = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CAMediaTiming, // classInitializer
    "org.xmlvm.iphone.CAMediaTiming", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAMediaTiming_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_double,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"isAutoreverses",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setAutoreverses",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getBeginTime",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"setBeginTime",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(D)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getDuration",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"setDuration",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(D)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getFillMode",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setFillMode",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getRepeatCount",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setRepeatCount",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getRepeatDuration",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"setRepeatDuration",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(D)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getSpeed",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setSpeed",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getTimeOffset",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"setTimeOffset",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(D)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_CAMediaTiming()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CAMediaTiming);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CAMediaTiming.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CAMediaTiming.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CAMediaTiming);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CAMediaTiming.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CAMediaTiming.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CAMediaTiming();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CAMediaTiming()
{
    __TIB_org_xmlvm_iphone_CAMediaTiming.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_CAMediaTiming.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAMediaTiming.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_CAMediaTiming.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CAMediaTiming.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CAMediaTiming.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_CAMediaTiming = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CAMediaTiming);
    __TIB_org_xmlvm_iphone_CAMediaTiming.clazz = __CLASS_org_xmlvm_iphone_CAMediaTiming;
    __TIB_org_xmlvm_iphone_CAMediaTiming.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CAMediaTiming_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAMediaTiming);
    __CLASS_org_xmlvm_iphone_CAMediaTiming_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAMediaTiming_1ARRAY);
    __CLASS_org_xmlvm_iphone_CAMediaTiming_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CAMediaTiming_2ARRAY);

    __TIB_org_xmlvm_iphone_CAMediaTiming.classInitialized = 1;
}

