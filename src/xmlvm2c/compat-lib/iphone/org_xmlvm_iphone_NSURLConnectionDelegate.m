
#include "org_xmlvm_iphone_NSURLConnectionDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSURLConnectionDelegate __TIB_org_xmlvm_iphone_NSURLConnectionDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.NSURLConnectionDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

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
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_NSURLConnectionDelegate);
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.clazz = __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate;

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

