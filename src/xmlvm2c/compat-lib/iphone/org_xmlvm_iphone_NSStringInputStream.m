#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSStringInputStream.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSStringInputStream __TIB_org_xmlvm_iphone_NSStringInputStream = {
    0, // classInitialized
    "org.xmlvm.iphone.NSStringInputStream", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_io_InputStream, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringInputStream;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringInputStream_ARRAYTYPE;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSStringInputStream();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSStringInputStream___INIT____java_lang_String(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_NSStringInputStream()
{
    __TIB_org_xmlvm_iphone_NSStringInputStream.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_io_InputStream.classInitialized) __INIT_java_io_InputStream();
    __TIB_org_xmlvm_iphone_NSStringInputStream.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSStringInputStream;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSStringInputStream.vtable, __TIB_java_io_InputStream.vtable, sizeof(__TIB_java_io_InputStream.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_available__;
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_close__;
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_mark___int;
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_markSupported__;
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE_int_int;
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE;
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_reset__;
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_skip___long;
    __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_read__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSStringInputStream.numImplementedInterfaces = 1;
    __TIB_org_xmlvm_iphone_NSStringInputStream.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 1);
    __INIT_FOR_CLASS_java_io_Closeable(&__TIB_org_xmlvm_iphone_NSStringInputStream.implementedInterfaces[0][0]);
    __TIB_org_xmlvm_iphone_NSStringInputStream.implementedInterfaces[0][0]->vtable[11] = __TIB_org_xmlvm_iphone_NSStringInputStream.vtable[12];

    __TIB_org_xmlvm_iphone_NSStringInputStream.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSStringInputStream.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSStringInputStream.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSStringInputStream.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSStringInputStream.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSStringInputStream = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSStringInputStream);
    __TIB_org_xmlvm_iphone_NSStringInputStream.clazz = __CLASS_org_xmlvm_iphone_NSStringInputStream;
    __CLASS_org_xmlvm_iphone_NSStringInputStream_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSStringInputStream, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSStringInputStream]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSStringInputStream(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSStringInputStream]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSStringInputStream()
{
    if (!__TIB_org_xmlvm_iphone_NSStringInputStream.classInitialized) __INIT_org_xmlvm_iphone_NSStringInputStream();
    org_xmlvm_iphone_NSStringInputStream* me = (org_xmlvm_iphone_NSStringInputStream*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSStringInputStream));
    me->tib = &__TIB_org_xmlvm_iphone_NSStringInputStream;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSStringInputStream]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSStringInputStream()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSStringInputStream___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream___INIT____java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSStringInputStream_available__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_available__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSStringInputStream_close__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_close__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSStringInputStream_mark___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_mark___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSStringInputStream_markSupported__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_markSupported__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSStringInputStream_reset__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_reset__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_LONG org_xmlvm_iphone_NSStringInputStream_skip___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_skip___long]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSStringInputStream_read__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringInputStream_read__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

