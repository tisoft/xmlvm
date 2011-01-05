
#include "org_xmlvm_iphone_MFMailComposeResult.h"

__TIB_DEFINITION_org_xmlvm_iphone_MFMailComposeResult __TIB_org_xmlvm_iphone_MFMailComposeResult = {
    0, // classInitialized
    "org.xmlvm.iphone.MFMailComposeResult", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeResult;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MFMailComposeResult_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled;
static JAVA_INT _STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved;
static JAVA_INT _STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent;
static JAVA_INT _STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Cancelled",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled,
    "",
    JAVA_NULL},
    {"Saved",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved,
    "",
    JAVA_NULL},
    {"Sent",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent,
    "",
    JAVA_NULL},
    {"Failed",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_MFMailComposeResult()
{
    __TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_MFMailComposeResult.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeResult;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MFMailComposeResult.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MFMailComposeResult.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MFMailComposeResult.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled = 0;
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved = 1;
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent = 2;
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed = 3;

    __TIB_org_xmlvm_iphone_MFMailComposeResult.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MFMailComposeResult.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MFMailComposeResult = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_MFMailComposeResult);
    __TIB_org_xmlvm_iphone_MFMailComposeResult.clazz = __CLASS_org_xmlvm_iphone_MFMailComposeResult;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MFMailComposeResult]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MFMailComposeResult(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MFMailComposeResult]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MFMailComposeResult()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    org_xmlvm_iphone_MFMailComposeResult* me = (org_xmlvm_iphone_MFMailComposeResult*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MFMailComposeResult));
    me->tib = &__TIB_org_xmlvm_iphone_MFMailComposeResult;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MFMailComposeResult]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MFMailComposeResult()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MFMailComposeResult();
    org_xmlvm_iphone_MFMailComposeResult___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Cancelled()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    return _STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled;
}

void org_xmlvm_iphone_MFMailComposeResult_PUT_Cancelled(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Cancelled = v;
}

JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Saved()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    return _STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved;
}

void org_xmlvm_iphone_MFMailComposeResult_PUT_Saved(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Saved = v;
}

JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Sent()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    return _STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent;
}

void org_xmlvm_iphone_MFMailComposeResult_PUT_Sent(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Sent = v;
}

JAVA_INT org_xmlvm_iphone_MFMailComposeResult_GET_Failed()
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    return _STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed;
}

void org_xmlvm_iphone_MFMailComposeResult_PUT_Failed(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MFMailComposeResult.classInitialized) __INIT_org_xmlvm_iphone_MFMailComposeResult();
    _STATIC_org_xmlvm_iphone_MFMailComposeResult_Failed = v;
}

void org_xmlvm_iphone_MFMailComposeResult___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MFMailComposeResult___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

