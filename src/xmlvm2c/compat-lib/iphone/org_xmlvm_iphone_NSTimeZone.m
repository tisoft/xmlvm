#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSTimeZone.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSTimeZone __TIB_org_xmlvm_iphone_NSTimeZone = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSTimeZone, // classInitializer
    "org.xmlvm.iphone.NSTimeZone", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimeZone;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSTimeZone_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_String,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSTimeZone();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSTimeZone___INIT____java_lang_String(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_NSTimeZone()
{
    __TIB_org_xmlvm_iphone_NSTimeZone.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSTimeZone.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSTimeZone;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSTimeZone.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSTimeZone.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSTimeZone_name__;
    __TIB_org_xmlvm_iphone_NSTimeZone.vtable[7] = (VTABLE_PTR) &org_xmlvm_iphone_NSTimeZone_toString__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSTimeZone.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSTimeZone.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSTimeZone.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSTimeZone.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSTimeZone.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSTimeZone.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSTimeZone.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSTimeZone = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSTimeZone);
    __TIB_org_xmlvm_iphone_NSTimeZone.clazz = __CLASS_org_xmlvm_iphone_NSTimeZone;
    __CLASS_org_xmlvm_iphone_NSTimeZone_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSTimeZone, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSTimeZone]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSTimeZone(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSTimeZone]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSTimeZone()
{
    if (!__TIB_org_xmlvm_iphone_NSTimeZone.classInitialized) __INIT_org_xmlvm_iphone_NSTimeZone();
    org_xmlvm_iphone_NSTimeZone* me = (org_xmlvm_iphone_NSTimeZone*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSTimeZone));
    me->tib = &__TIB_org_xmlvm_iphone_NSTimeZone;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSTimeZone]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSTimeZone()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSTimeZone___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSTimeZone___INIT____java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSTimeZone_name__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSTimeZone_name__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSTimeZone_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSTimeZone_toString__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

