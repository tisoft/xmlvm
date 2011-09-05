#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "java_util_ArrayList.h"
#include "java_lang_Object.h"
#include "org_xmlvm_iphone_GKDataReceiveHandler.h"
#include "org_xmlvm_iphone_NSErrorHolder.h"
#include "org_xmlvm_iphone_GKSessionDelegate.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_GKSession.h"

#define XMLVM_CURRENT_CLASS_NAME GKSession
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_GKSession

__TIB_DEFINITION_org_xmlvm_iphone_GKSession __TIB_org_xmlvm_iphone_GKSession = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_GKSession, // classInitializer
    "org.xmlvm.iphone.GKSession", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_GKSession), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSession;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSession_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSession_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_GKSession_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_java_lang_String,
    &__CLASS_int,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_GKSession();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_GKSession___INIT____java_lang_String_java_lang_String_int(obj, argsArray[0], argsArray[1], ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_GKSessionDelegate,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_double,
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
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_double,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_org_xmlvm_iphone_NSErrorHolder,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_GKDataReceiveHandler,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
    &__CLASS_java_util_ArrayList,
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_NSErrorHolder,
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_NSErrorHolder,
};

static JAVA_OBJECT* __method19_arg_types[] = {
};

static JAVA_OBJECT* __method20_arg_types[] = {
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getDelegate",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isAvailable",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAvailable",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDisconnectTimeout",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDisconnectTimeout",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDisplayName",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getPeerID",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSessionID",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSessionMode",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"peersWithConnectionState",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"displayNameForPeer",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"connectToPeer",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"cancelConnectToPeer",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"acceptConnectionFromPeer",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"denyConnectionFromPeer",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDataReceiveHandler",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"sendData",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"sendDataToAllPeers",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"disconnectFromAllPeers",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"disconnectPeerFromAllPeers",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_GKSession_getDelegate__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_GKSession_setDelegate___org_xmlvm_iphone_GKSessionDelegate(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_GKSession_isAvailable__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_GKSession_setAvailable___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 4:
        org_xmlvm_iphone_GKSession_getDisconnectTimeout__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_GKSession_setDisconnectTimeout___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 6:
        org_xmlvm_iphone_GKSession_getDisplayName__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_GKSession_getPeerID__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_GKSession_getSessionID__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_GKSession_getSessionMode__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_GKSession_peersWithConnectionState___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 11:
        org_xmlvm_iphone_GKSession_displayNameForPeer___java_lang_String(receiver, argsArray[0]);
        break;
    case 12:
        org_xmlvm_iphone_GKSession_connectToPeer___java_lang_String_double(receiver, argsArray[0], ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
        break;
    case 13:
        org_xmlvm_iphone_GKSession_cancelConnectToPeer___java_lang_String(receiver, argsArray[0]);
        break;
    case 14:
        org_xmlvm_iphone_GKSession_acceptConnectionFromPeer___java_lang_String_org_xmlvm_iphone_NSErrorHolder(receiver, argsArray[0], argsArray[1]);
        break;
    case 15:
        org_xmlvm_iphone_GKSession_denyConnectionFromPeer___java_lang_String(receiver, argsArray[0]);
        break;
    case 16:
        org_xmlvm_iphone_GKSession_setDataReceiveHandler___org_xmlvm_iphone_GKDataReceiveHandler_java_lang_Object(receiver, argsArray[0], argsArray[1]);
        break;
    case 17:
        org_xmlvm_iphone_GKSession_sendData___org_xmlvm_iphone_NSData_java_util_ArrayList_int_org_xmlvm_iphone_NSErrorHolder(receiver, argsArray[0], argsArray[1], ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, argsArray[3]);
        break;
    case 18:
        org_xmlvm_iphone_GKSession_sendDataToAllPeers___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, argsArray[2]);
        break;
    case 19:
        org_xmlvm_iphone_GKSession_disconnectFromAllPeers__(receiver);
        break;
    case 20:
        org_xmlvm_iphone_GKSession_disconnectPeerFromAllPeers___java_lang_String(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_GKSession()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_GKSession);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_GKSession.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_GKSession.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_GKSession);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_GKSession.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_GKSession.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_GKSession.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_GKSession();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_GKSession()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_GKSession.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_GKSession;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_GKSession.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_GKSession.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_GKSession.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_GKSession.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKSession.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_GKSession.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_GKSession.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKSession.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_GKSession.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_GKSession.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_GKSession.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_GKSession = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_GKSession);
    __TIB_org_xmlvm_iphone_GKSession.clazz = __CLASS_org_xmlvm_iphone_GKSession;
    __TIB_org_xmlvm_iphone_GKSession.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_GKSession_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKSession);
    __CLASS_org_xmlvm_iphone_GKSession_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKSession_1ARRAY);
    __CLASS_org_xmlvm_iphone_GKSession_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_GKSession_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_GKSession]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_GKSession.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_GKSession(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_GKSession]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKSession(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_GKSession()
{
    if (!__TIB_org_xmlvm_iphone_GKSession.classInitialized) __INIT_org_xmlvm_iphone_GKSession();
    org_xmlvm_iphone_GKSession* me = (org_xmlvm_iphone_GKSession*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_GKSession));
    me->tib = &__TIB_org_xmlvm_iphone_GKSession;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_GKSession(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_GKSession]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_GKSession()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_GKSession___INIT____java_lang_String_java_lang_String_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession___INIT____java_lang_String_java_lang_String_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_GKSession_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_setDelegate___org_xmlvm_iphone_GKSessionDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_setDelegate___org_xmlvm_iphone_GKSessionDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_GKSession_isAvailable__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_isAvailable__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_setAvailable___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_setAvailable___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_GKSession_getDisconnectTimeout__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_getDisconnectTimeout__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_setDisconnectTimeout___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_setDisconnectTimeout___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_GKSession_getDisplayName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_getDisplayName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_GKSession_getPeerID__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_getPeerID__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_GKSession_getSessionID__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_getSessionID__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_GKSession_getSessionMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_getSessionMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_GKSession_peersWithConnectionState___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_peersWithConnectionState___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_GKSession_displayNameForPeer___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_displayNameForPeer___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_connectToPeer___java_lang_String_double(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_connectToPeer___java_lang_String_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_cancelConnectToPeer___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_cancelConnectToPeer___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_GKSession_acceptConnectionFromPeer___java_lang_String_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_acceptConnectionFromPeer___java_lang_String_org_xmlvm_iphone_NSErrorHolder]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_denyConnectionFromPeer___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_denyConnectionFromPeer___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_setDataReceiveHandler___org_xmlvm_iphone_GKDataReceiveHandler_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_setDataReceiveHandler___org_xmlvm_iphone_GKDataReceiveHandler_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_GKSession_sendData___org_xmlvm_iphone_NSData_java_util_ArrayList_int_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_sendData___org_xmlvm_iphone_NSData_java_util_ArrayList_int_org_xmlvm_iphone_NSErrorHolder]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_GKSession_sendDataToAllPeers___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_sendDataToAllPeers___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_disconnectFromAllPeers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_disconnectFromAllPeers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_GKSession_disconnectPeerFromAllPeers___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_GKSession_disconnectPeerFromAllPeers___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

