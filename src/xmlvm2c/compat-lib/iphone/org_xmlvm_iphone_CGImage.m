#include "xmlvm.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CGDataProvider.h"

#include "org_xmlvm_iphone_CGImage.h"

#define XMLVM_CURRENT_CLASS_NAME CGImage
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGImage

__TIB_DEFINITION_org_xmlvm_iphone_CGImage __TIB_org_xmlvm_iphone_CGImage = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CGImage, // classInitializer
    "org.xmlvm.iphone.CGImage", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CGImage), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImage;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImage_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImage_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGImage_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGImage();
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
    &__CLASS_org_xmlvm_iphone_CGImage,
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGDataProvider,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"createWithImageInRect",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"createPNGFromDataProvider",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSize",
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
        org_xmlvm_iphone_CGImage_createWithImageInRect___org_xmlvm_iphone_CGImage_org_xmlvm_iphone_CGRect(argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_CGImage_createPNGFromDataProvider___org_xmlvm_iphone_CGDataProvider(argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_CGImage_getSize__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGImage()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_CGImage);
    if (!__TIB_org_xmlvm_iphone_CGImage.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_CGImage();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_CGImage);
}

void __INIT_IMPL_org_xmlvm_iphone_CGImage()
{
    if (!__TIB_org_xmlvm_iphone_CGImage.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_CGImage.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_CGImage.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGImage;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGImage.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_CGImage.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CGImage_getSize__;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_CGImage.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_CGImage.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_CGImage.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGImage.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_CGImage.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_CGImage.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGImage.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_CGImage.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_CGImage.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGImage.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_CGImage = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGImage);
        __TIB_org_xmlvm_iphone_CGImage.clazz = __CLASS_org_xmlvm_iphone_CGImage;
        __CLASS_org_xmlvm_iphone_CGImage_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGImage, 3);
        __CLASS_org_xmlvm_iphone_CGImage_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGImage, 2);
        __CLASS_org_xmlvm_iphone_CGImage_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGImage, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGImage]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_CGImage.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_CGImage(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGImage]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGImage(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGImage()
{
    if (!__TIB_org_xmlvm_iphone_CGImage.classInitialized) __INIT_org_xmlvm_iphone_CGImage();
    org_xmlvm_iphone_CGImage* me = (org_xmlvm_iphone_CGImage*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGImage));
    me->tib = &__TIB_org_xmlvm_iphone_CGImage;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGImage(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGImage]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGImage()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CGImage_createWithImageInRect___org_xmlvm_iphone_CGImage_org_xmlvm_iphone_CGRect(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_CGImage.classInitialized) __INIT_org_xmlvm_iphone_CGImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGImage_createWithImageInRect___org_xmlvm_iphone_CGImage_org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGImage_createPNGFromDataProvider___org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_CGImage.classInitialized) __INIT_org_xmlvm_iphone_CGImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGImage_createPNGFromDataProvider___org_xmlvm_iphone_CGDataProvider]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGImage_getSize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGImage_getSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

