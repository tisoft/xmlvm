#include "xmlvm.h"
#include "java_nio_ByteBuffer.h"
#include "java_nio_FloatBuffer.h"
#include "java_nio_IntBuffer.h"

#include "org_xmlvm_iphone_gl_BufferUtils.h"

#define XMLVM_CURRENT_CLASS_NAME BufferUtils
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_gl_BufferUtils

__TIB_DEFINITION_org_xmlvm_iphone_gl_BufferUtils __TIB_org_xmlvm_iphone_gl_BufferUtils = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_gl_BufferUtils, // classInitializer
    "org.xmlvm.iphone.gl.BufferUtils", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_gl_BufferUtils), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_BufferUtils;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_BufferUtils_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_BufferUtils_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_BufferUtils_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "java_nio_ByteBuffer.h"
#include "java_nio_IntBuffer.h"
#include "java_nio_FloatBuffer.h"

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_gl_BufferUtils();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_gl_BufferUtils___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"createByteBuffer",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"createIntBuffer",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"createFloatBuffer",
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
        org_xmlvm_iphone_gl_BufferUtils_createByteBuffer___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_gl_BufferUtils_createIntBuffer___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_gl_BufferUtils_createFloatBuffer___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_gl_BufferUtils()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_gl_BufferUtils);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_gl_BufferUtils.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_gl_BufferUtils.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_gl_BufferUtils);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_gl_BufferUtils.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_gl_BufferUtils.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_gl_BufferUtils.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_gl_BufferUtils();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_gl_BufferUtils()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_gl_BufferUtils.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_gl_BufferUtils;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_gl_BufferUtils.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_gl_BufferUtils.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_gl_BufferUtils.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_gl_BufferUtils.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_BufferUtils.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_gl_BufferUtils.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_gl_BufferUtils.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_BufferUtils.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_gl_BufferUtils.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_gl_BufferUtils.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_BufferUtils.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_gl_BufferUtils = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_gl_BufferUtils);
    __TIB_org_xmlvm_iphone_gl_BufferUtils.clazz = __CLASS_org_xmlvm_iphone_gl_BufferUtils;
    __TIB_org_xmlvm_iphone_gl_BufferUtils.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_gl_BufferUtils_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_BufferUtils);
    __CLASS_org_xmlvm_iphone_gl_BufferUtils_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_BufferUtils_1ARRAY);
    __CLASS_org_xmlvm_iphone_gl_BufferUtils_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_BufferUtils_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_gl_BufferUtils]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_gl_BufferUtils.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_gl_BufferUtils(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_gl_BufferUtils]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_BufferUtils(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_BufferUtils]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_gl_BufferUtils()
{
    if (!__TIB_org_xmlvm_iphone_gl_BufferUtils.classInitialized) __INIT_org_xmlvm_iphone_gl_BufferUtils();
    org_xmlvm_iphone_gl_BufferUtils* me = (org_xmlvm_iphone_gl_BufferUtils*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_gl_BufferUtils));
    me->tib = &__TIB_org_xmlvm_iphone_gl_BufferUtils;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_BufferUtils(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_gl_BufferUtils]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_gl_BufferUtils()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_gl_BufferUtils();
    org_xmlvm_iphone_gl_BufferUtils___INIT___(me);
    return me;
}

void org_xmlvm_iphone_gl_BufferUtils___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_BufferUtils___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_gl_BufferUtils_createByteBuffer___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_BufferUtils.classInitialized) __INIT_org_xmlvm_iphone_gl_BufferUtils();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_BufferUtils_createByteBuffer___int]
    return java_nio_ByteBuffer_allocate___int(n1);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_gl_BufferUtils_createIntBuffer___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_BufferUtils.classInitialized) __INIT_org_xmlvm_iphone_gl_BufferUtils();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_BufferUtils_createIntBuffer___int]
    return java_nio_IntBuffer_allocate___int(n1);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_gl_BufferUtils_createFloatBuffer___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_BufferUtils.classInitialized) __INIT_org_xmlvm_iphone_gl_BufferUtils();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_BufferUtils_createFloatBuffer___int]
    return java_nio_FloatBuffer_allocate___int(n1);
    //XMLVM_END_WRAPPER
}

