#include "xmlvm.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CLRegion.h"

#define XMLVM_CURRENT_CLASS_NAME CLRegion
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CLRegion

__TIB_DEFINITION_org_xmlvm_iphone_CLRegion __TIB_org_xmlvm_iphone_CLRegion = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CLRegion, // classInitializer
    "org.xmlvm.iphone.CLRegion", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CLRegion), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLRegion;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLRegion_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLRegion_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLRegion_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
    &__CLASS_double,
    &__CLASS_java_lang_String,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CLRegion();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CLRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String(obj, argsArray[0], ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_, argsArray[2]);
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
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getCenter",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getIdentifier",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getRadius",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"containsCoordinate",
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
        org_xmlvm_iphone_CLRegion_getCenter__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_CLRegion_getIdentifier__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_CLRegion_getRadius__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CLRegion()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CLRegion);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CLRegion.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CLRegion.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CLRegion);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CLRegion.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CLRegion.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CLRegion.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CLRegion();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CLRegion()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CLRegion.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLRegion;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLRegion.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CLRegion.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getCenter__;
    __TIB_org_xmlvm_iphone_CLRegion.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getIdentifier__;
    __TIB_org_xmlvm_iphone_CLRegion.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getRadius__;
    __TIB_org_xmlvm_iphone_CLRegion.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CLRegion.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CLRegion.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CLRegion.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLRegion.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLRegion.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CLRegion.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLRegion.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLRegion.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CLRegion.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLRegion.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CLRegion = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CLRegion);
    __TIB_org_xmlvm_iphone_CLRegion.clazz = __CLASS_org_xmlvm_iphone_CLRegion;
    __TIB_org_xmlvm_iphone_CLRegion.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CLRegion_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLRegion);
    __CLASS_org_xmlvm_iphone_CLRegion_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLRegion_1ARRAY);
    __CLASS_org_xmlvm_iphone_CLRegion_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLRegion_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CLRegion.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CLRegion(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLRegion(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLRegion()
{
    if (!__TIB_org_xmlvm_iphone_CLRegion.classInitialized) __INIT_org_xmlvm_iphone_CLRegion();
    org_xmlvm_iphone_CLRegion* me = (org_xmlvm_iphone_CLRegion*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLRegion));
    me->tib = &__TIB_org_xmlvm_iphone_CLRegion;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLRegion(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLRegion()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CLRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLRegion_getCenter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getCenter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLRegion_getIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLRegion_getRadius__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getRadius__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

