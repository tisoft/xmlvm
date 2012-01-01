#include "xmlvm.h"

#include "org_xmlvm_iphone_CGAffineTransform.h"

#define XMLVM_CURRENT_CLASS_NAME CGAffineTransform
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGAffineTransform

__TIB_DEFINITION_org_xmlvm_iphone_CGAffineTransform __TIB_org_xmlvm_iphone_CGAffineTransform = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGAffineTransform, // classInitializer
    "org.xmlvm.iphone.CGAffineTransform", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CGAffineTransform), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGAffineTransform;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGAffineTransform_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGAffineTransform_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGAffineTransform_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGAffineTransform();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGAffineTransform,
    &__CLASS_float,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGAffineTransform,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGAffineTransform,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGAffineTransform,
    &__CLASS_org_xmlvm_iphone_CGAffineTransform,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"make",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(FFFFFF)Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"makeRotation",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"makeScale",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(FF)Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"makeTranslation",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(FF)Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"rotate",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGAffineTransform;F)Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"scale",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGAffineTransform;FF)Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"translate",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGAffineTransform;FF)Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"concat",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGAffineTransform;Lorg/xmlvm/iphone/CGAffineTransform;)Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"identity",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGAffineTransform;",
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
        org_xmlvm_iphone_CGAffineTransform_make___float_float_float_float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[4])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[5])->fields.java_lang_Float.value_);
        break;
    case 1:
        org_xmlvm_iphone_CGAffineTransform_makeRotation___float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 2:
        org_xmlvm_iphone_CGAffineTransform_makeScale___float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 3:
        org_xmlvm_iphone_CGAffineTransform_makeTranslation___float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 4:
        org_xmlvm_iphone_CGAffineTransform_rotate___org_xmlvm_iphone_CGAffineTransform_float(argsArray[0], ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 5:
        org_xmlvm_iphone_CGAffineTransform_scale___org_xmlvm_iphone_CGAffineTransform_float_float(argsArray[0], ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_);
        break;
    case 6:
        org_xmlvm_iphone_CGAffineTransform_translate___org_xmlvm_iphone_CGAffineTransform_float_float(argsArray[0], ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_);
        break;
    case 7:
        org_xmlvm_iphone_CGAffineTransform_concat___org_xmlvm_iphone_CGAffineTransform_org_xmlvm_iphone_CGAffineTransform(argsArray[0], argsArray[1]);
        break;
    case 8:
        org_xmlvm_iphone_CGAffineTransform_identity__();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGAffineTransform()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGAffineTransform);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGAffineTransform.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGAffineTransform.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGAffineTransform);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGAffineTransform.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGAffineTransform.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CGAffineTransform();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGAffineTransform()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CGAffineTransform.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGAffineTransform;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGAffineTransform.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGAffineTransform.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGAffineTransform.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CGAffineTransform.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGAffineTransform.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGAffineTransform.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGAffineTransform.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGAffineTransform.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGAffineTransform.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGAffineTransform.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGAffineTransform.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGAffineTransform = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGAffineTransform);
    __TIB_org_xmlvm_iphone_CGAffineTransform.clazz = __CLASS_org_xmlvm_iphone_CGAffineTransform;
    __TIB_org_xmlvm_iphone_CGAffineTransform.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGAffineTransform_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGAffineTransform);
    __CLASS_org_xmlvm_iphone_CGAffineTransform_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGAffineTransform_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGAffineTransform_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGAffineTransform_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGAffineTransform]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGAffineTransform(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGAffineTransform]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGAffineTransform]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGAffineTransform()
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    org_xmlvm_iphone_CGAffineTransform* me = (org_xmlvm_iphone_CGAffineTransform*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGAffineTransform));
    me->tib = &__TIB_org_xmlvm_iphone_CGAffineTransform;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGAffineTransform(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGAffineTransform]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGAffineTransform()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_make___float_float_float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4, JAVA_FLOAT n5, JAVA_FLOAT n6)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_make___float_float_float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeRotation___float(JAVA_FLOAT n1)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_makeRotation___float]
    org_xmlvm_iphone_CGAffineTransform* jtransform = __NEW_org_xmlvm_iphone_CGAffineTransform();
    // TODO should have its own constructor
    org_xmlvm_iphone_NSObject___INIT___(jtransform);
    jtransform->fields.org_xmlvm_iphone_CGAffineTransform.transform = CGAffineTransformMakeRotation(n1);
    return jtransform;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeScale___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_makeScale___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_makeTranslation___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_makeTranslation___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_rotate___org_xmlvm_iphone_CGAffineTransform_float(JAVA_OBJECT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_rotate___org_xmlvm_iphone_CGAffineTransform_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_scale___org_xmlvm_iphone_CGAffineTransform_float_float(JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_scale___org_xmlvm_iphone_CGAffineTransform_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_translate___org_xmlvm_iphone_CGAffineTransform_float_float(JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_FLOAT n3)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_translate___org_xmlvm_iphone_CGAffineTransform_float_float]
    org_xmlvm_iphone_CGAffineTransform* newTransform = __NEW_org_xmlvm_iphone_CGAffineTransform();
    org_xmlvm_iphone_NSObject___INIT___(newTransform);
    org_xmlvm_iphone_CGAffineTransform* otherTransform = n1;
    newTransform->fields.org_xmlvm_iphone_CGAffineTransform.transform = CGAffineTransformTranslate(otherTransform->fields.org_xmlvm_iphone_CGAffineTransform.transform, n2, n3);
    return newTransform;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_concat___org_xmlvm_iphone_CGAffineTransform_org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_concat___org_xmlvm_iphone_CGAffineTransform_org_xmlvm_iphone_CGAffineTransform]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGAffineTransform_identity__()
{
    if (!__TIB_org_xmlvm_iphone_CGAffineTransform.classInitialized) __INIT_org_xmlvm_iphone_CGAffineTransform();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGAffineTransform_identity__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

