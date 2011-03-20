#include "xmlvm.h"
#include "org_xmlvm_iphone_NSURL.h"

#include "org_xmlvm_iphone_NSURLRequest.h"

#define XMLVM_CURRENT_CLASS_NAME NSURLRequest
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSURLRequest

__TIB_DEFINITION_org_xmlvm_iphone_NSURLRequest __TIB_org_xmlvm_iphone_NSURLRequest = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSURLRequest, // classInitializer
    "org.xmlvm.iphone.NSURLRequest", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSURLRequest), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSURLRequest();
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
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"requestWithURL",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"URL",
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
        org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSURLRequest_URL__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSURLRequest()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_NSURLRequest);
    if (!__TIB_org_xmlvm_iphone_NSURLRequest.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_NSURLRequest();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_NSURLRequest);
}

void __INIT_IMPL_org_xmlvm_iphone_NSURLRequest()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequest.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_NSURLRequest.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_NSURLRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequest;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSURLRequest.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_NSURLRequest.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSURLRequest_URL__;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_NSURLRequest.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSURLRequest.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_NSURLRequest.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSURLRequest.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSURLRequest.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_NSURLRequest.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSURLRequest.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSURLRequest.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_NSURLRequest.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSURLRequest.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_NSURLRequest = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSURLRequest);
        __TIB_org_xmlvm_iphone_NSURLRequest.clazz = __CLASS_org_xmlvm_iphone_NSURLRequest;
        __CLASS_org_xmlvm_iphone_NSURLRequest_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequest, 3);
        __CLASS_org_xmlvm_iphone_NSURLRequest_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequest, 2);
        __CLASS_org_xmlvm_iphone_NSURLRequest_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequest, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLRequest]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_NSURLRequest.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_NSURLRequest(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLRequest]
   __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequest(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLRequest()
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequest.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequest();
    org_xmlvm_iphone_NSURLRequest* me = (org_xmlvm_iphone_NSURLRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLRequest));
    me->tib = &__TIB_org_xmlvm_iphone_NSURLRequest;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequest(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLRequest]
	/*********************************************************************************************
	 * README: Ordinarily the garbage collector will just silently release the memory of
	 * garbage collected objects. If some cleanup needs to be done before this happens, we
	 * need to register a so-called finalizer for this object with the garbage collector.
	 * Since the finalization mechanism is relatively expensive, we only do it for those
	 * objects for which this is necessary. The finalizer to be invoked should always be
	 * the respective __DELETE_* function.
	 */
	// Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_NSURLRequest);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequest()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSURLRequest.classInitialized) __INIT_org_xmlvm_iphone_NSURLRequest();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL]
    XMLVM_VAR_IOS(NSURL, url, n1);
    JAVA_OBJECT urlRequest = __NEW_org_xmlvm_iphone_NSURLRequest();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(urlRequest, [NSURLRequest requestWithURL:url]);
    return urlRequest;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_URL__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_URL__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

