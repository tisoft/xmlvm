#include "xmlvm.h"

#include "org_xmlvm_iphone_NSDate.h"

#define XMLVM_CURRENT_CLASS_NAME NSDate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSDate

__TIB_DEFINITION_org_xmlvm_iphone_NSDate __TIB_org_xmlvm_iphone_NSDate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSDate, // classInitializer
    "org.xmlvm.iphone.NSDate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSDate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDate_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSDate();
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
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"date",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dateWithTimeIntervalSince1970",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"dateWithTimeIntervalSinceReferenceDate",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"timeIntervalSinceReferenceDate",
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
        org_xmlvm_iphone_NSDate_date__();
        break;
    case 1:
        org_xmlvm_iphone_NSDate_dateWithTimeIntervalSince1970___double(((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 2:
        org_xmlvm_iphone_NSDate_dateWithTimeIntervalSinceReferenceDate___double(((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 3:
        org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSDate()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_NSDate);
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_NSDate();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_NSDate);
}

void __INIT_IMPL_org_xmlvm_iphone_NSDate()
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_NSDate.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_NSDate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSDate;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSDate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_NSDate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_NSDate.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSDate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_NSDate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSDate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSDate.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_NSDate.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSDate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSDate.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_NSDate.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSDate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_NSDate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSDate);
        __TIB_org_xmlvm_iphone_NSDate.clazz = __CLASS_org_xmlvm_iphone_NSDate;
        __CLASS_org_xmlvm_iphone_NSDate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSDate, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSDate]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_NSDate.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_NSDate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSDate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDate(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDate()
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) __INIT_org_xmlvm_iphone_NSDate();
    org_xmlvm_iphone_NSDate* me = (org_xmlvm_iphone_NSDate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSDate));
    me->tib = &__TIB_org_xmlvm_iphone_NSDate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDate(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSDate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDate()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSDate_date__()
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) __INIT_org_xmlvm_iphone_NSDate();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDate_date__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSDate_dateWithTimeIntervalSince1970___double(JAVA_DOUBLE n1)
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) __INIT_org_xmlvm_iphone_NSDate();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDate_dateWithTimeIntervalSince1970___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSDate_dateWithTimeIntervalSinceReferenceDate___double(JAVA_DOUBLE n1)
{
    if (!__TIB_org_xmlvm_iphone_NSDate.classInitialized) __INIT_org_xmlvm_iphone_NSDate();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDate_dateWithTimeIntervalSinceReferenceDate___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDate_timeIntervalSinceReferenceDate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

