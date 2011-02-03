#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSURLConnection.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_NSURLConnectionDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSURLConnectionDelegate __TIB_org_xmlvm_iphone_NSURLConnectionDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSURLConnectionDelegate, // classInitializer
    "org.xmlvm.iphone.NSURLConnectionDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_ARRAYTYPE;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSURLConnectionDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSURLConnectionDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_NSURLConnectionDelegate()
{
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnectionDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSURLConnectionDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSURLConnectionDelegate);
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.clazz = __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate;
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLConnectionDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLConnectionDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSURLConnectionDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLConnectionDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLConnectionDelegate()
{
    if (!__TIB_org_xmlvm_iphone_NSURLConnectionDelegate.classInitialized) __INIT_org_xmlvm_iphone_NSURLConnectionDelegate();
    org_xmlvm_iphone_NSURLConnectionDelegate* me = (org_xmlvm_iphone_NSURLConnectionDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLConnectionDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_NSURLConnectionDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLConnectionDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnectionDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSURLConnectionDelegate();
    org_xmlvm_iphone_NSURLConnectionDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSURLConnectionDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnectionDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

