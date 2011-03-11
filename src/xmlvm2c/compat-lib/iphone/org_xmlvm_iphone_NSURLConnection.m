#include "xmlvm.h"
#include "org_xmlvm_iphone_NSMutableURLRequest.h"
#include "org_xmlvm_iphone_NSHTTPURLResponseHolder.h"
#include "org_xmlvm_iphone_NSURLConnectionDelegate.h"
#include "org_xmlvm_iphone_NSErrorHolder.h"

#include "org_xmlvm_iphone_NSURLConnection.h"

#define XMLVM_CURRENT_CLASS_NAME NSURLConnection
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSURLConnection

__TIB_DEFINITION_org_xmlvm_iphone_NSURLConnection __TIB_org_xmlvm_iphone_NSURLConnection = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSURLConnection, // classInitializer
    "org.xmlvm.iphone.NSURLConnection", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSURLConnection), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnection;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnection_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSURLConnection();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSMutableURLRequest,
    &__CLASS_org_xmlvm_iphone_NSHTTPURLResponseHolder,
    &__CLASS_org_xmlvm_iphone_NSErrorHolder,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSMutableURLRequest,
    &__CLASS_org_xmlvm_iphone_NSURLConnectionDelegate,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"sendSynchronousRequest",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"connectionWithRequest",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSURLConnection_sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder(argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 1:
        org_xmlvm_iphone_NSURLConnection_connectionWithRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSURLConnectionDelegate(argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSURLConnection()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_NSURLConnection);
    if (!__TIB_org_xmlvm_iphone_NSURLConnection.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_NSURLConnection();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_NSURLConnection);
}

void __INIT_IMPL_org_xmlvm_iphone_NSURLConnection()
{
    if (!__TIB_org_xmlvm_iphone_NSURLConnection.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_NSURLConnection.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_NSURLConnection.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnection;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSURLConnection.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_NSURLConnection.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSURLConnection.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_NSURLConnection.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSURLConnection.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSURLConnection.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_NSURLConnection.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSURLConnection.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSURLConnection.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_NSURLConnection.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSURLConnection.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_NSURLConnection = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSURLConnection);
        __TIB_org_xmlvm_iphone_NSURLConnection.clazz = __CLASS_org_xmlvm_iphone_NSURLConnection;
        __CLASS_org_xmlvm_iphone_NSURLConnection_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLConnection, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLConnection]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_NSURLConnection.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_NSURLConnection(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLConnection]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLConnection(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLConnection()
{
    if (!__TIB_org_xmlvm_iphone_NSURLConnection.classInitialized) __INIT_org_xmlvm_iphone_NSURLConnection();
    org_xmlvm_iphone_NSURLConnection* me = (org_xmlvm_iphone_NSURLConnection*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLConnection));
    me->tib = &__TIB_org_xmlvm_iphone_NSURLConnection;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLConnection(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLConnection]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSURLConnection);
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
    NSMutableURLRequest* req = (NSMutableURLRequest*) ((org_xmlvm_iphone_NSMutableURLRequest*) n1)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    NSURLConnectionDelegateWrapper* delegate = (NSURLConnectionDelegateWrapper*) ((org_xmlvm_iphone_NSURLConnectionDelegate*) n2)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    NSURLConnection* connection = [[NSURLConnection alloc] initWithRequest: req delegate: delegate];
    org_xmlvm_iphone_NSURLConnection* connection_ = __NEW_org_xmlvm_iphone_NSURLConnection();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(connection_, connection);
    [delegate setConnection: connection_];
    connection_->fields.org_xmlvm_iphone_NSURLConnection.delegate_ = (org_xmlvm_iphone_NSURLConnectionDelegate*) n2;
    return connection_;
    //XMLVM_END_WRAPPER
}

