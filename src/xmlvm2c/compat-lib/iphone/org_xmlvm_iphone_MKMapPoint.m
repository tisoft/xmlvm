#include "xmlvm.h"

#include "org_xmlvm_iphone_MKMapPoint.h"

#define XMLVM_CURRENT_CLASS_NAME MKMapPoint
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKMapPoint

__TIB_DEFINITION_org_xmlvm_iphone_MKMapPoint __TIB_org_xmlvm_iphone_MKMapPoint = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKMapPoint, // classInitializer
    "org.xmlvm.iphone.MKMapPoint", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKMapPoint), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapPoint;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapPoint_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapPoint_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapPoint_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"x",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKMapPoint, fields.org_xmlvm_iphone_MKMapPoint.x_),
    0,
    "",
    JAVA_NULL},
    {"y",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKMapPoint, fields.org_xmlvm_iphone_MKMapPoint.y_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_double,
    &__CLASS_double,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKMapPoint();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKMapPoint___INIT____double_double(obj, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
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

void __INIT_org_xmlvm_iphone_MKMapPoint()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_MKMapPoint);
    if (!__TIB_org_xmlvm_iphone_MKMapPoint.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_MKMapPoint();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_MKMapPoint);
}

void __INIT_IMPL_org_xmlvm_iphone_MKMapPoint()
{
    if (!__TIB_org_xmlvm_iphone_MKMapPoint.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_MKMapPoint.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_MKMapPoint.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapPoint;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKMapPoint.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        // Initialize interface information
        __TIB_org_xmlvm_iphone_MKMapPoint.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_MKMapPoint.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_MKMapPoint.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKMapPoint.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKMapPoint.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_MKMapPoint.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKMapPoint.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKMapPoint.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_MKMapPoint.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKMapPoint.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_MKMapPoint = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKMapPoint);
        __TIB_org_xmlvm_iphone_MKMapPoint.clazz = __CLASS_org_xmlvm_iphone_MKMapPoint;
        __TIB_org_xmlvm_iphone_MKMapPoint.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_MKMapPoint_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapPoint);
        __CLASS_org_xmlvm_iphone_MKMapPoint_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapPoint_1ARRAY);
        __CLASS_org_xmlvm_iphone_MKMapPoint_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapPoint_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapPoint]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_MKMapPoint.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_MKMapPoint(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapPoint]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapPoint(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
    ((org_xmlvm_iphone_MKMapPoint*) me)->fields.org_xmlvm_iphone_MKMapPoint.x_ = 0;
    ((org_xmlvm_iphone_MKMapPoint*) me)->fields.org_xmlvm_iphone_MKMapPoint.y_ = 0;
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapPoint()
{
    if (!__TIB_org_xmlvm_iphone_MKMapPoint.classInitialized) __INIT_org_xmlvm_iphone_MKMapPoint();
    org_xmlvm_iphone_MKMapPoint* me = (org_xmlvm_iphone_MKMapPoint*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapPoint));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapPoint;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapPoint(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapPoint]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapPoint()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKMapPoint___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapPoint___INIT____double_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

