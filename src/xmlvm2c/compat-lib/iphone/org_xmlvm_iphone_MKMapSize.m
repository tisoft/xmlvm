#include "xmlvm.h"

#include "org_xmlvm_iphone_MKMapSize.h"

#define XMLVM_CURRENT_CLASS_NAME MKMapSize
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKMapSize

__TIB_DEFINITION_org_xmlvm_iphone_MKMapSize __TIB_org_xmlvm_iphone_MKMapSize = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MKMapSize, // classInitializer
    "org.xmlvm.iphone.MKMapSize", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKMapSize), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapSize;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapSize_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapSize_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapSize_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"width",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKMapSize, fields.org_xmlvm_iphone_MKMapSize.width_),
    0,
    "",
    JAVA_NULL},
    {"height",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKMapSize, fields.org_xmlvm_iphone_MKMapSize.height_),
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKMapSize();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKMapSize___INIT____double_double(obj, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
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

void __INIT_org_xmlvm_iphone_MKMapSize()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MKMapSize);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MKMapSize.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MKMapSize.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MKMapSize);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MKMapSize.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MKMapSize.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MKMapSize.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_MKMapSize();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MKMapSize()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKMapSize.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapSize;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKMapSize.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MKMapSize.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKMapSize.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_MKMapSize.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapSize.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKMapSize.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKMapSize.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapSize.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKMapSize.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MKMapSize.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapSize.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKMapSize = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKMapSize);
    __TIB_org_xmlvm_iphone_MKMapSize.clazz = __CLASS_org_xmlvm_iphone_MKMapSize;
    __TIB_org_xmlvm_iphone_MKMapSize.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MKMapSize_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapSize);
    __CLASS_org_xmlvm_iphone_MKMapSize_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapSize_1ARRAY);
    __CLASS_org_xmlvm_iphone_MKMapSize_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapSize_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapSize]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MKMapSize.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MKMapSize(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapSize]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapSize(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
    ((org_xmlvm_iphone_MKMapSize*) me)->fields.org_xmlvm_iphone_MKMapSize.width_ = 0;
    ((org_xmlvm_iphone_MKMapSize*) me)->fields.org_xmlvm_iphone_MKMapSize.height_ = 0;
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapSize()
{
    if (!__TIB_org_xmlvm_iphone_MKMapSize.classInitialized) __INIT_org_xmlvm_iphone_MKMapSize();
    org_xmlvm_iphone_MKMapSize* me = (org_xmlvm_iphone_MKMapSize*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapSize));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapSize;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapSize(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapSize]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapSize()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKMapSize___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapSize___INIT____double_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

