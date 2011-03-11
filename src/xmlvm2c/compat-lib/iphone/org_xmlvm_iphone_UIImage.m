#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIImage.h"

#define XMLVM_CURRENT_CLASS_NAME UIImage
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIImage

__TIB_DEFINITION_org_xmlvm_iphone_UIImage __TIB_org_xmlvm_iphone_UIImage = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIImage, // classInitializer
    "org.xmlvm.iphone.UIImage", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIImage), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIImage.h>
#include "org_xmlvm_iphone_CGSize.h"

#import "org_xmlvm_iphone_NSString.h"
#import "org_xmlvm_iphone_CGRect.h"
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIImage();
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
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_float,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"imageNamed",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"imageWithContentsOfFile",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"imageWithData",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stretchableImage",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCGImage",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"drawInRect",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"drawAtPoint",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getSize",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"cropImage",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"PNGRepresentation",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"JPEGRepresentation",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIImage_imageNamed___java_lang_String(argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String(argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UIImage_imageWithData___org_xmlvm_iphone_NSData(argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UIImage_stretchableImage___int_int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 4:
        org_xmlvm_iphone_UIImage_getCGImage__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_UIImage_getSize__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_UIImage_cropImage___int_int_int_int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    case 9:
        org_xmlvm_iphone_UIImage_PNGRepresentation__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UIImage_JPEGRepresentation___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIImage()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIImage);
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIImage();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIImage);
}

void __INIT_IMPL_org_xmlvm_iphone_UIImage()
{
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIImage.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_UIImage.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIImage;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIImage.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UIImage.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_stretchableImage___int_int;
        __TIB_org_xmlvm_iphone_UIImage.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_getCGImage__;
        __TIB_org_xmlvm_iphone_UIImage.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect;
        __TIB_org_xmlvm_iphone_UIImage.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint;
        __TIB_org_xmlvm_iphone_UIImage.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_getSize__;
        __TIB_org_xmlvm_iphone_UIImage.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_cropImage___int_int_int_int;
        __TIB_org_xmlvm_iphone_UIImage.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_PNGRepresentation__;
        __TIB_org_xmlvm_iphone_UIImage.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_JPEGRepresentation___float;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_UIImage.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIImage.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_UIImage.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIImage.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIImage.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIImage.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIImage.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIImage.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIImage.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIImage.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIImage = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIImage);
        __TIB_org_xmlvm_iphone_UIImage.clazz = __CLASS_org_xmlvm_iphone_UIImage;
        __CLASS_org_xmlvm_iphone_UIImage_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImage, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImage]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIImage.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIImage(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImage]
	org_xmlvm_iphone_UIImage* thiz = (org_xmlvm_iphone_UIImage*) me;
	[((UIImage*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) release];
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImage(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImage()
{
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    org_xmlvm_iphone_UIImage* me = (org_xmlvm_iphone_UIImage*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImage));
    me->tib = &__TIB_org_xmlvm_iphone_UIImage;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImage(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIImage]
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIImage);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImage()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_imageNamed___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_imageNamed___java_lang_String]
    XMLVM_VAR_NSString(fileName, n1);

    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    UIImage* named = [UIImage imageNamed:fileName];
    [named retain];
    [pool release];
    [fileName release];
	
    org_xmlvm_iphone_UIImage* toRet = __NEW_org_xmlvm_iphone_UIImage();
    //TODO need to call a constructor but UIImage does not have a public default constructor
    toRet->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = named; //[UIImage imageWithContentsOfFile: nsStr];
    return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String]
    XMLVM_VAR_NSString(fileName, n1);
    
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    UIImage* named = [UIImage imageWithContentsOfFile:fileName];// [UIImage imageNamed:fileName];
    [named retain];
    [pool release];
    [fileName release];
	
    org_xmlvm_iphone_UIImage *toRet = __NEW_org_xmlvm_iphone_UIImage();
    //TODO use internal constructor
    toRet->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = named;
    return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithData___org_xmlvm_iphone_NSData(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_imageWithData___org_xmlvm_iphone_NSData]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_stretchableImage___int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_stretchableImage___int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_getCGImage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_getCGImage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_CGRect(rect, n1);
    
    [thiz drawInRect:rect];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_getSize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_getSize__]
    XMLVM_VAR_THIZ;
    
    CGSize size = thiz.size;
    org_xmlvm_iphone_CGSize* jsize = __NEW_org_xmlvm_iphone_CGSize();
    org_xmlvm_iphone_CGSize___INIT____float_float(jsize, size.width, size.height);
    return jsize;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_cropImage___int_int_int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_cropImage___int_int_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_PNGRepresentation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_PNGRepresentation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_JPEGRepresentation___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_JPEGRepresentation___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

