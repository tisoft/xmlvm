#include "xmlvm.h"
#include "org_xmlvm_iphone_gl_EAGLDrawable.h"

#include "org_xmlvm_iphone_gl_EAGLContext.h"

#define XMLVM_CURRENT_CLASS_NAME EAGLContext
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_gl_EAGLContext

__TIB_DEFINITION_org_xmlvm_iphone_gl_EAGLContext __TIB_org_xmlvm_iphone_gl_EAGLContext = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_gl_EAGLContext, // classInitializer
    "org.xmlvm.iphone.gl.EAGLContext", // className
    "org.xmlvm.iphone.gl", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_gl_EAGLContext), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLContext;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLContext_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLContext_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLContext_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <OpenGLES/EAGLDrawable.h>

void org_xmlvm_iphone_gl_EAGLContext_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_gl_EAGLContext_kEAGLRenderingAPIOpenGLES1;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kEAGLRenderingAPIOpenGLES1",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_gl_EAGLContext_kEAGLRenderingAPIOpenGLES1,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_int,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_gl_EAGLContext();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_gl_EAGLContext___INIT____int(obj, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_gl_EAGLContext,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_gl_EAGLDrawable,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setCurrentContext",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"presentRenderBuffer",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"release",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"renderBufferStorage",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_gl_EAGLContext_setCurrentContext___org_xmlvm_iphone_gl_EAGLContext(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_gl_EAGLContext_presentRenderBuffer___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_gl_EAGLContext_release__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_gl_EAGLContext_renderBufferStorage___int_org_xmlvm_iphone_gl_EAGLDrawable(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_gl_EAGLContext()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_gl_EAGLContext);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_gl_EAGLContext.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_gl_EAGLContext.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_gl_EAGLContext);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_gl_EAGLContext.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_gl_EAGLContext.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_gl_EAGLContext.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_gl_EAGLContext();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_gl_EAGLContext()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_gl_EAGLContext.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_gl_EAGLContext;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_gl_EAGLContext.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_gl_EAGLContext.vtable[6] = (VTABLE_PTR) &org_xmlvm_iphone_gl_EAGLContext_release__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_gl_EAGLContext.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_gl_EAGLContext.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_gl_EAGLContext_kEAGLRenderingAPIOpenGLES1 = 1;

    __TIB_org_xmlvm_iphone_gl_EAGLContext.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_EAGLContext.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_gl_EAGLContext.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_gl_EAGLContext.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_EAGLContext.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_gl_EAGLContext.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_gl_EAGLContext.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_EAGLContext.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_gl_EAGLContext = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_gl_EAGLContext);
    __TIB_org_xmlvm_iphone_gl_EAGLContext.clazz = __CLASS_org_xmlvm_iphone_gl_EAGLContext;
    __TIB_org_xmlvm_iphone_gl_EAGLContext.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_gl_EAGLContext_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_EAGLContext);
    __CLASS_org_xmlvm_iphone_gl_EAGLContext_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_EAGLContext_1ARRAY);
    __CLASS_org_xmlvm_iphone_gl_EAGLContext_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_EAGLContext_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_gl_EAGLContext]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_gl_EAGLContext.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_gl_EAGLContext(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_gl_EAGLContext]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_EAGLContext(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_EAGLContext]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_gl_EAGLContext()
{
    if (!__TIB_org_xmlvm_iphone_gl_EAGLContext.classInitialized) __INIT_org_xmlvm_iphone_gl_EAGLContext();
    org_xmlvm_iphone_gl_EAGLContext* me = (org_xmlvm_iphone_gl_EAGLContext*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_gl_EAGLContext));
    me->tib = &__TIB_org_xmlvm_iphone_gl_EAGLContext;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_EAGLContext(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_gl_EAGLContext]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_gl_EAGLContext()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_gl_EAGLContext_GET_kEAGLRenderingAPIOpenGLES1()
{
    if (!__TIB_org_xmlvm_iphone_gl_EAGLContext.classInitialized) __INIT_org_xmlvm_iphone_gl_EAGLContext();
    return _STATIC_org_xmlvm_iphone_gl_EAGLContext_kEAGLRenderingAPIOpenGLES1;
}

void org_xmlvm_iphone_gl_EAGLContext_PUT_kEAGLRenderingAPIOpenGLES1(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_gl_EAGLContext.classInitialized) __INIT_org_xmlvm_iphone_gl_EAGLContext();
    _STATIC_org_xmlvm_iphone_gl_EAGLContext_kEAGLRenderingAPIOpenGLES1 = v;
}

void org_xmlvm_iphone_gl_EAGLContext_setCurrentContext___org_xmlvm_iphone_gl_EAGLContext(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_gl_EAGLContext.classInitialized) __INIT_org_xmlvm_iphone_gl_EAGLContext();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_EAGLContext_setCurrentContext___org_xmlvm_iphone_gl_EAGLContext]
    org_xmlvm_iphone_gl_EAGLContext* jcontext = n1;
    EAGLContext* context = jcontext->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    [EAGLContext setCurrentContext:context];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_EAGLContext___INIT____int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_EAGLContext___INIT____int]
    EAGLContext* obj = [[EAGLContext alloc] initWithAPI:n1];
    org_xmlvm_iphone_gl_EAGLContext_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_EAGLContext_presentRenderBuffer___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_EAGLContext_presentRenderBuffer___int]
    XMLVM_VAR_THIZ;
    [thiz presentRenderbuffer:n1];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_EAGLContext_release__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_EAGLContext_release__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_gl_EAGLContext_renderBufferStorage___int_org_xmlvm_iphone_gl_EAGLDrawable(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_EAGLContext_renderBufferStorage___int_org_xmlvm_iphone_gl_EAGLDrawable]
    org_xmlvm_iphone_gl_EAGLContext* jthiz = me;
    EAGLContext* thiz = jthiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    XMLVM_VAR_INT(buffer, n1);
    XMLVM_VAR_IOS(NSObject, drawable, n2);
    
	[thiz renderbufferStorage:buffer fromDrawable:drawable];
    //XMLVM_END_WRAPPER
}

