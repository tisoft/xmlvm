#include "xmlvm.h"

#include "org_xmlvm_iphone_MKCoordinateSpan.h"

#define XMLVM_CURRENT_CLASS_NAME MKCoordinateSpan
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKCoordinateSpan

__TIB_DEFINITION_org_xmlvm_iphone_MKCoordinateSpan __TIB_org_xmlvm_iphone_MKCoordinateSpan = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKCoordinateSpan, // classInitializer
    "org.xmlvm.iphone.MKCoordinateSpan", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKCoordinateSpan), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateSpan;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKCoordinateSpan_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"latitudeDelta",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKCoordinateSpan, fields.org_xmlvm_iphone_MKCoordinateSpan.latitudeDelta_),
    0,
    "",
    JAVA_NULL},
    {"longitudeDelta",
    &__CLASS_double,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_MKCoordinateSpan, fields.org_xmlvm_iphone_MKCoordinateSpan.longitudeDelta_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_double,
    &__CLASS_double,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKCoordinateSpan();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKCoordinateSpan___INIT____double_double(obj, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKCoordinateSpan()
{
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKCoordinateSpan;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKCoordinateSpan.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MKCoordinateSpan.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKCoordinateSpan = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKCoordinateSpan);
    __TIB_org_xmlvm_iphone_MKCoordinateSpan.clazz = __CLASS_org_xmlvm_iphone_MKCoordinateSpan;
    __CLASS_org_xmlvm_iphone_MKCoordinateSpan_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKCoordinateSpan, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKCoordinateSpan]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKCoordinateSpan(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKCoordinateSpan]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKCoordinateSpan()
{
    if (!__TIB_org_xmlvm_iphone_MKCoordinateSpan.classInitialized) __INIT_org_xmlvm_iphone_MKCoordinateSpan();
    org_xmlvm_iphone_MKCoordinateSpan* me = (org_xmlvm_iphone_MKCoordinateSpan*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKCoordinateSpan));
    me->tib = &__TIB_org_xmlvm_iphone_MKCoordinateSpan;
    me->fields.org_xmlvm_iphone_MKCoordinateSpan.latitudeDelta_ = 0;
    me->fields.org_xmlvm_iphone_MKCoordinateSpan.longitudeDelta_ = 0;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKCoordinateSpan]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKCoordinateSpan()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKCoordinateSpan___INIT____double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKCoordinateSpan___INIT____double_double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

