#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSDictionary.h"
#include "org_xmlvm_iphone_NSNetService.h"
#include "org_xmlvm_iphone_NSNetServiceBrowser.h"

#include "org_xmlvm_iphone_NSNetServiceBrowserDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSNetServiceBrowserDelegate __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNetServiceBrowserDelegate, // classInitializer
    "org.xmlvm.iphone.NSNetServiceBrowserDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceBrowser,
    &__CLASS_java_lang_String,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceBrowser,
    &__CLASS_java_lang_String,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceBrowser,
    &__CLASS_org_xmlvm_iphone_NSNetService,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceBrowser,
    &__CLASS_org_xmlvm_iphone_NSNetService,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceBrowser,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceBrowser,
    &__CLASS_org_xmlvm_iphone_NSDictionary,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceBrowser,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"didFindDomain",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetServiceBrowser;Ljava/lang/String;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didRemoveDomain",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetServiceBrowser;Ljava/lang/String;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didFindService",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetServiceBrowser;Lorg/xmlvm/iphone/NSNetService;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didRemoveService",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetServiceBrowser;Lorg/xmlvm/iphone/NSNetService;Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"willSearch",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetServiceBrowser;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didNotSearch",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetServiceBrowser;Lorg/xmlvm/iphone/NSDictionary;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"didStopSearch",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetServiceBrowser;)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_NSNetServiceBrowserDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSNetServiceBrowserDelegate")
        __INIT_IMPL_org_xmlvm_iphone_NSNetServiceBrowserDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceBrowserDelegate()
{
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate);
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.clazz = __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate);
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate_2ARRAY);

    __TIB_org_xmlvm_iphone_NSNetServiceBrowserDelegate.classInitialized = 1;
}


@implementation NSNetServiceBrowserDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) d_
{
    [super init];
    self->delegate_ = d_;
    return self;
}

- (void) dealloc
{
#ifdef XMLVM_NEW_IOS_API
    XMLVMUtil_ArrayList_remove(reference_array, self->delegate_);
#endif
    [super dealloc];
}

// Append the wrapper methods defined in the class Macro
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSNetServiceBrowserDelegate

@end

void __DELETE_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper(void* me, void* client_data)
{
    org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper* jthiz = (org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper*) me;
    [(jthiz->nativeDelegateWrapper_) release];
}

org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper* __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_iphone_NSNetServiceBrowserDelegate(org_xmlvm_iphone_NSNetServiceBrowserDelegate* delegate)
{
    NSNetServiceBrowserDelegateWrapper* nativeDelegateWrapper = [[NSNetServiceBrowserDelegateWrapper alloc] initWithDelegate:delegate];
    org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper* delegateWrapper = (org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper));
    delegateWrapper->delegate_ = delegate;
    delegateWrapper->nativeDelegateWrapper_ = nativeDelegateWrapper;
#ifndef XMLVM_NEW_IOS_API
    XMLVM_FINALIZE(delegateWrapper, __DELETE_org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper);
#endif
    return delegateWrapper;
}

