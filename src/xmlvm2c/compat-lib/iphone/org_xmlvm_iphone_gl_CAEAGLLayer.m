#include "xmlvm.h"

#include "org_xmlvm_iphone_gl_CAEAGLLayer.h"

#define XMLVM_CURRENT_CLASS_NAME CAEAGLLayer
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_gl_CAEAGLLayer

__TIB_DEFINITION_org_xmlvm_iphone_gl_CAEAGLLayer __TIB_org_xmlvm_iphone_gl_CAEAGLLayer = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_gl_CAEAGLLayer, // classInitializer
    "org.xmlvm.iphone.gl.CAEAGLLayer", // className
    "org.xmlvm.iphone.gl", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CALayer, // extends
    sizeof(org_xmlvm_iphone_gl_CAEAGLLayer), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <QuartzCore/CAEAGLLayer.h>


void org_xmlvm_iphone_gl_CAEAGLLayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_CALayer_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
    CAEAGLLayer* glLayer = wrappedCObj;
    glLayer.opaque = YES;
	glLayer.drawableProperties = [NSDictionary dictionaryWithObjectsAndKeys:
                                  [NSNumber numberWithBool:FALSE], kEAGLDrawablePropertyRetainedBacking, kEAGLColorFormatRGBA8, kEAGLDrawablePropertyColorFormat, nil];

}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    NSString* name = NSStringFromClass([obj class]);
    
    if ([name isEqual:@"CAEAGLLayer"]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_gl_CAEAGLLayer();
        org_xmlvm_iphone_gl_CAEAGLLayer_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
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
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_gl_CAEAGLLayer();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_gl_CAEAGLLayer___INIT___(obj);
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
    {"getDrawable",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/gl/EAGLDrawable;",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_gl_CAEAGLLayer_getDrawable__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_gl_CAEAGLLayer()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_gl_CAEAGLLayer);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_gl_CAEAGLLayer);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_gl_CAEAGLLayer.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_gl_CAEAGLLayer.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.gl.CAEAGLLayer")
        __INIT_IMPL_org_xmlvm_iphone_gl_CAEAGLLayer();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_gl_CAEAGLLayer()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CALayer)
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_gl_CAEAGLLayer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_gl_CAEAGLLayer.vtable, __TIB_org_xmlvm_iphone_CALayer.vtable, sizeof(__TIB_org_xmlvm_iphone_CALayer.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.numImplementedInterfaces = 1;
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 1);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    XMLVM_CLASS_INIT(org_xmlvm_iphone_gl_EAGLDrawable)

    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.implementedInterfaces[0][0] = &__TIB_org_xmlvm_iphone_gl_EAGLDrawable;
    // Initialize itable for this class
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.itableBegin = &__TIB_org_xmlvm_iphone_gl_CAEAGLLayer.itable[0];


    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_gl_CAEAGLLayer);
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.clazz = __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer;
    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_CAEAGLLayer);
    __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_1ARRAY);
    __CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_CAEAGLLayer_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_gl_CAEAGLLayer]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_gl_CAEAGLLayer.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_gl_CAEAGLLayer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_gl_CAEAGLLayer]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_CAEAGLLayer(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_CAEAGLLayer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_gl_CAEAGLLayer()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_gl_CAEAGLLayer)
org_xmlvm_iphone_gl_CAEAGLLayer* me = (org_xmlvm_iphone_gl_CAEAGLLayer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_gl_CAEAGLLayer));
    me->tib = &__TIB_org_xmlvm_iphone_gl_CAEAGLLayer;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_gl_CAEAGLLayer(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_gl_CAEAGLLayer]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_gl_CAEAGLLayer()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_gl_CAEAGLLayer();
    org_xmlvm_iphone_gl_CAEAGLLayer___INIT___(me);
    return me;
}

void org_xmlvm_iphone_gl_CAEAGLLayer___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_CAEAGLLayer___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_gl_CAEAGLLayer_getDrawable__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_gl_CAEAGLLayer_getDrawable__]
    return me;
    //XMLVM_END_WRAPPER
}

