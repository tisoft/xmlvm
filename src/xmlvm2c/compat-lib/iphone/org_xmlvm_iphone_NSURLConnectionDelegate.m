#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSURLConnection.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_NSURLConnectionDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME NSURLConnectionDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSURLConnectionDelegate

__TIB_DEFINITION_org_xmlvm_iphone_NSURLConnectionDelegate __TIB_org_xmlvm_iphone_NSURLConnectionDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSURLConnectionDelegate, // classInitializer
    "org.xmlvm.iphone.NSURLConnectionDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSURLConnectionDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

@implementation NSURLConnectionDelegateWrapper

- (id) initWithDelegate: (JAVA_OBJECT) d_
{
    [super init];
    delegate_ = d_;
    connection_ = JAVA_NULL;
    return self;
}

- (void) setConnection: (org_xmlvm_iphone_NSURLConnection*) c_
{
	// TODO: Make use of DelegateWrapper bases class to support multiple source classes
	if (connection_ != JAVA_NULL) {
		XMLVM_INTERNAL_ERROR();
	}
	
    connection_ = c_;
}

- (void) connectionDidFinishLoading: (NSURLConnection*) connection
{
    Func_VOO callback = (Func_VOO) ((org_xmlvm_iphone_NSURLConnectionDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection];
    callback(delegate_, connection_);
}

- (void) connection: (NSURLConnection*) connection didFailWithError: (NSError*) error
{
    Func_VOOO callback = (Func_VOOO) ((org_xmlvm_iphone_NSURLConnectionDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError];
    org_xmlvm_iphone_NSError* error_ = __NEW_org_xmlvm_iphone_NSError();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(error_, [error retain]);
    callback(delegate_, connection_, error_);
}

- (void) connection: (NSURLConnection*) connection didReceiveData: (NSData*) data
{
    Func_VOOO callback = (Func_VOOO) ((org_xmlvm_iphone_NSURLConnectionDelegate*) delegate_)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData];
    org_xmlvm_iphone_NSData* data_ = __NEW_org_xmlvm_iphone_NSData();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(data_, [data retain]);
    callback(delegate_, connection_, data_);
}

@end

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

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURLConnection,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURLConnection,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURLConnection,
    &__CLASS_org_xmlvm_iphone_NSData,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"connectionDidFinishLoading",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"connectionDidFailWithError",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"connectionDidReceiveData",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError(receiver, argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSURLConnectionDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSURLConnectionDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSURLConnectionDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSURLConnectionDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSURLConnectionDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSURLConnectionDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSURLConnectionDelegate()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLConnectionDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSURLConnectionDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSURLConnectionDelegate);
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.clazz = __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate;
    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLConnectionDelegate);
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLConnectionDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLConnectionDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSURLConnectionDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSURLConnectionDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLConnectionDelegate]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLConnectionDelegate(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLConnectionDelegate()
{
    if (!__TIB_org_xmlvm_iphone_NSURLConnectionDelegate.classInitialized) __INIT_org_xmlvm_iphone_NSURLConnectionDelegate();
    org_xmlvm_iphone_NSURLConnectionDelegate* me = (org_xmlvm_iphone_NSURLConnectionDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLConnectionDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_NSURLConnectionDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLConnectionDelegate(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLConnectionDelegate]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSURLConnectionDelegate);
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
    NSURLConnectionDelegateWrapper* delegate = [[NSURLConnectionDelegateWrapper alloc] initWithDelegate: me];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, delegate);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFinishLoading___org_xmlvm_iphone_NSURLConnection]
    
    // The default implementation simply returns
    
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidFailWithError___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSError]
    
    // The default implementation simply returns
    
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLConnectionDelegate_connectionDidReceiveData___org_xmlvm_iphone_NSURLConnection_org_xmlvm_iphone_NSData]
    
    // The default implementation simply returns
    
    //XMLVM_END_WRAPPER
}

