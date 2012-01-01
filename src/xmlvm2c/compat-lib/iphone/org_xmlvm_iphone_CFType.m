#include "xmlvm.h"

#include "org_xmlvm_iphone_CFType.h"

#define XMLVM_CURRENT_CLASS_NAME CFType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CFType

__TIB_DEFINITION_org_xmlvm_iphone_CFType __TIB_org_xmlvm_iphone_CFType = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CFType, // classInitializer
    "org.xmlvm.iphone.CFType", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_CFType), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFType_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFType_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CFType_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, CFTypeRef wrappedCFTypeRef)
{
    java_lang_Object___INIT___(me);
    org_xmlvm_iphone_CFType* jthiz = me;
    jthiz->fields.org_xmlvm_iphone_CFType.wrappedCFTypeRef = wrappedCFTypeRef;
}


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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CFType();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CFType___INIT___(obj);
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

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"retain",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CFType;",
    JAVA_NULL,
    JAVA_NULL},
    {"release",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
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
        org_xmlvm_iphone_CFType_retain__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_CFType_release__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CFType()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CFType);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CFType.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CFType.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CFType);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CFType.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CFType.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CFType.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CFType();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CFType()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_CFType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CFType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CFType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CFType.vtable[2] = (VTABLE_PTR) &org_xmlvm_iphone_CFType_finalize_org_xmlvm_iphone_CFType__;
    __TIB_org_xmlvm_iphone_CFType.vtable[7] = (VTABLE_PTR) &org_xmlvm_iphone_CFType_retain__;
    __TIB_org_xmlvm_iphone_CFType.vtable[6] = (VTABLE_PTR) &org_xmlvm_iphone_CFType_release__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CFType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CFType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CFType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CFType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CFType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CFType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CFType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CFType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CFType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CFType);
    __TIB_org_xmlvm_iphone_CFType.clazz = __CLASS_org_xmlvm_iphone_CFType;
    __TIB_org_xmlvm_iphone_CFType.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CFType_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFType);
    __CLASS_org_xmlvm_iphone_CFType_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFType_1ARRAY);
    __CLASS_org_xmlvm_iphone_CFType_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CFType_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CFType]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CFType.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CFType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CFType]
    //XMLVM_END_WRAPPER
    // Call the finalizer
    (*(void (*)(JAVA_OBJECT)) ((java_lang_Object*) me)->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__])(me);
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 1 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFType]
    //XMLVM_END_WRAPPER
    if (!derivedClassWillRegisterFinalizer) {
        // Tell the GC to finalize us
        XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_CFType);
    }
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CFType()
{
    if (!__TIB_org_xmlvm_iphone_CFType.classInitialized) __INIT_org_xmlvm_iphone_CFType();
    org_xmlvm_iphone_CFType* me = (org_xmlvm_iphone_CFType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CFType));
    me->tib = &__TIB_org_xmlvm_iphone_CFType;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFType(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CFType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CFType()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CFType();
    org_xmlvm_iphone_CFType___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CFType___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFType___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CFType_finalize_org_xmlvm_iphone_CFType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFType_finalize_org_xmlvm_iphone_CFType__]
//    XMLVM_VAR_CFTHIZ;
//    CFRelease(thiz);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CFType_retain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFType_retain__]
    //do nothing
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CFType_release__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CFType_release__]
    //do nothing
    //XMLVM_END_WRAPPER
}

