#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CGDataProvider.h"

#define XMLVM_CURRENT_CLASS_NAME CGDataProvider
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGDataProvider

__TIB_DEFINITION_org_xmlvm_iphone_CGDataProvider __TIB_org_xmlvm_iphone_CGDataProvider = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CGDataProvider, // classInitializer
    "org.xmlvm.iphone.CGDataProvider", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CGDataProvider), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGDataProvider;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGDataProvider_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGDataProvider();
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
    &__CLASS_java_lang_String,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"providerToPath",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_CGDataProvider_providerToPath___java_lang_String(argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGDataProvider()
{
    __TIB_org_xmlvm_iphone_CGDataProvider.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CGDataProvider.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGDataProvider;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGDataProvider.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CGDataProvider.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGDataProvider.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_CGDataProvider.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGDataProvider.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGDataProvider.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGDataProvider.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGDataProvider.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGDataProvider.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGDataProvider.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGDataProvider.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGDataProvider = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGDataProvider);
    __TIB_org_xmlvm_iphone_CGDataProvider.clazz = __CLASS_org_xmlvm_iphone_CGDataProvider;
    __CLASS_org_xmlvm_iphone_CGDataProvider_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGDataProvider, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGDataProvider]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGDataProvider(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGDataProvider]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGDataProvider()
{
    if (!__TIB_org_xmlvm_iphone_CGDataProvider.classInitialized) __INIT_org_xmlvm_iphone_CGDataProvider();
    org_xmlvm_iphone_CGDataProvider* me = (org_xmlvm_iphone_CGDataProvider*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGDataProvider));
    me->tib = &__TIB_org_xmlvm_iphone_CGDataProvider;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGDataProvider(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGDataProvider]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGDataProvider()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGDataProvider_providerToPath___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_CGDataProvider.classInitialized) __INIT_org_xmlvm_iphone_CGDataProvider();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGDataProvider_providerToPath___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

