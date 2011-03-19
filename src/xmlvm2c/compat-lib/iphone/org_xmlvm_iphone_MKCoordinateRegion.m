#include "xmlvm.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#include "org_xmlvm_iphone_MKCoordinateSpan.h"

#include "org_xmlvm_iphone_MKCoordinateRegion.h"

#define XMLVM_CURRENT_CLASS_NAME MKCoordinateRegion
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKCoordinateRegion

__TIB_DEFINITION_org_xmlvm_iphone_MKCoordinateRegion __TIB_org_xmlvm_iphone_MKCoordinateRegion = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKCoordinateRegion, // classInitializer
    "org.xmlvm.iphone.MKCoordinateRegion", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKCoordinateRegion), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateRegion_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"center",
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKCoordinateRegion, fields.org_xmlvm_iphone_MKCoordinateRegion.center_),
    0,
    "",
    JAVA_NULL},
    {"span",
    &__CLASS_org_xmlvm_iphone_MKCoordinateSpan,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKCoordinateRegion, fields.org_xmlvm_iphone_MKCoordinateRegion.span_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
    &__CLASS_org_xmlvm_iphone_MKCoordinateSpan,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKCoordinateRegion();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKCoordinateRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_MKCoordinateSpan(obj, argsArray[0], argsArray[1]);
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
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKCoordinateRegion()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_MKCoordinateRegion);
    if (!__TIB_org_xmlvm_iphone_MKCoordinateRegion.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_MKCoordinateRegion();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_MKCoordinateRegion);
}

void __INIT_IMPL_org_xmlvm_iphone_MKCoordinateRegion()
{
    if (!__TIB_org_xmlvm_iphone_MKCoordinateRegion.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKCoordinateRegion;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKCoordinateRegion.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_MKCoordinateRegion.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_MKCoordinateRegion = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKCoordinateRegion);
        __TIB_org_xmlvm_iphone_MKCoordinateRegion.clazz = __CLASS_org_xmlvm_iphone_MKCoordinateRegion;
        __CLASS_org_xmlvm_iphone_MKCoordinateRegion_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKCoordinateRegion, 3);
        __CLASS_org_xmlvm_iphone_MKCoordinateRegion_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKCoordinateRegion, 2);
        __CLASS_org_xmlvm_iphone_MKCoordinateRegion_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKCoordinateRegion, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKCoordinateRegion]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_MKCoordinateRegion.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_MKCoordinateRegion(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKCoordinateRegion]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKCoordinateRegion(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
    ((org_xmlvm_iphone_MKCoordinateRegion*) me)->fields.org_xmlvm_iphone_MKCoordinateRegion.center_ = (org_xmlvm_iphone_CLLocationCoordinate2D*) JAVA_NULL;
    ((org_xmlvm_iphone_MKCoordinateRegion*) me)->fields.org_xmlvm_iphone_MKCoordinateRegion.span_ = (org_xmlvm_iphone_MKCoordinateSpan*) JAVA_NULL;
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKCoordinateRegion()
{
    if (!__TIB_org_xmlvm_iphone_MKCoordinateRegion.classInitialized) __INIT_org_xmlvm_iphone_MKCoordinateRegion();
    org_xmlvm_iphone_MKCoordinateRegion* me = (org_xmlvm_iphone_MKCoordinateRegion*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKCoordinateRegion));
    me->tib = &__TIB_org_xmlvm_iphone_MKCoordinateRegion;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKCoordinateRegion(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKCoordinateRegion]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKCoordinateRegion()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKCoordinateRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_MKCoordinateSpan(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKCoordinateRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_MKCoordinateSpan]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

