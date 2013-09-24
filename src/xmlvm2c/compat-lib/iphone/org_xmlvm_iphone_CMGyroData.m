#include "xmlvm.h"
#include "org_xmlvm_iphone_CMRotationRate.h"

#include "org_xmlvm_iphone_CMGyroData.h"

#define XMLVM_CURRENT_CLASS_NAME CMGyroData
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CMGyroData

__TIB_DEFINITION_org_xmlvm_iphone_CMGyroData __TIB_org_xmlvm_iphone_CMGyroData = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CMGyroData, // classInitializer
    "org.xmlvm.iphone.CMGyroData", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CMLogItem, // extends
    sizeof(org_xmlvm_iphone_CMGyroData), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroData;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroData_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroData_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMGyroData_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <CoreMotion/CMGyro.h>
void org_xmlvm_iphone_CMGyroData_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [CMGyroData class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_CMGyroData();
        org_xmlvm_iphone_CMGyroData_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"rotationRate",
    &__CLASS_org_xmlvm_iphone_CMRotationRate,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CMGyroData, fields.org_xmlvm_iphone_CMGyroData.rotationRate_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CMRotationRate,
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
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CMGyroData();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CMGyroData___INIT____org_xmlvm_iphone_CMRotationRate(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"rotationRate",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CMRotationRate;",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_CMGyroData_rotationRate__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CMGyroData()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CMGyroData);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CMGyroData.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CMGyroData.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CMGyroData);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CMGyroData.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CMGyroData.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CMGyroData.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CMGyroData")
        __INIT_IMPL_org_xmlvm_iphone_CMGyroData();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CMGyroData()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CMLogItem)
    __TIB_org_xmlvm_iphone_CMGyroData.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CMGyroData;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CMGyroData.vtable, __TIB_org_xmlvm_iphone_CMLogItem.vtable, sizeof(__TIB_org_xmlvm_iphone_CMLogItem.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CMGyroData.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CMGyroData.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CMGyroData.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMGyroData.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CMGyroData.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CMGyroData.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMGyroData.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CMGyroData.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CMGyroData.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMGyroData.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CMGyroData = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CMGyroData);
    __TIB_org_xmlvm_iphone_CMGyroData.clazz = __CLASS_org_xmlvm_iphone_CMGyroData;
    __TIB_org_xmlvm_iphone_CMGyroData.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CMGyroData_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMGyroData);
    __CLASS_org_xmlvm_iphone_CMGyroData_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMGyroData_1ARRAY);
    __CLASS_org_xmlvm_iphone_CMGyroData_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMGyroData_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CMGyroData]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CMGyroData.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CMGyroData(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CMGyroData]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMGyroData(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMLogItem(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_CMGyroData*) me)->fields.org_xmlvm_iphone_CMGyroData.rotationRate_ = (org_xmlvm_iphone_CMRotationRate*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMGyroData]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CMGyroData()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_CMGyroData)
org_xmlvm_iphone_CMGyroData* me = (org_xmlvm_iphone_CMGyroData*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CMGyroData));
    me->tib = &__TIB_org_xmlvm_iphone_CMGyroData;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMGyroData(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CMGyroData]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CMGyroData()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CMGyroData___INIT____org_xmlvm_iphone_CMRotationRate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMGyroData___INIT____org_xmlvm_iphone_CMRotationRate]
	org_xmlvm_iphone_CMGyroData* thiz = me;
    thiz->fields.org_xmlvm_iphone_CMGyroData.rotationRate_ = n1;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CMGyroData_rotationRate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMGyroData_rotationRate__]
    org_xmlvm_iphone_CMGyroData* thiz = me;
    return thiz->fields.org_xmlvm_iphone_CMGyroData.rotationRate_;
    //XMLVM_END_WRAPPER
}

