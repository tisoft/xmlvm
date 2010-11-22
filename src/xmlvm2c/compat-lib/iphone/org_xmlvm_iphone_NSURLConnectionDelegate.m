#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSURLConnection.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_NSURLConnectionDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSURLConnectionDelegate __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.NSURLConnectionDelegate", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSURLConnectionDelegate()
{
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnectionDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection;
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError;
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLConnectionDelegate]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_NSURLConnectionDelegate(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLConnectionDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLConnectionDelegate()
{
    if (!__CLASS_org_xmlvm_iphone_NSURLConnectionDelegate.classInitialized) __INIT_org_xmlvm_iphone_NSURLConnectionDelegate();
    org_xmlvm_iphone_NSURLConnectionDelegate* me = (org_xmlvm_iphone_NSURLConnectionDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLConnectionDelegate));
    me->__class = &__CLASS_org_xmlvm_iphone_NSURLConnectionDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLConnectionDelegate]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSURLConnectionDelegate);
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

