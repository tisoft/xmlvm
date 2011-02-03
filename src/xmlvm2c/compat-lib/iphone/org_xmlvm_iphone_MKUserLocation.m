#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_MKUserLocation.h"

__TIB_DEFINITION_org_xmlvm_iphone_MKUserLocation __TIB_org_xmlvm_iphone_MKUserLocation = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKUserLocation, // classInitializer
    "org.xmlvm.iphone.MKUserLocation", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKUserLocation_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKUserLocation();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKUserLocation___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_MKUserLocation()
{
    __TIB_org_xmlvm_iphone_MKUserLocation.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKUserLocation.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKUserLocation.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_MKUserLocation.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getLocation__;
    __TIB_org_xmlvm_iphone_MKUserLocation.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_isUpdating__;
    __TIB_org_xmlvm_iphone_MKUserLocation.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getSubtitle__;
    __TIB_org_xmlvm_iphone_MKUserLocation.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String;
    __TIB_org_xmlvm_iphone_MKUserLocation.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_getTitle__;
    __TIB_org_xmlvm_iphone_MKUserLocation.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKUserLocation.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKUserLocation.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MKUserLocation.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKUserLocation.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKUserLocation.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKUserLocation.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKUserLocation.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKUserLocation = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKUserLocation);
    __TIB_org_xmlvm_iphone_MKUserLocation.clazz = __CLASS_org_xmlvm_iphone_MKUserLocation;
    __CLASS_org_xmlvm_iphone_MKUserLocation_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKUserLocation, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKUserLocation]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKUserLocation(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKUserLocation]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKUserLocation()
{
    if (!__TIB_org_xmlvm_iphone_MKUserLocation.classInitialized) __INIT_org_xmlvm_iphone_MKUserLocation();
    org_xmlvm_iphone_MKUserLocation* me = (org_xmlvm_iphone_MKUserLocation*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKUserLocation));
    me->tib = &__TIB_org_xmlvm_iphone_MKUserLocation;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKUserLocation]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKUserLocation()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MKUserLocation();
    org_xmlvm_iphone_MKUserLocation___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MKUserLocation___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getLocation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getLocation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKUserLocation_isUpdating__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_isUpdating__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getSubtitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getSubtitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_setSubtitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKUserLocation_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKUserLocation_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

