#include "xmlvm.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_SKProductsRequestDelegate.h"

#include "org_xmlvm_iphone_SKProductsRequest.h"

#define XMLVM_CURRENT_CLASS_NAME SKProductsRequest
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_SKProductsRequest

__TIB_DEFINITION_org_xmlvm_iphone_SKProductsRequest __TIB_org_xmlvm_iphone_SKProductsRequest = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_SKProductsRequest, // classInitializer
    "org.xmlvm.iphone.SKProductsRequest", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_SKRequest, // extends
    sizeof(org_xmlvm_iphone_SKProductsRequest), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequest;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequest_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequest_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKProductsRequest_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#include "java_util_Iterator.h"
#import <Storekit/SKProductsRequest.h>

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [SKProductsRequest class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_SKProductsRequest();
        org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_util_Set,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/Set;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKProductsRequest();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_SKProductsRequest___INIT____java_util_Set(obj, argsArray[0]);
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
    &__CLASS_org_xmlvm_iphone_SKProductsRequestDelegate,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getProductsDelegate",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/SKProductsRequestDelegate;",
    JAVA_NULL,
    JAVA_NULL},
    {"setProductsDelegate",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/SKProductsRequestDelegate;)V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_SKProductsRequest_getProductsDelegate__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_SKProductsRequest_setProductsDelegate___org_xmlvm_iphone_SKProductsRequestDelegate(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_SKProductsRequest()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_SKProductsRequest);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_SKProductsRequest.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_SKProductsRequest.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_SKProductsRequest);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_SKProductsRequest.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_SKProductsRequest.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_SKProductsRequest.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_SKProductsRequest();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_SKProductsRequest()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_SKRequest.classInitialized) __INIT_org_xmlvm_iphone_SKRequest();
    __TIB_org_xmlvm_iphone_SKProductsRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequest;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKProductsRequest.vtable, __TIB_org_xmlvm_iphone_SKRequest.vtable, sizeof(__TIB_org_xmlvm_iphone_SKRequest.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_SKProductsRequest.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKProductsRequest.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_SKProductsRequest.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKProductsRequest.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKProductsRequest.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_SKProductsRequest.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKProductsRequest.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKProductsRequest.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_SKProductsRequest.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKProductsRequest.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKProductsRequest = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKProductsRequest);
    __TIB_org_xmlvm_iphone_SKProductsRequest.clazz = __CLASS_org_xmlvm_iphone_SKProductsRequest;
    __TIB_org_xmlvm_iphone_SKProductsRequest.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_SKProductsRequest_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKProductsRequest);
    __CLASS_org_xmlvm_iphone_SKProductsRequest_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKProductsRequest_1ARRAY);
    __CLASS_org_xmlvm_iphone_SKProductsRequest_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKProductsRequest_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKProductsRequest]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_SKProductsRequest.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_SKProductsRequest(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKProductsRequest]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKProductsRequest(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKRequest(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKProductsRequest]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKProductsRequest()
{
    if (!__TIB_org_xmlvm_iphone_SKProductsRequest.classInitialized) __INIT_org_xmlvm_iphone_SKProductsRequest();
    org_xmlvm_iphone_SKProductsRequest* me = (org_xmlvm_iphone_SKProductsRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKProductsRequest));
    me->tib = &__TIB_org_xmlvm_iphone_SKProductsRequest;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_SKProductsRequest(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKProductsRequest]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKProductsRequest()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_SKProductsRequest___INIT____java_util_Set(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsRequest___INIT____java_util_Set]
    Func_IO sizeFunc=((java_lang_Object*)n1)->tib->itableBegin[XMLVM_ITABLE_IDX_java_util_Set_size__];
    Func_OO iteratorFunc=((java_lang_Object*)n1)->tib->itableBegin[XMLVM_ITABLE_IDX_java_util_Set_iterator__];

    java_util_Iterator* iterator=iteratorFunc(n1);
    
    Func_BO hasNextFunc=((java_lang_Object*)iterator)->tib->itableBegin[XMLVM_ITABLE_IDX_java_util_Iterator_hasNext__];
    Func_OO nextFunc=((java_lang_Object*)iterator)->tib->itableBegin[XMLVM_ITABLE_IDX_java_util_Iterator_next__];
    
    NSMutableSet* identifiers = [[NSMutableSet alloc] initWithCapacity:sizeFunc(n1)];
    
    while (hasNextFunc(iterator))
    {
        java_lang_String* string=nextFunc(iterator);
        [identifiers addObject:toNSString(string)];
    }    
    SKProductsRequest* request=[[SKProductsRequest alloc] initWithProductIdentifiers: identifiers];
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, request);
    
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKProductsRequest_getProductsDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsRequest_getProductsDelegate__]
    XMLVM_VAR_THIZ;
    return xmlvm_get_associated_c_object([thiz delegate]);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_SKProductsRequest_setProductsDelegate___org_xmlvm_iphone_SKProductsRequestDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKProductsRequest_setProductsDelegate___org_xmlvm_iphone_SKProductsRequestDelegate]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(NSObject, delegate, n1);
    [thiz setDelegate:delegate];
    //XMLVM_END_WRAPPER
}

