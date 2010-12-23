#include "org_xmlvm_iphone_NSData.h"

#include "org_xmlvm_iphone_NSURLConnection.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSURLConnection __TIB_org_xmlvm_iphone_NSURLConnection = {
    0, // classInitialized
    "org.xmlvm.iphone.NSURLConnection", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSURLConnection()
{
    __TIB_org_xmlvm_iphone_NSURLConnection.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSURLConnection.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnection;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSURLConnection.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSURLConnection.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSURLConnection.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLConnection]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSURLConnection(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLConnection]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLConnection()
{
    if (!__TIB_org_xmlvm_iphone_NSURLConnection.classInitialized) __INIT_org_xmlvm_iphone_NSURLConnection();
    org_xmlvm_iphone_NSURLConnection* me = (org_xmlvm_iphone_NSURLConnection*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLConnection));
    me->tib = &__TIB_org_xmlvm_iphone_NSURLConnection;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLConnection]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnection()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSURLConnection_sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    if (!__TIB_org_xmlvm_iphone_NSURLConnection.classInitialized) __INIT_org_xmlvm_iphone_NSURLConnection();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnection_sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURLConnection_connectionWithRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSURLConnectionDelegate(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSURLConnection.classInitialized) __INIT_org_xmlvm_iphone_NSURLConnection();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnection_connectionWithRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSURLConnectionDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

