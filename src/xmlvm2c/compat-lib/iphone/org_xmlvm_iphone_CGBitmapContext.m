#include "xmlvm.h"
#include "java_nio_ByteBuffer.h"
#include "org_xmlvm_iphone_CGColorSpace.h"
#include "org_xmlvm_iphone_CGImage.h"

#include "org_xmlvm_iphone_CGBitmapContext.h"

#define XMLVM_CURRENT_CLASS_NAME CGBitmapContext
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGBitmapContext

__TIB_DEFINITION_org_xmlvm_iphone_CGBitmapContext __TIB_org_xmlvm_iphone_CGBitmapContext = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGBitmapContext, // classInitializer
    "org.xmlvm.iphone.CGBitmapContext", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CGContext, // extends
    sizeof(org_xmlvm_iphone_CGBitmapContext), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGBitmapContext_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <CoreGraphics/CGContext.h>
#import <CoreGraphics/CGBitmapContext.h>

//XMLVM_CURRENT_CLASS_NAME is CGBitmapContext which leads to XMLVM_VAR_THIZ to be CGBitmapContextRef which is not correct, so we map that back to CGContextRef
#define CGBitmapContextRef CGContextRef
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGBitmapContext();
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
    &__CLASS_java_nio_ByteBuffer,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_CGColorSpace,
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_int_1ARRAY,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_CGColorSpace,
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_byte_1ARRAY,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_org_xmlvm_iphone_CGColorSpace,
    &__CLASS_int,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"create",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/nio/ByteBuffer;IIIILorg/xmlvm/iphone/CGColorSpace;I)Lorg/xmlvm/iphone/CGBitmapContext;",
    JAVA_NULL,
    JAVA_NULL},
    {"create",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([IIIIILorg/xmlvm/iphone/CGColorSpace;I)Lorg/xmlvm/iphone/CGBitmapContext;",
    JAVA_NULL,
    JAVA_NULL},
    {"create",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([BIIIILorg/xmlvm/iphone/CGColorSpace;I)Lorg/xmlvm/iphone/CGBitmapContext;",
    JAVA_NULL,
    JAVA_NULL},
    {"createImage",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGImage;",
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
        org_xmlvm_iphone_CGBitmapContext_create___java_nio_ByteBuffer_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[4])->fields.java_lang_Integer.value_, argsArray[5], ((java_lang_Integer*) argsArray[6])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_CGBitmapContext_create___int_1ARRAY_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[4])->fields.java_lang_Integer.value_, argsArray[5], ((java_lang_Integer*) argsArray[6])->fields.java_lang_Integer.value_);
        break;
    case 2:
        org_xmlvm_iphone_CGBitmapContext_create___byte_1ARRAY_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[4])->fields.java_lang_Integer.value_, argsArray[5], ((java_lang_Integer*) argsArray[6])->fields.java_lang_Integer.value_);
        break;
    case 3:
        org_xmlvm_iphone_CGBitmapContext_createImage__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGBitmapContext()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGBitmapContext);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGBitmapContext.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGBitmapContext.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGBitmapContext);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGBitmapContext.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGBitmapContext.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CGBitmapContext();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGBitmapContext()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    __TIB_org_xmlvm_iphone_CGBitmapContext.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGBitmapContext.vtable, __TIB_org_xmlvm_iphone_CGContext.vtable, sizeof(__TIB_org_xmlvm_iphone_CGContext.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGBitmapContext.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGBitmapContext.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CGBitmapContext.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGBitmapContext.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGBitmapContext.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGBitmapContext.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGBitmapContext.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGBitmapContext.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGBitmapContext.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGBitmapContext.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGBitmapContext = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGBitmapContext);
    __TIB_org_xmlvm_iphone_CGBitmapContext.clazz = __CLASS_org_xmlvm_iphone_CGBitmapContext;
    __TIB_org_xmlvm_iphone_CGBitmapContext.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGBitmapContext_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapContext);
    __CLASS_org_xmlvm_iphone_CGBitmapContext_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapContext_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGBitmapContext_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGBitmapContext_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGBitmapContext(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGContext(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGBitmapContext()
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    org_xmlvm_iphone_CGBitmapContext* me = (org_xmlvm_iphone_CGBitmapContext*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGBitmapContext));
    me->tib = &__TIB_org_xmlvm_iphone_CGBitmapContext;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGBitmapContext(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGBitmapContext]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGBitmapContext()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_create___java_nio_ByteBuffer_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_INT n5, JAVA_OBJECT n6, JAVA_INT n7)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGBitmapContext_create___java_nio_ByteBuffer_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_create___int_1ARRAY_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_INT n5, JAVA_OBJECT n6, JAVA_INT n7)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGBitmapContext_create___int_1ARRAY_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int]
    void* data= n1==JAVA_NULL?nil:((org_xmlvm_runtime_XMLVMArray*)n1)->fields.org_xmlvm_runtime_XMLVMArray.array_;
    int width=n2;
    int height=n3;
    size_t bitsPerComponent=n4;
    size_t bytesPerRow=n5;
    CGColorSpaceRef space=((org_xmlvm_iphone_CGColorSpace*)n6)->fields.org_xmlvm_iphone_CFType.wrappedCFTypeRef;
    CGBitmapInfo bitmapInfo=n7;
    
	org_xmlvm_iphone_CGBitmapContext *toRet = __NEW_org_xmlvm_iphone_CGBitmapContext();
	org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(toRet, CGBitmapContextCreate(data, width, height, bitsPerComponent, bytesPerRow, space, bitmapInfo));
	return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_create___byte_1ARRAY_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int(JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4, JAVA_INT n5, JAVA_OBJECT n6, JAVA_INT n7)
{
    if (!__TIB_org_xmlvm_iphone_CGBitmapContext.classInitialized) __INIT_org_xmlvm_iphone_CGBitmapContext();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGBitmapContext_create___byte_1ARRAY_int_int_int_int_org_xmlvm_iphone_CGColorSpace_int]
    void* data= n1==JAVA_NULL?nil:((org_xmlvm_runtime_XMLVMArray*)n1)->fields.org_xmlvm_runtime_XMLVMArray.array_;
    int width=n2;
    int height=n3;
    size_t bitsPerComponent=n4;
    size_t bytesPerRow=n5;
    CGColorSpaceRef space=((org_xmlvm_iphone_CGColorSpace*)n6)->fields.org_xmlvm_iphone_CFType.wrappedCFTypeRef;
    CGBitmapInfo bitmapInfo=n7;
    
	org_xmlvm_iphone_CGBitmapContext *toRet = __NEW_org_xmlvm_iphone_CGBitmapContext();
	org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(toRet, CGBitmapContextCreate(data, width, height, bitsPerComponent, bytesPerRow, space, bitmapInfo));
	return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGBitmapContext_createImage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGBitmapContext_createImage__]
    XMLVM_VAR_CFTHIZ;
    CGImageRef imageRef=CGBitmapContextCreateImage(thiz);
    org_xmlvm_iphone_CGImage* image=__NEW_org_xmlvm_iphone_CGImage();
    org_xmlvm_iphone_CGImage_INTERNAL_CONSTRUCTOR(image, imageRef);
    return image;
    //XMLVM_END_WRAPPER
}

