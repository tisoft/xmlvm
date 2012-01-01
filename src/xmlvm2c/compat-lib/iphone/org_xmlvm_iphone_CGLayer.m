#include "xmlvm.h"
#include "org_xmlvm_iphone_CGContext.h"
#include "org_xmlvm_iphone_CGSize.h"

#include "org_xmlvm_iphone_CGLayer.h"

#define XMLVM_CURRENT_CLASS_NAME CGLayer
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGLayer

__TIB_DEFINITION_org_xmlvm_iphone_CGLayer __TIB_org_xmlvm_iphone_CGLayer = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGLayer, // classInitializer
    "org.xmlvm.iphone.CGLayer", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CFType, // extends
    sizeof(org_xmlvm_iphone_CGLayer), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLayer;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLayer_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLayer_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGLayer_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGLayer();
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
    &__CLASS_org_xmlvm_iphone_CGContext,
    &__CLASS_org_xmlvm_iphone_CGSize,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"createWithContext",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGContext;Lorg/xmlvm/iphone/CGSize;)Lorg/xmlvm/iphone/CGLayer;",
    JAVA_NULL,
    JAVA_NULL},
    {"getContext",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGContext;",
    JAVA_NULL,
    JAVA_NULL},
    {"getSize",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGSize;",
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
        org_xmlvm_iphone_CGLayer_createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize(argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_CGLayer_getContext__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_CGLayer_getSize__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGLayer()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGLayer);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGLayer.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGLayer.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGLayer);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGLayer.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGLayer.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGLayer.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CGLayer();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGLayer()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_CFType.classInitialized) __INIT_org_xmlvm_iphone_CFType();
    __TIB_org_xmlvm_iphone_CGLayer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGLayer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGLayer.vtable, __TIB_org_xmlvm_iphone_CFType.vtable, sizeof(__TIB_org_xmlvm_iphone_CFType.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGLayer.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGLayer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CGLayer.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGLayer.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGLayer.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGLayer.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGLayer.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGLayer.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGLayer.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGLayer.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGLayer = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGLayer);
    __TIB_org_xmlvm_iphone_CGLayer.clazz = __CLASS_org_xmlvm_iphone_CGLayer;
    __TIB_org_xmlvm_iphone_CGLayer.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGLayer_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGLayer);
    __CLASS_org_xmlvm_iphone_CGLayer_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGLayer_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGLayer_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGLayer_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGLayer]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGLayer.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGLayer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGLayer]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLayer(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFType(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLayer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGLayer()
{
    if (!__TIB_org_xmlvm_iphone_CGLayer.classInitialized) __INIT_org_xmlvm_iphone_CGLayer();
    org_xmlvm_iphone_CGLayer* me = (org_xmlvm_iphone_CGLayer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGLayer));
    me->tib = &__TIB_org_xmlvm_iphone_CGLayer;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGLayer(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGLayer]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGLayer()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGLayer_createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGLayer.classInitialized) __INIT_org_xmlvm_iphone_CGLayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGLayer_createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGLayer_getContext__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGLayer_getContext__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGLayer_getSize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGLayer_getSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

