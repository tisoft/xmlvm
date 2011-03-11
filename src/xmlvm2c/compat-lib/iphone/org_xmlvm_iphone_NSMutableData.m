#include "xmlvm.h"

#include "org_xmlvm_iphone_NSMutableData.h"

#define XMLVM_CURRENT_CLASS_NAME NSMutableData
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSMutableData

__TIB_DEFINITION_org_xmlvm_iphone_NSMutableData __TIB_org_xmlvm_iphone_NSMutableData = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSMutableData, // classInitializer
    "org.xmlvm.iphone.NSMutableData", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSData, // extends
    sizeof(org_xmlvm_iphone_NSMutableData), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableData;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableData_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSMutableData();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSMutableData___INIT___(obj);
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
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_byte_ARRAYTYPE,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"byteCount",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getByte",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"appendByte",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"appendBytes",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSMutableData_byteCount__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_NSMutableData_getByte___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_NSMutableData_appendByte___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 3:
        org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSMutableData()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_NSMutableData);
    if (!__TIB_org_xmlvm_iphone_NSMutableData.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_NSMutableData();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_NSMutableData);
}

void __INIT_IMPL_org_xmlvm_iphone_NSMutableData()
{
    if (!__TIB_org_xmlvm_iphone_NSMutableData.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_NSMutableData.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSData.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSData();
        __TIB_org_xmlvm_iphone_NSMutableData.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSMutableData;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSMutableData.vtable, __TIB_org_xmlvm_iphone_NSData.vtable, sizeof(__TIB_org_xmlvm_iphone_NSData.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_NSMutableData.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableData_byteCount__;
        __TIB_org_xmlvm_iphone_NSMutableData.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableData_getByte___int;
        __TIB_org_xmlvm_iphone_NSMutableData.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableData_appendByte___int;
        __TIB_org_xmlvm_iphone_NSMutableData.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_NSMutableData.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSMutableData.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_NSMutableData.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSMutableData.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSMutableData.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_NSMutableData.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSMutableData.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSMutableData.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_NSMutableData.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSMutableData.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_NSMutableData = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSMutableData);
        __TIB_org_xmlvm_iphone_NSMutableData.clazz = __CLASS_org_xmlvm_iphone_NSMutableData;
        __CLASS_org_xmlvm_iphone_NSMutableData_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSMutableData, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSMutableData]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_NSMutableData.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_NSMutableData(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSMutableData]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSMutableData(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSData(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSMutableData()
{
    if (!__TIB_org_xmlvm_iphone_NSMutableData.classInitialized) __INIT_org_xmlvm_iphone_NSMutableData();
    org_xmlvm_iphone_NSMutableData* me = (org_xmlvm_iphone_NSMutableData*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSMutableData));
    me->tib = &__TIB_org_xmlvm_iphone_NSMutableData;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSMutableData(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSMutableData]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSMutableData()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSMutableData();
    org_xmlvm_iphone_NSMutableData___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSMutableData___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSMutableData_byteCount__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData_byteCount__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSMutableData_getByte___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData_getByte___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSMutableData_appendByte___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData_appendByte___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableData_appendBytes___byte_ARRAYTYPE]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

