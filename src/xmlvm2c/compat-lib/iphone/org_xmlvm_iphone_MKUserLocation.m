#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MKUserLocation.h"

#define XMLVM_CURRENT_CLASS_NAME MKUserLocation
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKUserLocation

__TIB_DEFINITION_org_xmlvm_iphone_MKUserLocation __TIB_org_xmlvm_iphone_MKUserLocation = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKUserLocation, // classInitializer
    "org.xmlvm.iphone.MKUserLocation", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_MKAnnotation, // extends
    sizeof(org_xmlvm_iphone_MKUserLocation), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKUserLocation();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKUserLocation___INIT___(obj);
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
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getLocation",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isUpdating",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSubtitle",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setSubtitle",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTitle",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitle",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCoordinate",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_MKUserLocation_getLocation__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_MKUserLocation_isUpdating__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_MKUserLocation_getSubtitle__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_MKUserLocation_getTitle__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_MKUserLocation_getCoordinate__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKUserLocation()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_MKUserLocation);
    if (!__TIB_org_xmlvm_iphone_MKUserLocation.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_MKUserLocation();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_MKUserLocation);
}

void __INIT_IMPL_org_xmlvm_iphone_MKUserLocation()
{
    if (!__TIB_org_xmlvm_iphone_MKUserLocation.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_MKUserLocation.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_MKAnnotation.classInitialized) __INIT_IMPL_org_xmlvm_iphone_MKAnnotation();
        __TIB_org_xmlvm_iphone_MKUserLocation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKUserLocation.vtable, __TIB_org_xmlvm_iphone_MKAnnotation.vtable, sizeof(__TIB_org_xmlvm_iphone_MKAnnotation.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_MKUserLocation.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getLocation__;
        __TIB_org_xmlvm_iphone_MKUserLocation.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_isUpdating__;
        __TIB_org_xmlvm_iphone_MKUserLocation.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getSubtitle__;
        __TIB_org_xmlvm_iphone_MKUserLocation.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String;
        __TIB_org_xmlvm_iphone_MKUserLocation.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getTitle__;
        __TIB_org_xmlvm_iphone_MKUserLocation.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String;
        __TIB_org_xmlvm_iphone_MKUserLocation.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getCoordinate__;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_MKUserLocation.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_MKUserLocation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_MKUserLocation.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKUserLocation.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKUserLocation.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_MKUserLocation.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKUserLocation.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKUserLocation.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_MKUserLocation.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKUserLocation.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_MKUserLocation = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKUserLocation);
        __TIB_org_xmlvm_iphone_MKUserLocation.clazz = __CLASS_org_xmlvm_iphone_MKUserLocation;
        __TIB_org_xmlvm_iphone_MKUserLocation.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_MKUserLocation_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKUserLocation);
        __CLASS_org_xmlvm_iphone_MKUserLocation_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKUserLocation_1ARRAY);
        __CLASS_org_xmlvm_iphone_MKUserLocation_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKUserLocation_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKUserLocation]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_MKUserLocation.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_MKUserLocation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKUserLocation]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKUserLocation(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKAnnotation(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKUserLocation()
{
    if (!__TIB_org_xmlvm_iphone_MKUserLocation.classInitialized) __INIT_org_xmlvm_iphone_MKUserLocation();
    org_xmlvm_iphone_MKUserLocation* me = (org_xmlvm_iphone_MKUserLocation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKUserLocation));
    me->tib = &__TIB_org_xmlvm_iphone_MKUserLocation;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKUserLocation(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKUserLocation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MKUserLocation();
    org_xmlvm_iphone_MKUserLocation___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MKUserLocation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getLocation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getLocation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKUserLocation_isUpdating__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_isUpdating__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getSubtitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getSubtitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getCoordinate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getCoordinate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

