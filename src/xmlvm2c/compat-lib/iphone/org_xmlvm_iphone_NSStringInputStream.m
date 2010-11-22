#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSStringInputStream.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSStringInputStream __CLASS_org_xmlvm_iphone_NSStringInputStream = {
    0, // classInitialized
    "org.xmlvm.iphone.NSStringInputStream", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_io_InputStream, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSStringInputStream()
{
    __CLASS_org_xmlvm_iphone_NSStringInputStream.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_io_InputStream.classInitialized) __INIT_java_io_InputStream();
    __CLASS_org_xmlvm_iphone_NSStringInputStream.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSStringInputStream;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSStringInputStream.vtable, __CLASS_java_io_InputStream.vtable, sizeof(__CLASS_java_io_InputStream.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_available__;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_close__;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_mark___int;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_markSupported__;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE_int_int;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_read___byte_ARRAYTYPE;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_reset__;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_skip___long;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_NSStringInputStream_read__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSStringInputStream.numImplementedInterfaces = 1;
    __CLASS_org_xmlvm_iphone_NSStringInputStream.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 1);
    __INIT_java_io_Closeable(&__CLASS_org_xmlvm_iphone_NSStringInputStream.implementedInterfaces[0][0]);
    __CLASS_org_xmlvm_iphone_NSStringInputStream.implementedInterfaces[0][0]->vtable[11] = __CLASS_org_xmlvm_iphone_NSStringInputStream.vtable[16];


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
    if (!__CLASS_org_xmlvm_iphone_NSStringInputStream.classInitialized) __INIT_org_xmlvm_iphone_NSStringInputStream();
    org_xmlvm_iphone_NSStringInputStream* me = (org_xmlvm_iphone_NSStringInputStream*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSStringInputStream));
    me->__class = &__CLASS_org_xmlvm_iphone_NSStringInputStream;
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

