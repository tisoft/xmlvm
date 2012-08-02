#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_List.h"

#include "org_xmlvm_iphone_NSLocale.h"

#define XMLVM_CURRENT_CLASS_NAME NSLocale
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSLocale

__TIB_DEFINITION_org_xmlvm_iphone_NSLocale __TIB_org_xmlvm_iphone_NSLocale = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSLocale, // classInitializer
    "org.xmlvm.iphone.NSLocale", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSLocale), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSLocale();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
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
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"systemLocale",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSLocale;",
    JAVA_NULL,
    JAVA_NULL},
    {"currentLocale",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSLocale;",
    JAVA_NULL,
    JAVA_NULL},
    {"localeIdentifier",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"preferredLanguages",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSLocale_systemLocale__();
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSLocale_currentLocale__();
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSLocale_localeIdentifier__(receiver);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSLocale_preferredLanguages__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSLocale()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSLocale);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSLocale.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSLocale.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSLocale);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSLocale.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSLocale.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSLocale();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSLocale()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSLocale.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSLocale;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSLocale.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSLocale.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSLocale.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSLocale.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSLocale.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSLocale.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSLocale.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSLocale.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSLocale.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSLocale.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSLocale.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSLocale = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSLocale);
    __TIB_org_xmlvm_iphone_NSLocale.clazz = __CLASS_org_xmlvm_iphone_NSLocale;
    __TIB_org_xmlvm_iphone_NSLocale.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSLocale_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSLocale);
    __CLASS_org_xmlvm_iphone_NSLocale_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSLocale_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSLocale_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSLocale_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSLocale.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSLocale(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSLocale(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSLocale()
{
    if (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) __INIT_org_xmlvm_iphone_NSLocale();
    org_xmlvm_iphone_NSLocale* me = (org_xmlvm_iphone_NSLocale*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSLocale));
    me->tib = &__TIB_org_xmlvm_iphone_NSLocale;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSLocale(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSLocale()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSLocale_systemLocale__()
{
    if (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) __INIT_org_xmlvm_iphone_NSLocale();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSLocale_systemLocale__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSLocale_currentLocale__()
{
    if (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) __INIT_org_xmlvm_iphone_NSLocale();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSLocale_currentLocale__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSLocale_localeIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSLocale_localeIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSLocale_preferredLanguages__()
{
    if (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) __INIT_org_xmlvm_iphone_NSLocale();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSLocale_preferredLanguages__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

