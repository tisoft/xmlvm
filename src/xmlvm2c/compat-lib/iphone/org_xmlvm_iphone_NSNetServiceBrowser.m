#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSNetServiceBrowserDelegate.h"
#include "org_xmlvm_iphone_NSRunLoop.h"

#include "org_xmlvm_iphone_NSNetServiceBrowser.h"

#define XMLVM_CURRENT_CLASS_NAME NSNetServiceBrowser
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSNetServiceBrowser

__TIB_DEFINITION_org_xmlvm_iphone_NSNetServiceBrowser __TIB_org_xmlvm_iphone_NSNetServiceBrowser = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNetServiceBrowser, // classInitializer
    "org.xmlvm.iphone.NSNetServiceBrowser", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSNetServiceBrowser), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowser;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"delegateWrapper",
    &__CLASS_java_lang_Object,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_NSNetServiceBrowser, fields.org_xmlvm_iphone_NSNetServiceBrowser.delegateWrapper_),
    0,
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSNetServiceBrowser();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSNetServiceBrowser___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSRunLoop,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSNetServiceBrowserDelegate,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSRunLoop,
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"scheduleInRunLoop",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSRunLoop;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSNetServiceBrowserDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"searchForServicesOfTypeInDomain",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"stop",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"removeFromRunLoop",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSRunLoop;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
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
    case 0:
        org_xmlvm_iphone_NSNetServiceBrowser_scheduleInRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_NSNetServiceBrowser_setDelegate___org_xmlvm_iphone_NSNetServiceBrowserDelegate(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_NSNetServiceBrowser_searchForServicesOfTypeInDomain___java_lang_String_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 3:
        org_xmlvm_iphone_NSNetServiceBrowser_stop__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_NSNetServiceBrowser_removeFromRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSNetServiceBrowser()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNetServiceBrowser);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNetServiceBrowser.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNetServiceBrowser);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNetServiceBrowser.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNetServiceBrowser.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNetServiceBrowser.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSNetServiceBrowser")
        __INIT_IMPL_org_xmlvm_iphone_NSNetServiceBrowser();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNetServiceBrowser()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSNetServiceBrowser;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSNetServiceBrowser.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowser = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNetServiceBrowser);
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.clazz = __CLASS_org_xmlvm_iphone_NSNetServiceBrowser;
    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowser);
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowser_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNetServiceBrowser_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNetServiceBrowser_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSNetServiceBrowser]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSNetServiceBrowser.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSNetServiceBrowser(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSNetServiceBrowser]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetServiceBrowser(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_NSNetServiceBrowser*) me)->fields.org_xmlvm_iphone_NSNetServiceBrowser.delegateWrapper_ = (java_lang_Object*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetServiceBrowser]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNetServiceBrowser()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSNetServiceBrowser)
org_xmlvm_iphone_NSNetServiceBrowser* me = (org_xmlvm_iphone_NSNetServiceBrowser*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNetServiceBrowser));
    me->tib = &__TIB_org_xmlvm_iphone_NSNetServiceBrowser;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNetServiceBrowser(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSNetServiceBrowser]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNetServiceBrowser()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSNetServiceBrowser();
    org_xmlvm_iphone_NSNetServiceBrowser___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSNetServiceBrowser___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetServiceBrowser___INIT___]

    NSNetServiceBrowser* netServiceBrowser = [[NSNetServiceBrowser alloc] init];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, netServiceBrowser);

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetServiceBrowser_scheduleInRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetServiceBrowser_scheduleInRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String]
    XMLVM_VAR_THIZ;

    XMLVM_VAR_IOS(NSRunLoop, runLoop, n1);
    XMLVM_VAR_NSRunLoopMode(runLoopMode, n2);
    [thiz scheduleInRunLoop:runLoop forMode:runLoopMode];

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetServiceBrowser_setDelegate___org_xmlvm_iphone_NSNetServiceBrowserDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetServiceBrowser_setDelegate___org_xmlvm_iphone_NSNetServiceBrowserDelegate]
    XMLVM_VAR_THIZ;

    org_xmlvm_iphone_NSNetServiceBrowserDelegate* jdelegate = n1;
    org_xmlvm_iphone_NSNetServiceBrowserDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_iphone_NSNetServiceBrowserDelegate(jdelegate);

    jthiz->fields.org_xmlvm_iphone_NSNetServiceBrowser.delegateWrapper_ = jwrapper;

    NSNetServiceBrowserDelegateWrapper* wrapper = jwrapper->nativeDelegateWrapper_;
    [wrapper addSource: jthiz: thiz];
    thiz.delegate = wrapper;

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetServiceBrowser_searchForServicesOfTypeInDomain___java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetServiceBrowser_searchForServicesOfTypeInDomain___java_lang_String_java_lang_String]
    XMLVM_VAR_THIZ;

    XMLVM_VAR_NSString(serviceType, n1);
    XMLVM_VAR_NSString(domainName, n2);
    [thiz searchForServicesOfType:serviceType inDomain:domainName];

    [domainName release];
    [serviceType release];

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetServiceBrowser_stop__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetServiceBrowser_stop__]
    XMLVM_VAR_THIZ;

    [thiz stop];

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNetServiceBrowser_removeFromRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNetServiceBrowser_removeFromRunLoop___org_xmlvm_iphone_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;

    XMLVM_VAR_IOS(NSRunLoop, runLoop, n1);
    XMLVM_VAR_NSRunLoopMode(runLoopMode, n2);
    [thiz removeFromRunLoop:runLoop forMode:runLoopMode];

    //XMLVM_END_WRAPPER
}

