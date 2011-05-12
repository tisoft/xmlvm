#include "xmlvm.h"

#include "org_xmlvm_iphone_NSNumberFormatter.h"

#define XMLVM_CURRENT_CLASS_NAME NSNumberFormatter
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSNumberFormatter

__TIB_DEFINITION_org_xmlvm_iphone_NSNumberFormatter __TIB_org_xmlvm_iphone_NSNumberFormatter = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSNumberFormatter, // classInitializer
    "org.xmlvm.iphone.NSNumberFormatter", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSNumberFormatter), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatter;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatter_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatter_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSNumberFormatter_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSNumberFormatter();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSNumberFormatter___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setNumberStyle",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"numberStyle",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"maximumFractionDigits",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setMaximumFractionDigits",
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
        org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_NSNumberFormatter_numberStyle__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSNumberFormatter()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSNumberFormatter);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSNumberFormatter.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSNumberFormatter.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSNumberFormatter);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSNumberFormatter.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSNumberFormatter.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSNumberFormatter.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSNumberFormatter();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSNumberFormatter()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSNumberFormatter.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSNumberFormatter;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSNumberFormatter.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSNumberFormatter.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int;
    __TIB_org_xmlvm_iphone_NSNumberFormatter.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_NSNumberFormatter_numberStyle__;
    __TIB_org_xmlvm_iphone_NSNumberFormatter.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__;
    __TIB_org_xmlvm_iphone_NSNumberFormatter.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSNumberFormatter.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSNumberFormatter.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSNumberFormatter.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNumberFormatter.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNumberFormatter.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSNumberFormatter.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNumberFormatter.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSNumberFormatter.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSNumberFormatter.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSNumberFormatter.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSNumberFormatter = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSNumberFormatter);
    __TIB_org_xmlvm_iphone_NSNumberFormatter.clazz = __CLASS_org_xmlvm_iphone_NSNumberFormatter;
    __TIB_org_xmlvm_iphone_NSNumberFormatter.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSNumberFormatter_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNumberFormatter);
    __CLASS_org_xmlvm_iphone_NSNumberFormatter_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNumberFormatter_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSNumberFormatter_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSNumberFormatter_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSNumberFormatter]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSNumberFormatter.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSNumberFormatter(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSNumberFormatter]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNumberFormatter(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSNumberFormatter()
{
    if (!__TIB_org_xmlvm_iphone_NSNumberFormatter.classInitialized) __INIT_org_xmlvm_iphone_NSNumberFormatter();
    org_xmlvm_iphone_NSNumberFormatter* me = (org_xmlvm_iphone_NSNumberFormatter*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSNumberFormatter));
    me->tib = &__TIB_org_xmlvm_iphone_NSNumberFormatter;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSNumberFormatter(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSNumberFormatter]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSNumberFormatter()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSNumberFormatter();
    org_xmlvm_iphone_NSNumberFormatter___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSNumberFormatter___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter_setNumberStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatter_numberStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter_numberStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter_maximumFractionDigits__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSNumberFormatter_setMaximumFractionDigits___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

