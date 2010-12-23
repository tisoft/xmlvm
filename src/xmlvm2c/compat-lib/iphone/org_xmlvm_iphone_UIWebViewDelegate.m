
#include "org_xmlvm_iphone_UIWebViewDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIWebViewDelegate __TIB_org_xmlvm_iphone_UIWebViewDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.UIWebViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


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

