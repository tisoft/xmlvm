#include "xmlvm.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CLRegion.h"

__TIB_DEFINITION_org_xmlvm_iphone_CLRegion __TIB_org_xmlvm_iphone_CLRegion = {
    0, // classInitialized
    "org.xmlvm.iphone.CLRegion", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLRegion;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CLRegion_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CLLocationCoordinate2D,
    &__CLASS_double,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CLRegion();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CLRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String(obj, argsArray[0], ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_, argsArray[2]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_CLRegion()
{
    __TIB_org_xmlvm_iphone_CLRegion.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CLRegion.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CLRegion;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CLRegion.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CLRegion.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getCenter__;
    __TIB_org_xmlvm_iphone_CLRegion.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getIdentifier__;
    __TIB_org_xmlvm_iphone_CLRegion.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_getRadius__;
    __TIB_org_xmlvm_iphone_CLRegion.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_CLRegion.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CLRegion.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_CLRegion.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLRegion.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CLRegion.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CLRegion.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CLRegion.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CLRegion = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CLRegion);
    __TIB_org_xmlvm_iphone_CLRegion.clazz = __CLASS_org_xmlvm_iphone_CLRegion;
    __CLASS_org_xmlvm_iphone_CLRegion_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CLRegion, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CLRegion(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CLRegion()
{
    if (!__TIB_org_xmlvm_iphone_CLRegion.classInitialized) __INIT_org_xmlvm_iphone_CLRegion();
    org_xmlvm_iphone_CLRegion* me = (org_xmlvm_iphone_CLRegion*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CLRegion));
    me->tib = &__TIB_org_xmlvm_iphone_CLRegion;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CLRegion]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CLRegion()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_CLRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_DOUBLE n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion___INIT____org_xmlvm_iphone_CLLocationCoordinate2D_double_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLRegion_getCenter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getCenter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CLRegion_getIdentifier__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getIdentifier__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CLRegion_getRadius__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_getRadius__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CLRegion_containsCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

