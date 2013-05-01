#include "xmlvm.h"
#include "java_lang_String.h"

#include "sdljava_SDLException.h"

#define XMLVM_CURRENT_CLASS_NAME SDLException
#define XMLVM_CURRENT_PKG_CLASS_NAME sdljava_SDLException

__TIB_DEFINITION_sdljava_SDLException __TIB_sdljava_SDLException = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_sdljava_SDLException, // classInitializer
    "sdljava.SDLException", // className
    "sdljava", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Exception, // extends
    sizeof(sdljava_SDLException), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_sdljava_SDLException;
JAVA_OBJECT __CLASS_sdljava_SDLException_1ARRAY;
JAVA_OBJECT __CLASS_sdljava_SDLException_2ARRAY;
JAVA_OBJECT __CLASS_sdljava_SDLException_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_java_lang_String,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_sdljava_SDLException();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        sdljava_SDLException___INIT___(obj);
        break;
    case 1:
        sdljava_SDLException___INIT____java_lang_String(obj, argsArray[0]);
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
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_sdljava_SDLException()
{
    staticInitializerLock(&__TIB_sdljava_SDLException);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_sdljava_SDLException.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_sdljava_SDLException.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_sdljava_SDLException);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_sdljava_SDLException.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_sdljava_SDLException.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_sdljava_SDLException.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("sdljava.SDLException")
        __INIT_IMPL_sdljava_SDLException();
    }
}

void __INIT_IMPL_sdljava_SDLException()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Exception.classInitialized) __INIT_java_lang_Exception();
    __TIB_sdljava_SDLException.newInstanceFunc = __NEW_INSTANCE_sdljava_SDLException;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_sdljava_SDLException.vtable, __TIB_java_lang_Exception.vtable, sizeof(__TIB_java_lang_Exception.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_sdljava_SDLException.numImplementedInterfaces = 1;
    __TIB_sdljava_SDLException.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 1);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    if (!__TIB_java_io_Serializable.classInitialized) __INIT_java_io_Serializable();
    __TIB_sdljava_SDLException.implementedInterfaces[0][0] = &__TIB_java_io_Serializable;
    // Initialize itable for this class
    __TIB_sdljava_SDLException.itableBegin = &__TIB_sdljava_SDLException.itable[0];


    __TIB_sdljava_SDLException.declaredFields = &__field_reflection_data[0];
    __TIB_sdljava_SDLException.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_sdljava_SDLException.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_sdljava_SDLException.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_sdljava_SDLException.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_sdljava_SDLException.methodDispatcherFunc = method_dispatcher;
    __TIB_sdljava_SDLException.declaredMethods = &__method_reflection_data[0];
    __TIB_sdljava_SDLException.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_sdljava_SDLException = XMLVM_CREATE_CLASS_OBJECT(&__TIB_sdljava_SDLException);
    __TIB_sdljava_SDLException.clazz = __CLASS_sdljava_SDLException;
    __TIB_sdljava_SDLException.baseType = JAVA_NULL;
    __CLASS_sdljava_SDLException_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLException);
    __CLASS_sdljava_SDLException_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLException_1ARRAY);
    __CLASS_sdljava_SDLException_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_sdljava_SDLException_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_sdljava_SDLException]
    //XMLVM_END_WRAPPER

    __TIB_sdljava_SDLException.classInitialized = 1;
}

void __DELETE_sdljava_SDLException(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_sdljava_SDLException]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_sdljava_SDLException(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Exception(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_sdljava_SDLException]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_sdljava_SDLException()
{
    if (!__TIB_sdljava_SDLException.classInitialized) __INIT_sdljava_SDLException();
    sdljava_SDLException* me = (sdljava_SDLException*) XMLVM_MALLOC(sizeof(sdljava_SDLException));
    me->tib = &__TIB_sdljava_SDLException;
    __INIT_INSTANCE_MEMBERS_sdljava_SDLException(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_sdljava_SDLException]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_sdljava_SDLException()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_sdljava_SDLException();
    sdljava_SDLException___INIT___(me);
    return me;
}

void sdljava_SDLException___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_SDLException___INIT___]
    XMLVM_ENTER_METHOD("sdljava.SDLException", "<init>", "?")
    XMLVMElem _r0;
    _r0.o = me;
    XMLVM_SOURCE_POSITION("SDLException.java", 26)
    XMLVM_CHECK_NPE(0)
    java_lang_Exception___INIT___(_r0.o);
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

void sdljava_SDLException___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[sdljava_SDLException___INIT____java_lang_String]
    XMLVM_ENTER_METHOD("sdljava.SDLException", "<init>", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.o = n1;
    XMLVM_SOURCE_POSITION("SDLException.java", 32)
    XMLVM_CHECK_NPE(0)
    java_lang_Exception___INIT____java_lang_String(_r0.o, _r1.o);
    XMLVM_SOURCE_POSITION("SDLException.java", 33)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

