#include "xmlvm.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_NSURLRequest.h"
#include "org_xmlvm_iphone_UIWebView.h"

#include "org_xmlvm_iphone_UIWebViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME UIWebViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIWebViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_UIWebViewDelegate __TIB_org_xmlvm_iphone_UIWebViewDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIWebViewDelegate, // classInitializer
    "org.xmlvm.iphone.UIWebViewDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIWebViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebViewDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebViewDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebViewDelegate_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include <UIKit/UIWebView.h>

@interface UIWebViewDelegateWrapper : NSObject<UIWebViewDelegate> {
    org_xmlvm_iphone_UIWebViewDelegate* delegate_;
}

- (id) initWithDelegate: (JAVA_OBJECT) d_;
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
- (void)webViewDidStartLoad:(UIWebView *)webView;
- (void)webViewDidFinishLoad:(UIWebView *)webView;
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;

@end

@implementation UIWebViewDelegateWrapper

- (id) initWithDelegate: (JAVA_OBJECT) d_
{
    [super init];
    delegate_ = d_;
    return self;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    org_xmlvm_iphone_NSURLRequest* request_ = xmlvm_get_associated_c_object(request);
    org_xmlvm_iphone_UIWebView* webView_ = xmlvm_get_associated_c_object(webView);
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int
    Func_BOOOI callback = (Func_BOOOI) ((org_xmlvm_iphone_UIWebViewDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int];
    return callback(delegate_, webView_, request_, navigationType);
#else
    return org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int(delegate_, webView_, request_, navigationType);
#endif
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    org_xmlvm_iphone_UIWebView* webView_ = xmlvm_get_associated_c_object(webView);
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView
    Func_VOO callback = (Func_VOO) ((org_xmlvm_iphone_UIWebViewDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView];
    callback(delegate_, webView_);
#else
    org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView(delegate_, webView_);
#endif    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    org_xmlvm_iphone_UIWebView* webView_ = xmlvm_get_associated_c_object(webView);
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView
    Func_VOO callback = (Func_VOO) ((org_xmlvm_iphone_UIWebViewDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView];
    callback(delegate_, webView_);
#else
    org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView(delegate_, webView_);
#endif    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    org_xmlvm_iphone_UIWebView* webView_ = xmlvm_get_associated_c_object(webView);
    org_xmlvm_iphone_NSError* error_ = xmlvm_get_associated_c_object(error);
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError
    Func_VOOO callback = (Func_VOOO) ((org_xmlvm_iphone_UIWebViewDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError];
    callback(delegate_, webView_, error_);
#else
    org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError(delegate_, webView_, error_);
#endif    
}
@end

void org_xmlvm_iphone_UIWebViewDelegate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIWebViewDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIWebViewDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIWebView,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIWebView,
    &__CLASS_org_xmlvm_iphone_NSURLRequest,
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIWebView,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIWebView,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"didFailLoadWithError",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldStartLoadWithRequest",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"webViewDidFinishLoad",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"webViewDidStartLoad",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError(receiver, argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int(receiver, argsArray[0], argsArray[1], ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIWebViewDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIWebViewDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIWebViewDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIWebViewDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIWebViewDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIWebViewDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIWebViewDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIWebViewDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIWebViewDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIWebViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIWebViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIWebViewDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIWebViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIWebViewDelegate);
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.clazz = __CLASS_org_xmlvm_iphone_UIWebViewDelegate;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIWebViewDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIWebViewDelegate);
    __CLASS_org_xmlvm_iphone_UIWebViewDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIWebViewDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIWebViewDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIWebViewDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIWebViewDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIWebViewDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIWebViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIWebViewDelegate]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIWebViewDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIWebViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIWebViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewDelegate();
    org_xmlvm_iphone_UIWebViewDelegate* me = (org_xmlvm_iphone_UIWebViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIWebViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UIWebViewDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIWebViewDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIWebViewDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIWebViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIWebViewDelegate();
    org_xmlvm_iphone_UIWebViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIWebViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate___INIT___]
    UIWebViewDelegateWrapper* delegate = [[UIWebViewDelegateWrapper alloc] initWithDelegate: me];
    org_xmlvm_iphone_UIWebViewDelegate_INTERNAL_CONSTRUCTOR(me, delegate);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError]
    // do nothing
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int]
    return true;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView]
    //do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView]
    //do nothing
    //XMLVM_END_WRAPPER
}

