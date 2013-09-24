#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSErrorHolder.h"

#include "org_xmlvm_iphone_NSJSONSerialization.h"

#define XMLVM_CURRENT_CLASS_NAME NSJSONSerialization
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSJSONSerialization

__TIB_DEFINITION_org_xmlvm_iphone_NSJSONSerialization __TIB_org_xmlvm_iphone_NSJSONSerialization = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSJSONSerialization, // classInitializer
    "org.xmlvm.iphone.NSJSONSerialization", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSJSONSerialization), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONSerialization;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONSerialization_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONSerialization_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSJSONSerialization_3ARRAY;
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSJSONSerialization();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSJSONSerialization___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_NSErrorHolder,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"JSONObjectWithData",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSData;ILorg/xmlvm/iphone/NSErrorHolder;)Ljava/lang/Object;",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSJSONSerialization_JSONObjectWithData___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, argsArray[2]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSJSONSerialization()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSJSONSerialization);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSJSONSerialization.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSJSONSerialization.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSJSONSerialization);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSJSONSerialization.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSJSONSerialization.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSJSONSerialization.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSJSONSerialization")
        __INIT_IMPL_org_xmlvm_iphone_NSJSONSerialization();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSJSONSerialization()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_NSJSONSerialization.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSJSONSerialization;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSJSONSerialization.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSJSONSerialization.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSJSONSerialization.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSJSONSerialization.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSJSONSerialization.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSJSONSerialization.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSJSONSerialization.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSJSONSerialization.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSJSONSerialization.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSJSONSerialization.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSJSONSerialization.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSJSONSerialization = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSJSONSerialization);
    __TIB_org_xmlvm_iphone_NSJSONSerialization.clazz = __CLASS_org_xmlvm_iphone_NSJSONSerialization;
    __TIB_org_xmlvm_iphone_NSJSONSerialization.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSJSONSerialization_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSJSONSerialization);
    __CLASS_org_xmlvm_iphone_NSJSONSerialization_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSJSONSerialization_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSJSONSerialization_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSJSONSerialization_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSJSONSerialization]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSJSONSerialization.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSJSONSerialization(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSJSONSerialization]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSJSONSerialization(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSJSONSerialization]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSJSONSerialization()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONSerialization)
org_xmlvm_iphone_NSJSONSerialization* me = (org_xmlvm_iphone_NSJSONSerialization*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSJSONSerialization));
    me->tib = &__TIB_org_xmlvm_iphone_NSJSONSerialization;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSJSONSerialization(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSJSONSerialization]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSJSONSerialization()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSJSONSerialization();
    org_xmlvm_iphone_NSJSONSerialization___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSJSONSerialization___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSJSONSerialization___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSJSONSerialization_JSONObjectWithData___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSJSONSerialization)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSJSONSerialization_JSONObjectWithData___org_xmlvm_iphone_NSData_int_org_xmlvm_iphone_NSErrorHolder]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

