#include "xmlvm.h"
#include "org_xmlvm_iphone_NSURLRequest.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_UIWebViewDelegate.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIWebView.h"

#define XMLVM_CURRENT_CLASS_NAME UIWebView
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIWebView

__TIB_DEFINITION_org_xmlvm_iphone_UIWebView __TIB_org_xmlvm_iphone_UIWebView = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIWebView, // classInitializer
    "org.xmlvm.iphone.UIWebView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIWebView), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebView_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebView_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIWebView_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIWebView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIWebView___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UIWebView___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURLRequest,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIWebViewDelegate,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"loadRequest",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"loadHTMLString",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"xmlvmGetRequest",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stringByEvaluatingJavaScriptFromString",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"reload",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"goBack",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"goForward",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDataDetectorTypes",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDataDetectorTypes",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isScalesPageToFit",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setScalesPageToFit",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIWebView_loadRequest___org_xmlvm_iphone_NSURLRequest(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UIWebView_loadHTMLString___java_lang_String_org_xmlvm_iphone_NSURL(receiver, argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_UIWebView_xmlvmGetRequest__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UIWebView_stringByEvaluatingJavaScriptFromString___java_lang_String(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UIWebView_getDelegate__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UIWebView_setDelegate___org_xmlvm_iphone_UIWebViewDelegate(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UIWebView_reload__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UIWebView_goBack__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_UIWebView_goForward__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UIWebView_getDataDetectorTypes__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UIWebView_setDataDetectorTypes___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 11:
        org_xmlvm_iphone_UIWebView_isScalesPageToFit__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_UIWebView_setScalesPageToFit___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIWebView()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIWebView);
    if (!__TIB_org_xmlvm_iphone_UIWebView.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIWebView();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIWebView);
}

void __INIT_IMPL_org_xmlvm_iphone_UIWebView()
{
    if (!__TIB_org_xmlvm_iphone_UIWebView.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIWebView.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIView();
        __TIB_org_xmlvm_iphone_UIWebView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIWebView;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIWebView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UIWebView.vtable[65] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_loadRequest___org_xmlvm_iphone_NSURLRequest;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[66] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_loadHTMLString___java_lang_String_org_xmlvm_iphone_NSURL;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[67] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_xmlvmGetRequest__;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[68] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_stringByEvaluatingJavaScriptFromString___java_lang_String;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_getDelegate__;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_setDelegate___org_xmlvm_iphone_UIWebViewDelegate;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_reload__;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_goBack__;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_goForward__;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_getDataDetectorTypes__;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_setDataDetectorTypes___int;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_isScalesPageToFit__;
        __TIB_org_xmlvm_iphone_UIWebView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIWebView_setScalesPageToFit___boolean;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UIWebView.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIWebView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_UIWebView.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIWebView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIWebView.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIWebView.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIWebView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIWebView.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIWebView.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIWebView.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIWebView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIWebView);
        __TIB_org_xmlvm_iphone_UIWebView.clazz = __CLASS_org_xmlvm_iphone_UIWebView;
        __TIB_org_xmlvm_iphone_UIWebView.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UIWebView_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIWebView);
        __CLASS_org_xmlvm_iphone_UIWebView_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIWebView_1ARRAY);
        __CLASS_org_xmlvm_iphone_UIWebView_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIWebView_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIWebView]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIWebView.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIWebView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIWebView]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIWebView(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIWebView()
{
    if (!__TIB_org_xmlvm_iphone_UIWebView.classInitialized) __INIT_org_xmlvm_iphone_UIWebView();
    org_xmlvm_iphone_UIWebView* me = (org_xmlvm_iphone_UIWebView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIWebView));
    me->tib = &__TIB_org_xmlvm_iphone_UIWebView;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIWebView(me);
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

void org_xmlvm_iphone_UIWebView_goBack__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_goBack__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebView_goForward__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_goForward__]
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

JAVA_BOOLEAN org_xmlvm_iphone_UIWebView_isScalesPageToFit__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_isScalesPageToFit__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIWebView_setScalesPageToFit___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIWebView_setScalesPageToFit___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

