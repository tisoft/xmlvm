#include "xmlvm.h"
#include "org_xmlvm_iphone_UIWebView.h"
#include "org_xmlvm_iphone_NSURLRequest.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_UIWebViewDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIWebViewDelegate __TIB_org_xmlvm_iphone_UIWebViewDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIWebViewDelegate, // classInitializer
    "org.xmlvm.iphone.UIWebViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebViewDelegate_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
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

void __INIT_org_xmlvm_iphone_UIWebViewDelegate()
{
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIWebViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIWebViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIWebViewDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIWebViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIWebViewDelegate);
    __TIB_org_xmlvm_iphone_UIWebViewDelegate.clazz = __CLASS_org_xmlvm_iphone_UIWebViewDelegate;
    __CLASS_org_xmlvm_iphone_UIWebViewDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIWebViewDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIWebViewDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIWebViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIWebViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIWebViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_UIWebViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_UIWebViewDelegate();
    org_xmlvm_iphone_UIWebViewDelegate* me = (org_xmlvm_iphone_UIWebViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIWebViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_UIWebViewDelegate;
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
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate_didFailLoadWithError___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate_shouldStartLoadWithRequest___org_xmlvm_iphone_UIWebView_org_xmlvm_iphone_NSURLRequest_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate_webViewDidFinishLoad___org_xmlvm_iphone_UIWebView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebViewDelegate_webViewDidStartLoad___org_xmlvm_iphone_UIWebView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

