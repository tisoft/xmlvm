#include "org_xmlvm_iphone_NSData.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSUserDefaults.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSUserDefaults __TIB_org_xmlvm_iphone_NSUserDefaults = {
    0, // classInitialized
    "org.xmlvm.iphone.NSUserDefaults", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSUserDefaults()
{
    __TIB_org_xmlvm_iphone_NSUserDefaults.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSUserDefaults.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSUserDefaults;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSUserDefaults.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_objectForKey___java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_setObject___java_lang_Object_java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_setInteger___int_java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_integerForKey___java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_synchronize__;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_setBool___boolean_java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_boolForKey___java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_setFloat___float_java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_floatForKey___java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_dataForKey___java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_stringForKey___java_lang_String;
    __TIB_org_xmlvm_iphone_NSUserDefaults.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_NSUserDefaults_remove___java_lang_String;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSUserDefaults.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSUserDefaults.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    org_xmlvm_iphone_NSUserDefaults___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSUserDefaults]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSUserDefaults(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSUserDefaults]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSUserDefaults()
{
    if (!__TIB_org_xmlvm_iphone_NSUserDefaults.classInitialized) __INIT_org_xmlvm_iphone_NSUserDefaults();
    org_xmlvm_iphone_NSUserDefaults* me = (org_xmlvm_iphone_NSUserDefaults*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSUserDefaults));
    me->tib = &__TIB_org_xmlvm_iphone_NSUserDefaults;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSUserDefaults]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSUserDefaults()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSUserDefaults();
    org_xmlvm_iphone_NSUserDefaults___INIT___(me);
    return me;
}

void org_xmlvm_iphone_NSUserDefaults___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_standardUserDefaults__()
{
    if (!__TIB_org_xmlvm_iphone_NSUserDefaults.classInitialized) __INIT_org_xmlvm_iphone_NSUserDefaults();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_standardUserDefaults__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_objectForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_objectForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUserDefaults_setObject___java_lang_Object_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_setObject___java_lang_Object_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUserDefaults_setInteger___int_java_lang_String(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_setInteger___int_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSUserDefaults_integerForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_integerForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUserDefaults_synchronize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_synchronize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUserDefaults_setBool___boolean_java_lang_String(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_setBool___boolean_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSUserDefaults_boolForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_boolForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUserDefaults_setFloat___float_java_lang_String(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_setFloat___float_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_NSUserDefaults_floatForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_floatForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_dataForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_dataForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSUserDefaults_stringForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_stringForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUserDefaults_remove___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults_remove___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUserDefaults___CLINIT_()
{
    if (!__TIB_org_xmlvm_iphone_NSUserDefaults.classInitialized) __INIT_org_xmlvm_iphone_NSUserDefaults();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUserDefaults___CLINIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

