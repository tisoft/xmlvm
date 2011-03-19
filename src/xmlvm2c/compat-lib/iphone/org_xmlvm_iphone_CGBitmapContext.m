#include "xmlvm.h"
#include "org_xmlvm_iphone_CGImage.h"

#include "org_xmlvm_iphone_CGBitmapContext.h"

#define XMLVM_CURRENT_CLASS_NAME CGBitmapContext
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGBitmapContext

__TIB_DEFINITION_org_xmlvm_iphone_CGBitmapContext __TIB_org_xmlvm_iphone_CGBitmapContext = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CGBitmapContext, // classInitializer
    "org.xmlvm.iphone.CGBitmapContext", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CGContext, // extends
    sizeof(org_xmlvm_iphone_CGBitmapContext), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGBitmapContext();
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
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_CGImage,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"createWithSize",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"createWithSize",
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
        org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int_org_xmlvm_iphone_CGImage(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, argsArray[2]);
        break;
    case 1:
        org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGBitmapContext()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_CGBitmapContext);
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_CGBitmapContext();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_CGBitmapContext);
}

void __INIT_IMPL_org_xmlvm_iphone_CGBitmapContext()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_CGBitmapContext.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_IMPL_org_xmlvm_iphone_CGContext();
        __TIB_org_xmlvm_iphone_CGBitmapContext.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGBitmapContext.vtable, __TIB_org_xmlvm_iphone_CGContext.vtable, sizeof(__TIB_org_xmlvm_iphone_CGContext.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_CGBitmapContext.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_CGBitmapContext.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_CGBitmapContext.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGBitmapContext.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_CGBitmapContext.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_CGBitmapContext.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGBitmapContext.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_CGBitmapContext.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_CGBitmapContext.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGBitmapContext.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_CGBitmapContext = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGBitmapContext);
        __TIB_org_xmlvm_iphone_CGBitmapContext.clazz = __CLASS_org_xmlvm_iphone_CGBitmapContext;
        __CLASS_org_xmlvm_iphone_CGBitmapContext_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapContext, 3);
        __CLASS_org_xmlvm_iphone_CGBitmapContext_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapContext, 2);
        __CLASS_org_xmlvm_iphone_CGBitmapContext_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapContext, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGBitmapContext]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_CGBitmapContext(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGContext(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGBitmapContext()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    org_xmlvm_iphone_CGBitmapContext* me = (org_xmlvm_iphone_CGBitmapContext*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGBitmapContext));
    me->tib = &__TIB_org_xmlvm_iphone_CGBitmapContext;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int_org_xmlvm_iphone_CGImage(JAVA_INT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int_org_xmlvm_iphone_CGImage]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGBitmapContext_createWithSize___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

