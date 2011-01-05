
#include "org_xmlvm_iphone_MKMapType.h"

__TIB_DEFINITION_org_xmlvm_iphone_MKMapType __TIB_org_xmlvm_iphone_MKMapType = {
    0, // classInitialized
    "org.xmlvm.iphone.MKMapType", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapType;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapType_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MKMapType_Standard;
static JAVA_INT _STATIC_org_xmlvm_iphone_MKMapType_Satellite;
static JAVA_INT _STATIC_org_xmlvm_iphone_MKMapType_Hybrid;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Standard",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKMapType_Standard,
    "",
    JAVA_NULL},
    {"Satellite",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKMapType_Satellite,
    "",
    JAVA_NULL},
    {"Hybrid",
    &__CLASS_int_TYPE,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKMapType_Hybrid,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_MKMapType()
{
    __TIB_org_xmlvm_iphone_MKMapType.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_MKMapType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKMapType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKMapType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKMapType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_MKMapType_Standard = 0;
    _STATIC_org_xmlvm_iphone_MKMapType_Satellite = 1;
    _STATIC_org_xmlvm_iphone_MKMapType_Hybrid = 2;

    __TIB_org_xmlvm_iphone_MKMapType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKMapType = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_MKMapType);
    __TIB_org_xmlvm_iphone_MKMapType.clazz = __CLASS_org_xmlvm_iphone_MKMapType;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapType]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKMapType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapType()
{
    if (!__TIB_org_xmlvm_iphone_MKMapType.classInitialized) __INIT_org_xmlvm_iphone_MKMapType();
    org_xmlvm_iphone_MKMapType* me = (org_xmlvm_iphone_MKMapType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapType));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapType;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapType()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_MKMapType_GET_Standard()
{
    if (!__TIB_org_xmlvm_iphone_MKMapType.classInitialized) __INIT_org_xmlvm_iphone_MKMapType();
    return _STATIC_org_xmlvm_iphone_MKMapType_Standard;
}

void org_xmlvm_iphone_MKMapType_PUT_Standard(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MKMapType.classInitialized) __INIT_org_xmlvm_iphone_MKMapType();
    _STATIC_org_xmlvm_iphone_MKMapType_Standard = v;
}

JAVA_INT org_xmlvm_iphone_MKMapType_GET_Satellite()
{
    if (!__TIB_org_xmlvm_iphone_MKMapType.classInitialized) __INIT_org_xmlvm_iphone_MKMapType();
    return _STATIC_org_xmlvm_iphone_MKMapType_Satellite;
}

void org_xmlvm_iphone_MKMapType_PUT_Satellite(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MKMapType.classInitialized) __INIT_org_xmlvm_iphone_MKMapType();
    _STATIC_org_xmlvm_iphone_MKMapType_Satellite = v;
}

JAVA_INT org_xmlvm_iphone_MKMapType_GET_Hybrid()
{
    if (!__TIB_org_xmlvm_iphone_MKMapType.classInitialized) __INIT_org_xmlvm_iphone_MKMapType();
    return _STATIC_org_xmlvm_iphone_MKMapType_Hybrid;
}

void org_xmlvm_iphone_MKMapType_PUT_Hybrid(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_MKMapType.classInitialized) __INIT_org_xmlvm_iphone_MKMapType();
    _STATIC_org_xmlvm_iphone_MKMapType_Hybrid = v;
}

