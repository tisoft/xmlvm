#include "xmlvm.h"

#include "org_xmlvm_iphone_NSLocale.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSLocale __TIB_org_xmlvm_iphone_NSLocale = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSLocale, // classInitializer
    "org.xmlvm.iphone.NSLocale", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLocale_ARRAYTYPE;

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

void __INIT_org_xmlvm_iphone_NSLocale()
{
    __TIB_org_xmlvm_iphone_NSLocale.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSLocale.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSLocale;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSLocale.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSLocale.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSLocale.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSLocale.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSLocale.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSLocale.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSLocale.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSLocale.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSLocale = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSLocale);
    __TIB_org_xmlvm_iphone_NSLocale.clazz = __CLASS_org_xmlvm_iphone_NSLocale;
    __CLASS_org_xmlvm_iphone_NSLocale_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSLocale, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSLocale(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSLocale]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSLocale()
{
    if (!__TIB_org_xmlvm_iphone_NSLocale.classInitialized) __INIT_org_xmlvm_iphone_NSLocale();
    org_xmlvm_iphone_NSLocale* me = (org_xmlvm_iphone_NSLocale*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSLocale));
    me->tib = &__TIB_org_xmlvm_iphone_NSLocale;
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

