#include "xmlvm.h"
#include "org_xmlvm_iphone_MKMapPoint.h"
#include "org_xmlvm_iphone_MKMapSize.h"

#include "org_xmlvm_iphone_MKMapRect.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME MKMapRect
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKMapRect

__TIB_DEFINITION_org_xmlvm_iphone_MKMapRect __TIB_org_xmlvm_iphone_MKMapRect = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MKMapRect, // classInitializer
    "org.xmlvm.iphone.MKMapRect", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKMapRect), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapRect;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapRect_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapRect_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapRect_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"origin",
    &__CLASS_org_xmlvm_iphone_MKMapPoint,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKMapRect, fields.org_xmlvm_iphone_MKMapRect.origin_),
    0,
    "",
    JAVA_NULL},
    {"size",
    &__CLASS_org_xmlvm_iphone_MKMapSize,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKMapRect, fields.org_xmlvm_iphone_MKMapRect.size_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKMapRect();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKMapRect___INIT____float_float_float_float(obj, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
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

void __INIT_org_xmlvm_iphone_MKMapRect()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MKMapRect);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MKMapRect.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MKMapRect.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MKMapRect);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MKMapRect.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MKMapRect.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MKMapRect.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MKMapRect();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MKMapRect()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKMapRect.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapRect;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKMapRect.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MKMapRect.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKMapRect.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_MKMapRect.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapRect.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKMapRect.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKMapRect.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapRect.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKMapRect.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MKMapRect.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapRect.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKMapRect = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKMapRect);
    __TIB_org_xmlvm_iphone_MKMapRect.clazz = __CLASS_org_xmlvm_iphone_MKMapRect;
    __TIB_org_xmlvm_iphone_MKMapRect.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MKMapRect_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapRect);
    __CLASS_org_xmlvm_iphone_MKMapRect_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapRect_1ARRAY);
    __CLASS_org_xmlvm_iphone_MKMapRect_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapRect_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapRect]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MKMapRect.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MKMapRect(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapRect]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapRect(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_MKMapRect*) me)->fields.org_xmlvm_iphone_MKMapRect.origin_ = (org_xmlvm_iphone_MKMapPoint*) JAVA_NULL;
    ((org_xmlvm_iphone_MKMapRect*) me)->fields.org_xmlvm_iphone_MKMapRect.size_ = (org_xmlvm_iphone_MKMapSize*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapRect]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapRect()
{
    if (!__TIB_org_xmlvm_iphone_MKMapRect.classInitialized) __INIT_org_xmlvm_iphone_MKMapRect();
    org_xmlvm_iphone_MKMapRect* me = (org_xmlvm_iphone_MKMapRect*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapRect));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapRect;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapRect(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapRect]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapRect()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKMapRect___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapRect___INIT____float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

