#include "xmlvm.h"

#include "org_xmlvm_iphone_CMRotationRate.h"

#define XMLVM_CURRENT_CLASS_NAME CMRotationRate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CMRotationRate

__TIB_DEFINITION_org_xmlvm_iphone_CMRotationRate __TIB_org_xmlvm_iphone_CMRotationRate = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CMRotationRate, // classInitializer
    "org.xmlvm.iphone.CMRotationRate", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CMRotationRate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMRotationRate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMRotationRate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMRotationRate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMRotationRate_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"x",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CMRotationRate, fields.org_xmlvm_iphone_CMRotationRate.x_),
    0,
    "",
    JAVA_NULL},
    {"y",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CMRotationRate, fields.org_xmlvm_iphone_CMRotationRate.y_),
    0,
    "",
    JAVA_NULL},
    {"z",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CMRotationRate, fields.org_xmlvm_iphone_CMRotationRate.z_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CMRotationRate,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_double,
    &__CLASS_double,
    &__CLASS_double,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CMRotationRate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(DDD)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CMRotationRate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CMRotationRate___INIT____org_xmlvm_iphone_CMRotationRate(obj, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_CMRotationRate___INIT____double_double_double(obj, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[2])->fields.java_lang_Double.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
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
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CMRotationRate()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CMRotationRate);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CMRotationRate.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CMRotationRate.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CMRotationRate);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CMRotationRate.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CMRotationRate.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CMRotationRate.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CMRotationRate")
        __INIT_IMPL_org_xmlvm_iphone_CMRotationRate();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CMRotationRate()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_CMRotationRate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CMRotationRate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CMRotationRate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CMRotationRate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CMRotationRate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CMRotationRate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMRotationRate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CMRotationRate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CMRotationRate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMRotationRate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CMRotationRate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CMRotationRate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMRotationRate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CMRotationRate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CMRotationRate);
    __TIB_org_xmlvm_iphone_CMRotationRate.clazz = __CLASS_org_xmlvm_iphone_CMRotationRate;
    __TIB_org_xmlvm_iphone_CMRotationRate.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CMRotationRate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMRotationRate);
    __CLASS_org_xmlvm_iphone_CMRotationRate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMRotationRate_1ARRAY);
    __CLASS_org_xmlvm_iphone_CMRotationRate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMRotationRate_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CMRotationRate]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CMRotationRate.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CMRotationRate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CMRotationRate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMRotationRate(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_CMRotationRate*) me)->fields.org_xmlvm_iphone_CMRotationRate.x_ = 0;
    ((org_xmlvm_iphone_CMRotationRate*) me)->fields.org_xmlvm_iphone_CMRotationRate.y_ = 0;
    ((org_xmlvm_iphone_CMRotationRate*) me)->fields.org_xmlvm_iphone_CMRotationRate.z_ = 0;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMRotationRate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CMRotationRate()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_CMRotationRate)
org_xmlvm_iphone_CMRotationRate* me = (org_xmlvm_iphone_CMRotationRate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CMRotationRate));
    me->tib = &__TIB_org_xmlvm_iphone_CMRotationRate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMRotationRate(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CMRotationRate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CMRotationRate()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CMRotationRate___INIT____org_xmlvm_iphone_CMRotationRate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMRotationRate___INIT____org_xmlvm_iphone_CMRotationRate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CMRotationRate___INIT____double_double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMRotationRate___INIT____double_double_double]
    org_xmlvm_iphone_CMRotationRate* thiz = me;
    thiz->fields.org_xmlvm_iphone_CMRotationRate.x_ = n1;
    thiz->fields.org_xmlvm_iphone_CMRotationRate.y_ = n2;
    thiz->fields.org_xmlvm_iphone_CMRotationRate.z_ = n3;
    //XMLVM_END_WRAPPER
}

