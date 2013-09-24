#include "xmlvm.h"
#include "org_xmlvm_iphone_NSMutableURLRequest.h"
#include "org_xmlvm_iphone_NSURL.h"

#include "org_xmlvm_iphone_NSURLRequest.h"

#define XMLVM_CURRENT_CLASS_NAME NSURLRequest
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSURLRequest

__TIB_DEFINITION_org_xmlvm_iphone_NSURLRequest __TIB_org_xmlvm_iphone_NSURLRequest = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSURLRequest, // classInitializer
    "org.xmlvm.iphone.NSURLRequest", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSURLRequest), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSURLRequest_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_iphone_NSURLRequest_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [NSURLRequest class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSURLRequest();
        org_xmlvm_iphone_NSURLRequest_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
    &__CLASS_int,
    &__CLASS_double,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSURL;)V",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSURL;ID)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSURLRequest();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSURLRequest___INIT____org_xmlvm_iphone_NSURL(obj, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSURLRequest___INIT____org_xmlvm_iphone_NSURL_int_double(obj, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Double*) argsArray[2])->fields.java_lang_Double.value_);
        break;
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
    &__CLASS_org_xmlvm_iphone_NSURL,
    &__CLASS_int,
    &__CLASS_double,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSMutableURLRequest,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"requestWithURL",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSURL;)Lorg/xmlvm/iphone/NSURLRequest;",
    JAVA_NULL,
    JAVA_NULL},
    {"requestWithURL",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSURL;ID)Lorg/xmlvm/iphone/NSURLRequest;",
    JAVA_NULL,
    JAVA_NULL},
    {"URL",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSURL;",
    JAVA_NULL,
    JAVA_NULL},
    {"cachePolicy",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"timeoutInterval",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"dummy",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSMutableURLRequest;)V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL(argsArray[0]);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL_int_double(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Double*) argsArray[2])->fields.java_lang_Double.value_);
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSURLRequest_URL__(receiver);
        break;
    case 3:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_NSURLRequest_cachePolicy__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 4:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_NSURLRequest_timeoutInterval__(receiver);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 5:
        org_xmlvm_iphone_NSURLRequest_dummy___org_xmlvm_iphone_NSMutableURLRequest(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSURLRequest()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSURLRequest);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSURLRequest.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSURLRequest.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSURLRequest);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSURLRequest.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSURLRequest.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSURLRequest.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSURLRequest")
        __INIT_IMPL_org_xmlvm_iphone_NSURLRequest();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSURLRequest()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_NSURLRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSURLRequest;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSURLRequest.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSURLRequest.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSURLRequest.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

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
    __TIB_org_xmlvm_iphone_NSURLRequest.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSURLRequest_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequest);
    __CLASS_org_xmlvm_iphone_NSURLRequest_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequest_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSURLRequest_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSURLRequest_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSURLRequest]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //we need to initialize the NSMutableURLRequest, too
    if (!__TIB_org_xmlvm_iphone_NSMutableURLRequest.classInitialized) __INIT_org_xmlvm_iphone_NSMutableURLRequest();
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSURLRequest.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSURLRequest(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSURLRequest]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequest(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequest]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSURLRequest()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSURLRequest)
org_xmlvm_iphone_NSURLRequest* me = (org_xmlvm_iphone_NSURLRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSURLRequest));
    me->tib = &__TIB_org_xmlvm_iphone_NSURLRequest;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSURLRequest(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSURLRequest]
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
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSURLRequest)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL]
    XMLVM_VAR_IOS(NSURL, url, n1);
    JAVA_OBJECT urlRequest = __NEW_org_xmlvm_iphone_NSURLRequest();
    org_xmlvm_iphone_NSURLRequest_INTERNAL_CONSTRUCTOR(urlRequest, [NSURLRequest requestWithURL:url]);
    return urlRequest;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL_int_double(JAVA_OBJECT n1, JAVA_INT n2, JAVA_DOUBLE n3)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSURLRequest)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_requestWithURL___org_xmlvm_iphone_NSURL_int_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLRequest___INIT____org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest___INIT____org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLRequest___INIT____org_xmlvm_iphone_NSURL_int_double(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_DOUBLE n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest___INIT____org_xmlvm_iphone_NSURL_int_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSURLRequest_URL__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_URL__]
    XMLVM_VAR_THIZ;
    return xmlvm_get_associated_c_object([thiz URL]);
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSURLRequest_cachePolicy__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_cachePolicy__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_NSURLRequest_timeoutInterval__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_timeoutInterval__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSURLRequest_dummy___org_xmlvm_iphone_NSMutableURLRequest(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSURLRequest_dummy___org_xmlvm_iphone_NSMutableURLRequest]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

