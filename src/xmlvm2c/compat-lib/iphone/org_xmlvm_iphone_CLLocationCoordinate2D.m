#include "xmlvm.h"

#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"

#define XMLVM_CURRENT_CLASS_NAME CLLocationCoordinate2D
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CLLocationCoordinate2D

__TIB_DEFINITION_org_xmlvm_iphone_CLLocationCoordinate2D __TIB_org_xmlvm_iphone_CLLocationCoordinate2D = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CLLocationCoordinate2D, // classInitializer
    "org.xmlvm.iphone.CLLocationCoordinate2D", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CLLocationCoordinate2D), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"latitude",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CLLocationCoordinate2D, fields.org_xmlvm_iphone_CLLocationCoordinate2D.latitude_),
    0,
    "",
    JAVA_NULL},
    {"longitude",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_CLLocationCoordinate2D, fields.org_xmlvm_iphone_CLLocationCoordinate2D.longitude_),
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
    "(DD)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CLLocationCoordinate2D();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CLLocationCoordinate2D___INIT____double_double(obj, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
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

void __INIT_org_xmlvm_iphone_CLLocationCoordinate2D()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CLLocationCoordinate2D);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CLLocationCoordinate2D);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CLLocationCoordinate2D.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CLLocationCoordinate2D.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CLLocationCoordinate2D")
        __INIT_IMPL_org_xmlvm_iphone_CLLocationCoordinate2D();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CLLocationCoordinate2D()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLLocationCoordinate2D;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLLocationCoordinate2D.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CLLocationCoordinate2D);
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.clazz = __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D;
    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D);
    __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_1ARRAY);
    __CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLLocationCoordinate2D]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CLLocationCoordinate2D.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CLLocationCoordinate2D(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLLocationCoordinate2D]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationCoordinate2D(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_CLLocationCoordinate2D*) me)->fields.org_xmlvm_iphone_CLLocationCoordinate2D.latitude_ = 0;
    ((org_xmlvm_iphone_CLLocationCoordinate2D*) me)->fields.org_xmlvm_iphone_CLLocationCoordinate2D.longitude_ = 0;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationCoordinate2D]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLLocationCoordinate2D()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_CLLocationCoordinate2D)
org_xmlvm_iphone_CLLocationCoordinate2D* me = (org_xmlvm_iphone_CLLocationCoordinate2D*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLLocationCoordinate2D));
    me->tib = &__TIB_org_xmlvm_iphone_CLLocationCoordinate2D;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CLLocationCoordinate2D(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLLocationCoordinate2D]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLLocationCoordinate2D()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CLLocationCoordinate2D___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLLocationCoordinate2D___INIT____double_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

