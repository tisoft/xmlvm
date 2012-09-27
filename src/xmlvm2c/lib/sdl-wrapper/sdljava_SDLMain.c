#include "xmlvm.h"

#include "sdljava_SDLMain.h"

#define XMLVM_CURRENT_CLASS_NAME SDLMain
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_SDLMain

__TIB_DEFINITION_sdljava_SDLMain __TIB_sdljava_SDLMain = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_SDLMain, // classInitializer
    "sdljava.SDLMain", // className
    "sdljava", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(sdljava_SDLMain), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_SDLMain;
JAVA_OBJECT __CLASS_sdljava_SDLMain_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_SDLMain_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_SDLMain_3ARRAY;
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_sdljava_SDLMain();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_SDLMain___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_long,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"init",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(J)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        sdljava_SDLMain_init___long(((java_lang_Long*) argsArray[0])->fields.java_lang_Long.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_SDLMain()
{
    staticInitializerLock(&__TIB_sdljava_SDLMain);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_SDLMain.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_SDLMain.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_SDLMain);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_SDLMain.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_SDLMain.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_SDLMain.initializerThreadId = curThreadId;
        __INIT_IMPL_sdljava_SDLMain();
    }
}

void __INIT_IMPL_sdljava_SDLMain()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_sdljava_SDLMain.newInstanceFunc = __NEW_INSTANCE_sdljava_SDLMain;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_SDLMain.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_SDLMain.numImplementedInterfaces = 0;
    __TIB_sdljava_SDLMain.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_sdljava_SDLMain.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_SDLMain.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_SDLMain.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_SDLMain.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_SDLMain.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_SDLMain.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_SDLMain.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_SDLMain.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_SDLMain = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_SDLMain);
    __TIB_sdljava_SDLMain.clazz = __CLASS_sdljava_SDLMain;
    __TIB_sdljava_SDLMain.baseType = JAVA_NULL;
    __CLASS_sdljava_SDLMain_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLMain);
    __CLASS_sdljava_SDLMain_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLMain_1ARRAY);
    __CLASS_sdljava_SDLMain_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLMain_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_SDLMain]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_SDLMain.classInitialized = 1;
}

void __DELETE_sdljava_SDLMain(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_SDLMain]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_SDLMain(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_SDLMain]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_SDLMain()
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    sdljava_SDLMain* me = (sdljava_SDLMain*) XMLVM_MALLOC(sizeof(sdljava_SDLMain));
    me->tib = &__TIB_sdljava_SDLMain;
    __INIT_INSTANCE_MEMBERS_sdljava_SDLMain(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_SDLMain]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_SDLMain()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_SDLMain();
    sdljava_SDLMain___INIT___(me);
    return me;
}

void sdljava_SDLMain___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_SDLMain___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void sdljava_SDLMain_init___long(JAVA_LONG n1)
{
    if (!__TIB_sdljava_SDLMain.classInitialized) __INIT_sdljava_SDLMain();
    //XMLVM_BEGIN_WRAPPER[sdljava_SDLMain_init___long]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

