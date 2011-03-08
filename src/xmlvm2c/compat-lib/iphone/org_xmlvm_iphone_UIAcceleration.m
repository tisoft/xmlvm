#include "xmlvm.h"

#include "org_xmlvm_iphone_UIAcceleration.h"

#define XMLVM_CURRENT_CLASS_NAME UIAcceleration
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIAcceleration

__TIB_DEFINITION_org_xmlvm_iphone_UIAcceleration __TIB_org_xmlvm_iphone_UIAcceleration = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIAcceleration, // classInitializer
    "org.xmlvm.iphone.UIAcceleration", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIAcceleration), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAcceleration;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAcceleration_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_double,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIAcceleration();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIAcceleration___INIT____double_double_double(obj, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[1])->fields.java_lang_Double.value_, ((java_lang_Double*) argsArray[2])->fields.java_lang_Double.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"x",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"y",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"z",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UIAcceleration_x__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_UIAcceleration_y__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UIAcceleration_z__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIAcceleration()
{
    __TIB_org_xmlvm_iphone_UIAcceleration.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIAcceleration.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAcceleration;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIAcceleration.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIAcceleration.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIAcceleration_x__;
    __TIB_org_xmlvm_iphone_UIAcceleration.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIAcceleration_y__;
    __TIB_org_xmlvm_iphone_UIAcceleration.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIAcceleration_z__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIAcceleration.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIAcceleration.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIAcceleration.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAcceleration.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAcceleration.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIAcceleration.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAcceleration.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIAcceleration.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIAcceleration.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIAcceleration.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIAcceleration = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIAcceleration);
    __TIB_org_xmlvm_iphone_UIAcceleration.clazz = __CLASS_org_xmlvm_iphone_UIAcceleration;
    __CLASS_org_xmlvm_iphone_UIAcceleration_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIAcceleration, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAcceleration]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIAcceleration(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAcceleration]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAcceleration(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAcceleration()
{
    if (!__TIB_org_xmlvm_iphone_UIAcceleration.classInitialized) __INIT_org_xmlvm_iphone_UIAcceleration();
    org_xmlvm_iphone_UIAcceleration* me = (org_xmlvm_iphone_UIAcceleration*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAcceleration));
    me->tib = &__TIB_org_xmlvm_iphone_UIAcceleration;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIAcceleration(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAcceleration]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAcceleration()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIAcceleration___INIT____double_double_double(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_DOUBLE n2, JAVA_DOUBLE n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAcceleration___INIT____double_double_double]
    org_xmlvm_iphone_UIAcceleration* thiz = me;
    thiz->fields.org_xmlvm_iphone_UIAcceleration.x = n1;
    thiz->fields.org_xmlvm_iphone_UIAcceleration.y = n2;
    thiz->fields.org_xmlvm_iphone_UIAcceleration.z = n3;
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_x__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAcceleration_x__]
    org_xmlvm_iphone_UIAcceleration* thiz = me;
    return thiz->fields.org_xmlvm_iphone_UIAcceleration.x;
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_y__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAcceleration_y__]
    org_xmlvm_iphone_UIAcceleration* thiz = me;
    return thiz->fields.org_xmlvm_iphone_UIAcceleration.y;
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UIAcceleration_z__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAcceleration_z__]
    org_xmlvm_iphone_UIAcceleration* thiz = me;
    return thiz->fields.org_xmlvm_iphone_UIAcceleration.z;
    //XMLVM_END_WRAPPER
}

