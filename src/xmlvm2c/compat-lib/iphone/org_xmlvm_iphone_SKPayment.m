#include "xmlvm.h"
#include "org_xmlvm_iphone_SKProduct.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_SKPayment.h"

__TIB_DEFINITION_org_xmlvm_iphone_SKPayment __TIB_org_xmlvm_iphone_SKPayment = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_SKPayment, // classInitializer
    "org.xmlvm.iphone.SKPayment", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPayment;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_SKPayment_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_SKPayment();
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
    &__CLASS_org_xmlvm_iphone_SKProduct,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"paymentWithProduct",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"paymentWithProductIdentifier",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getProductIdentifier",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getQuantity",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getRequestData",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_SKPayment_paymentWithProduct___org_xmlvm_iphone_SKProduct(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_SKPayment_paymentWithProductIdentifier___java_lang_String(argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_SKPayment_getProductIdentifier__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_SKPayment_getQuantity__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_SKPayment_getRequestData__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_SKPayment()
{
    __TIB_org_xmlvm_iphone_SKPayment.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_SKPayment.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_SKPayment;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_SKPayment.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_SKPayment.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_SKPayment_getProductIdentifier__;
    __TIB_org_xmlvm_iphone_SKPayment.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_SKPayment_getQuantity__;
    __TIB_org_xmlvm_iphone_SKPayment.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_SKPayment_getRequestData__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_SKPayment.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_SKPayment.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_SKPayment.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPayment.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPayment.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_SKPayment.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPayment.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_SKPayment.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_SKPayment.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_SKPayment.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_SKPayment = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_SKPayment);
    __TIB_org_xmlvm_iphone_SKPayment.clazz = __CLASS_org_xmlvm_iphone_SKPayment;
    __CLASS_org_xmlvm_iphone_SKPayment_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_SKPayment, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_SKPayment]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_SKPayment(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_SKPayment]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_SKPayment()
{
    if (!__TIB_org_xmlvm_iphone_SKPayment.classInitialized) __INIT_org_xmlvm_iphone_SKPayment();
    org_xmlvm_iphone_SKPayment* me = (org_xmlvm_iphone_SKPayment*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_SKPayment));
    me->tib = &__TIB_org_xmlvm_iphone_SKPayment;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_SKPayment]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_SKPayment()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_SKPayment_paymentWithProduct___org_xmlvm_iphone_SKProduct(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_SKPayment.classInitialized) __INIT_org_xmlvm_iphone_SKPayment();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_paymentWithProduct___org_xmlvm_iphone_SKProduct]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPayment_paymentWithProductIdentifier___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_SKPayment.classInitialized) __INIT_org_xmlvm_iphone_SKPayment();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_paymentWithProductIdentifier___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPayment_getProductIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_getProductIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_SKPayment_getQuantity__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_getQuantity__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_SKPayment_getRequestData__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_SKPayment_getRequestData__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

