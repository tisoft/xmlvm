#include "xmlvm.h"
#include "org_xmlvm_iphone_SKProductsRequest.h"
#include "org_xmlvm_iphone_SKProductsResponse.h"

#include "org_xmlvm_iphone_SKProductsRequestDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME SKProductsRequestDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_SKProductsRequestDelegate

__TIB_DEFINITION_org_xmlvm_iphone_SKProductsRequestDelegate __TIB_org_xmlvm_iphone_SKProductsRequestDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_SKProductsRequestDelegate, // classInitializer
    "org.xmlvm.iphone.SKProductsRequestDelegate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_SKProductsRequestDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <StoreKit/SKProductsRequest.h>

@interface SKProductsRequestDelegateWrapper : DelegateWrapper <SKProductsRequestDelegate> {
    SKProductsRequestDelegateWrapper* delegate;
}
    - (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response;

@end

@implementation SKProductsRequestDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
{
    [super init];
    self->delegate = delegate_;
    return self;
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response
{
    if (!__TIB_org_xmlvm_iphone_SKProductsResponse.classInitialized) __INIT_org_xmlvm_iphone_SKProductsResponse();
    
    SKProductsRequestDelegateWrapper* delegate_ = self->delegate;
    Func_VOOO func=(Func_VOO) ((java_lang_Object*)self->delegate)->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_SKProductsRequestDelegate_didReceiveResponse___org_xmlvm_iphone_SKProductsRequest_org_xmlvm_iphone_SKProductsResponse];

    func(delegate_, xmlvm_get_associated_c_object(request), xmlvm_get_associated_c_object(response));
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKProductsRequestDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_SKProductsRequestDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_SKProductsRequest,
    &__CLASS_org_xmlvm_iphone_SKProductsResponse,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"didReceiveResponse",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/SKProductsRequest;Lorg/xmlvm/iphone/SKProductsResponse;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        //org_xmlvm_iphone_SKProductsRequestDelegate_didReceiveResponse___org_xmlvm_iphone_SKProductsRequest_org_xmlvm_iphone_SKProductsResponse(receiver, argsArray[0], argsArray[1]);
        XMLVM_INTERNAL_ERROR();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_SKProductsRequestDelegate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_SKProductsRequestDelegate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_SKProductsRequestDelegate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_SKProductsRequestDelegate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_SKProductsRequestDelegate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.SKProductsRequestDelegate")
        __INIT_IMPL_org_xmlvm_iphone_SKProductsRequestDelegate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_SKProductsRequestDelegate()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequestDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKProductsRequestDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKProductsRequestDelegate);
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.clazz = __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate;
    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKProductsRequestDelegate);
    __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKProductsRequestDelegate_1ARRAY);
    __CLASS_org_xmlvm_iphone_SKProductsRequestDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKProductsRequestDelegate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKProductsRequestDelegate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_SKProductsRequestDelegate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_SKProductsRequestDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKProductsRequestDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKProductsRequestDelegate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKProductsRequestDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsRequestDelegate()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_SKProductsRequestDelegate)
org_xmlvm_iphone_SKProductsRequestDelegate* me = (org_xmlvm_iphone_SKProductsRequestDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKProductsRequestDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_SKProductsRequestDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKProductsRequestDelegate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKProductsRequestDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequestDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_SKProductsRequestDelegate();
    org_xmlvm_iphone_SKProductsRequestDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_SKProductsRequestDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsRequestDelegate___INIT___]
    SKProductsRequestDelegateWrapper* wrapper=[[SKProductsRequestDelegateWrapper alloc] initWithDelegate:me];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrapper);
    //XMLVM_END_WRAPPER
}

