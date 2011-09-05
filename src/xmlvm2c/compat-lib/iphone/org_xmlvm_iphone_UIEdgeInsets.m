#include "xmlvm.h"

#include "org_xmlvm_iphone_UIEdgeInsets.h"

#define XMLVM_CURRENT_CLASS_NAME UIEdgeInsets
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIEdgeInsets

__TIB_DEFINITION_org_xmlvm_iphone_UIEdgeInsets __TIB_org_xmlvm_iphone_UIEdgeInsets = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIEdgeInsets, // classInitializer
    "org.xmlvm.iphone.UIEdgeInsets", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIEdgeInsets), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEdgeInsets;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEdgeInsets_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEdgeInsets_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEdgeInsets_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"top",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIEdgeInsets, fields.org_xmlvm_iphone_UIEdgeInsets.top_),
    0,
    "",
    JAVA_NULL},
    {"left",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIEdgeInsets, fields.org_xmlvm_iphone_UIEdgeInsets.left_),
    0,
    "",
    JAVA_NULL},
    {"bottom",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIEdgeInsets, fields.org_xmlvm_iphone_UIEdgeInsets.bottom_),
    0,
    "",
    JAVA_NULL},
    {"right",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIEdgeInsets, fields.org_xmlvm_iphone_UIEdgeInsets.right_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIEdgeInsets();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIEdgeInsets___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UIEdgeInsets___INIT____float_float_float_float(obj, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
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

void __INIT_org_xmlvm_iphone_UIEdgeInsets()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIEdgeInsets);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIEdgeInsets.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIEdgeInsets.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIEdgeInsets);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIEdgeInsets.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIEdgeInsets.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIEdgeInsets.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIEdgeInsets();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIEdgeInsets()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIEdgeInsets.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIEdgeInsets;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIEdgeInsets.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIEdgeInsets.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIEdgeInsets.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIEdgeInsets.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIEdgeInsets.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIEdgeInsets.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIEdgeInsets.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIEdgeInsets.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIEdgeInsets.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIEdgeInsets.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIEdgeInsets.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIEdgeInsets = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIEdgeInsets);
    __TIB_org_xmlvm_iphone_UIEdgeInsets.clazz = __CLASS_org_xmlvm_iphone_UIEdgeInsets;
    __TIB_org_xmlvm_iphone_UIEdgeInsets.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIEdgeInsets_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIEdgeInsets);
    __CLASS_org_xmlvm_iphone_UIEdgeInsets_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIEdgeInsets_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIEdgeInsets_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIEdgeInsets_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIEdgeInsets]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIEdgeInsets.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIEdgeInsets(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIEdgeInsets]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIEdgeInsets(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_UIEdgeInsets*) me)->fields.org_xmlvm_iphone_UIEdgeInsets.top_ = 0;
    ((org_xmlvm_iphone_UIEdgeInsets*) me)->fields.org_xmlvm_iphone_UIEdgeInsets.left_ = 0;
    ((org_xmlvm_iphone_UIEdgeInsets*) me)->fields.org_xmlvm_iphone_UIEdgeInsets.bottom_ = 0;
    ((org_xmlvm_iphone_UIEdgeInsets*) me)->fields.org_xmlvm_iphone_UIEdgeInsets.right_ = 0;
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIEdgeInsets()
{
    if (!__TIB_org_xmlvm_iphone_UIEdgeInsets.classInitialized) __INIT_org_xmlvm_iphone_UIEdgeInsets();
    org_xmlvm_iphone_UIEdgeInsets* me = (org_xmlvm_iphone_UIEdgeInsets*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIEdgeInsets));
    me->tib = &__TIB_org_xmlvm_iphone_UIEdgeInsets;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIEdgeInsets(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIEdgeInsets]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIEdgeInsets()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIEdgeInsets();
    org_xmlvm_iphone_UIEdgeInsets___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIEdgeInsets___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIEdgeInsets___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIEdgeInsets___INIT____float_float_float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIEdgeInsets___INIT____float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

