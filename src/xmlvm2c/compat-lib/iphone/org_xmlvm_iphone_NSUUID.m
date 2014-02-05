#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSUUID.h"

#define XMLVM_CURRENT_CLASS_NAME NSUUID
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSUUID

__TIB_DEFINITION_org_xmlvm_iphone_NSUUID __TIB_org_xmlvm_iphone_NSUUID = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSUUID, // classInitializer
    "org.xmlvm.iphone.NSUUID", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSUUID), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUUID;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUUID_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUUID_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSUUID_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"bytes",
    &__CLASS_byte_1ARRAY,
    0 | java_lang_reflect_Modifier_PRIVATE,
    XMLVM_OFFSETOF(org_xmlvm_iphone_NSUUID, fields.org_xmlvm_iphone_NSUUID.bytes_),
    0,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_byte_1ARRAY,
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
    "([B)V",
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSUUID();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSUUID___INIT____byte_1ARRAY(obj, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_NSUUID___INIT____java_lang_String(obj, argsArray[0]);
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
    &__CLASS_byte_1ARRAY,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"UUIDString",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"getUUIDBytes",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([B)V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSUUID_UUIDString__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_NSUUID_getUUIDBytes___byte_1ARRAY(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSUUID()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSUUID);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSUUID.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSUUID.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSUUID);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSUUID.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSUUID.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSUUID.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.NSUUID")
        __INIT_IMPL_org_xmlvm_iphone_NSUUID();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSUUID()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_NSUUID.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSUUID;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSUUID.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSUUID.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSUUID.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSUUID.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSUUID.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSUUID.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSUUID.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSUUID.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSUUID.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSUUID.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSUUID.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSUUID = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSUUID);
    __TIB_org_xmlvm_iphone_NSUUID.clazz = __CLASS_org_xmlvm_iphone_NSUUID;
    __TIB_org_xmlvm_iphone_NSUUID.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSUUID_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSUUID);
    __CLASS_org_xmlvm_iphone_NSUUID_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSUUID_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSUUID_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSUUID_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSUUID]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSUUID.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSUUID(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSUUID]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSUUID(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    ((org_xmlvm_iphone_NSUUID*) me)->fields.org_xmlvm_iphone_NSUUID.bytes_ = (org_xmlvm_runtime_XMLVMArray*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSUUID]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSUUID()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSUUID)
org_xmlvm_iphone_NSUUID* me = (org_xmlvm_iphone_NSUUID*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSUUID));
    me->tib = &__TIB_org_xmlvm_iphone_NSUUID;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSUUID(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSUUID]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSUUID()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSUUID___INIT____byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUUID___INIT____byte_1ARRAY]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSUUID", "<init>", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.o = n1;
    XMLVM_SOURCE_POSITION("NSUUID.java", 27)
    XMLVM_CHECK_NPE(0)
    org_xmlvm_iphone_NSObject___INIT___(_r0.o);
    XMLVM_SOURCE_POSITION("NSUUID.java", 28)
    XMLVM_CHECK_NPE(0)
    ((org_xmlvm_iphone_NSUUID*) _r0.o)->fields.org_xmlvm_iphone_NSUUID.bytes_ = _r1.o;
    XMLVM_SOURCE_POSITION("NSUUID.java", 29)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUUID___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUUID___INIT____java_lang_String]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSUUID", "<init>", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    _r1.o = me;
    _r2.o = n1;
    XMLVM_SOURCE_POSITION("NSUUID.java", 31)
    XMLVM_CHECK_NPE(1)
    org_xmlvm_iphone_NSObject___INIT___(_r1.o);
    XMLVM_SOURCE_POSITION("NSUUID.java", 32)
    _r0.o = JAVA_NULL;
    XMLVM_CHECK_NPE(1)
    ((org_xmlvm_iphone_NSUUID*) _r1.o)->fields.org_xmlvm_iphone_NSUUID.bytes_ = _r0.o;
    XMLVM_SOURCE_POSITION("NSUUID.java", 33)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSUUID_UUIDString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUUID_UUIDString__]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSUUID", "UUIDString", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r1.o = me;
    XMLVM_SOURCE_POSITION("NSUUID.java", 36)
    // ""
    _r0.o = xmlvm_create_java_string_from_pool(23);
    XMLVM_EXIT_METHOD()
    return _r0.o;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSUUID_getUUIDBytes___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSUUID_getUUIDBytes___byte_1ARRAY]
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSUUID", "getUUIDBytes", "?")
    XMLVMElem _r0;
    XMLVMElem _r1;
    _r0.o = me;
    _r1.o = n1;
    XMLVM_SOURCE_POSITION("NSUUID.java", 40)
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

