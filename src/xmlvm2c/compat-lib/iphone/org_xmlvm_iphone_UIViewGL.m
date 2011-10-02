#include "xmlvm.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_gl_CAEAGLLayer.h"

#include "org_xmlvm_iphone_UIViewGL.h"

#define XMLVM_CURRENT_CLASS_NAME UIViewGL
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIViewGL

__TIB_DEFINITION_org_xmlvm_iphone_UIViewGL __TIB_org_xmlvm_iphone_UIViewGL = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIViewGL, // classInitializer
    "org.xmlvm.iphone.UIViewGL", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UIViewGL), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewGL;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewGL_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewGL_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIViewGL_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_gl_CAEAGLLayer.h"

@interface UIViewGLWrapper : UIViewWrapper 

+ (Class) layerClass;

@end

@implementation UIViewGLWrapper : UIViewWrapper

+ (Class) layerClass
{
	return objc_getClass("CAEAGLLayer");
}

@end



void org_xmlvm_iphone_UIViewGL_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}


//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIViewGL();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIViewGL___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UIViewGL___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getEAGLLayer",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIViewGL_getEAGLLayer__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIViewGL()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIViewGL);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIViewGL.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIViewGL.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIViewGL);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIViewGL.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIViewGL.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIViewGL.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIViewGL();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIViewGL()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIViewGL.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIViewGL;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIViewGL.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIViewGL.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIViewGL.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_UIViewGL.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewGL.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewGL.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewGL.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewGL.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIViewGL.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIViewGL.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIViewGL.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIViewGL = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIViewGL);
    __TIB_org_xmlvm_iphone_UIViewGL.clazz = __CLASS_org_xmlvm_iphone_UIViewGL;
    __TIB_org_xmlvm_iphone_UIViewGL.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIViewGL_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewGL);
    __CLASS_org_xmlvm_iphone_UIViewGL_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewGL_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIViewGL_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIViewGL_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIViewGL]
    //xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIViewGL.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIViewGL(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIViewGL]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewGL(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewGL]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIViewGL()
{
    if (!__TIB_org_xmlvm_iphone_UIViewGL.classInitialized) __INIT_org_xmlvm_iphone_UIViewGL();
    org_xmlvm_iphone_UIViewGL* me = (org_xmlvm_iphone_UIViewGL*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIViewGL));
    me->tib = &__TIB_org_xmlvm_iphone_UIViewGL;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIViewGL(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIViewGL]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIViewGL()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIViewGL();
    org_xmlvm_iphone_UIViewGL___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIViewGL___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewGL___INIT___]
	UIViewGLWrapper* obj = [[UIViewGLWrapper alloc] init];
    org_xmlvm_iphone_UIViewGL_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIViewGL___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewGL___INIT____org_xmlvm_iphone_CGRect]
	UIViewGLWrapper* obj = [[UIViewGLWrapper alloc] initWithFrame: toCGRect(n1)];
    org_xmlvm_iphone_UIViewGL_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIViewGL_getEAGLLayer__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIViewGL_getEAGLLayer__]
    org_xmlvm_iphone_UIViewGL* jthiz = me;
    UIViewGLWrapper* thiz = jthiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    if (!__TIB_org_xmlvm_iphone_gl_CAEAGLLayer.classInitialized) __INIT_org_xmlvm_iphone_gl_CAEAGLLayer();
    return xmlvm_get_associated_c_object([thiz layer]);
    //XMLVM_END_WRAPPER
}

