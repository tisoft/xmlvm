#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSDictionary.h"
#include "org_xmlvm_iphone_NSNetService.h"

#include "org_xmlvm_iphone_NSNetServiceDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSNetServiceDelegate __TIB_org_xmlvm_iphone_NSNetServiceDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNetServiceDelegate, // classInitializer
    "org.xmlvm.iphone.NSNetServiceDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetService,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetService,
    &__CLASS_org_xmlvm_iphone_NSDictionary,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetService,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetService,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetService,
    &__CLASS_org_xmlvm_iphone_NSDictionary,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetService,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetService,
    &__CLASS_org_xmlvm_iphone_NSData,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetService,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"willPublish",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetService;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didNotPublish",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetService;Lorg/xmlvm/iphone/NSDictionary;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didPublish",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetService;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"willResolve",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetService;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didNotResolve",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetService;Lorg/xmlvm/iphone/NSDictionary;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didResolveAddress",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetService;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didUpdateTXTRecordData",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetService;Lorg/xmlvm/iphone/NSData;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didStop",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetService;)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_NSNetServiceDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNetServiceDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNetServiceDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNetServiceDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNetServiceDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNetServiceDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNetServiceDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSNetServiceDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceDelegate()
{
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_NSNetServiceDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_NSNetServiceDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNetServiceDelegate);
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.clazz = __CLASS_org_xmlvm_iphone_NSNetServiceDelegate;
    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceDelegate);
    __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNetServiceDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_NSNetServiceDelegate.classInitialized = 1;
}


@implementation NSNetServiceDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) d_
{
    [super init];
    self->delegate_ = d_;
    return self;
}

// Append the wrapper methods defined in the class Macro
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSNetServiceDelegate

@end

void __DELETE_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper(void* me, void* client_data)
{
    org_xmlvm_iphone_NSNetServiceDelegate_Wrapper* jthiz = (org_xmlvm_iphone_NSNetServiceDelegate_Wrapper*) me;
    [(jthiz->nativeDelegateWrapper_) release];
}

org_xmlvm_iphone_NSNetServiceDelegate_Wrapper* __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_iphone_NSNetServiceDelegate(org_xmlvm_iphone_NSNetServiceDelegate* delegate)
{
    NSNetServiceDelegateWrapper* nativeDelegateWrapper = [[NSNetServiceDelegateWrapper alloc] initWithDelegate:delegate];
    org_xmlvm_iphone_NSNetServiceDelegate_Wrapper* delegateWrapper = (org_xmlvm_iphone_NSNetServiceDelegate_Wrapper*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNetServiceDelegate_Wrapper));
    delegateWrapper->delegate_ = delegate;
    delegateWrapper->nativeDelegateWrapper_ = nativeDelegateWrapper;
    XMLVM_FINALIZE(delegateWrapper, __DELETE_org_xmlvm_iphone_NSNetServiceDelegate_Wrapper);
    return delegateWrapper;
}

