#include "org_xmlvm_iphone_NSURLRequest.h"
#include "org_xmlvm_iphone_UIWebViewDelegate.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIWebView.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIWebView __TIB_org_xmlvm_iphone_UIWebView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIWebView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIWebView()
{
    __TIB_org_xmlvm_iphone_UIWebView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIWebView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIWebView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIWebView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIWebView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_loadRequest___org_xmlvm_iphone_NSURLRequest;
    __TIB_org_xmlvm_iphone_UIWebView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_loadHTMLString___java_lang_String_org_xmlvm_iphone_NSURL;
    __TIB_org_xmlvm_iphone_UIWebView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_xmlvmGetRequest__;
    __TIB_org_xmlvm_iphone_UIWebView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_stringByEvaluatingJavaScriptFromString___java_lang_String;
    __TIB_org_xmlvm_iphone_UIWebView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_getDelegate__;
    __TIB_org_xmlvm_iphone_UIWebView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_setDelegate___org_xmlvm_iphone_UIWebViewDelegate;
    __TIB_org_xmlvm_iphone_UIWebView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_reload__;
    __TIB_org_xmlvm_iphone_UIWebView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_getDataDetectorTypes__;
    __TIB_org_xmlvm_iphone_UIWebView.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_setDataDetectorTypes___int;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIWebView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIWebView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIWebView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIWebView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIWebView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIWebView()
{
    if (!__TIB_org_xmlvm_iphone_UIWebView.classInitialized) __INIT_org_xmlvm_iphone_UIWebView();
    org_xmlvm_iphone_UIWebView* me = (org_xmlvm_iphone_UIWebView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIWebView));
    me->tib = &__TIB_org_xmlvm_iphone_UIWebView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIWebView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIWebView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIWebView();
    org_xmlvm_iphone_UIWebView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIWebView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebView_loadRequest___org_xmlvm_iphone_NSURLRequest(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_loadRequest___org_xmlvm_iphone_NSURLRequest]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebView_loadHTMLString___java_lang_String_org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_loadHTMLString___java_lang_String_org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIWebView_xmlvmGetRequest__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_xmlvmGetRequest__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIWebView_stringByEvaluatingJavaScriptFromString___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_stringByEvaluatingJavaScriptFromString___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIWebView_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebView_setDelegate___org_xmlvm_iphone_UIWebViewDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_setDelegate___org_xmlvm_iphone_UIWebViewDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebView_reload__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_reload__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIWebView_getDataDetectorTypes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_getDataDetectorTypes__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebView_setDataDetectorTypes___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_setDataDetectorTypes___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

