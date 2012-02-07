#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_CGImage.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSString.h"
#include "org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.h"

#include "org_xmlvm_iphone_UIImage.h"

#define XMLVM_CURRENT_CLASS_NAME UIImage
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIImage

__TIB_DEFINITION_org_xmlvm_iphone_UIImage __TIB_org_xmlvm_iphone_UIImage = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIImage, // classInitializer
    "org.xmlvm.iphone.UIImage", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIImage), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

#import <UIKit/UIKit.h>
#include "org_xmlvm_iphone_CGImage.h"
#include "org_xmlvm_iphone_CGSize.h"

#import "org_xmlvm_iphone_NSString.h"
#import "org_xmlvm_iphone_CGRect.h"

@interface CroppedImageArgs : NSObject {
@public    CGRect cropRect;
@public    UIImage* croppedImage;
}
@end

@implementation CroppedImageArgs
@end

@interface UIImage(cat_UIImage)
@end

@implementation UIImage(cat_UIImage)
/*
 * We perform the cropping on the main thread in case the cropping is
 * done in a thread. Quartz is not thread-safe.
 */
- (void) cropImage: (id) args
{
    CGRect cropRect = ((CroppedImageArgs*) args)->cropRect;
    CGSize size = cropRect.size;
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGImageRef subImage = CGImageCreateWithImageInRect([self CGImage], cropRect);
    CGRect myRect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    CGContextScaleCTM(context, 1.0f, -1.0f);
    CGContextTranslateCTM(context, 0.0f, -size.height);
    CGContextFlush(context);
    CGContextDrawImage(context, myRect, subImage);
    CGContextFlush(context);
    UIImage* croppedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [croppedImage retain];
    CGImageRelease(subImage);
    ((CroppedImageArgs *) args)->croppedImage = croppedImage;
}
@end

@interface DispatchObject : NSObject {
    JAVA_OBJECT target;
}

- (id) initWithTarget:(JAVA_OBJECT) target_;
- (void)imageSavedToPhotosAlbum:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo;
@end

@implementation DispatchObject

- (id) initWithTarget:(JAVA_OBJECT) target_
{
    [super init];
    self->target = target_;
    return self;
}

- (void)imageSavedToPhotosAlbum:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    Func_VOOOO toCall = (Func_VOOOO)((java_lang_Object*)(self->target))->tib->itableBegin[XMLVM_ITABLE_IDX_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_imageDidFinishWritingWithError___org_xmlvm_iphone_UIImage_org_xmlvm_iphone_NSError_java_lang_Object];
    toCall(self->target, xmlvm_get_associated_c_object(image), xmlvm_get_associated_c_object(error), xmlvm_get_associated_c_object(contextInfo));
    [self release];
}

@end

void org_xmlvm_iphone_UIImage_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [UIImage class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_UIImage();
        org_xmlvm_iphone_UIImage_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

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

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler,
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"imageNamed",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Lorg/xmlvm/iphone/UIImage;",
    JAVA_NULL,
    JAVA_NULL},
    {"imageWithContentsOfFile",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Lorg/xmlvm/iphone/UIImage;",
    JAVA_NULL,
    JAVA_NULL},
    {"imageWithData",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSData;)Lorg/xmlvm/iphone/UIImage;",
    JAVA_NULL,
    JAVA_NULL},
    {"stretchableImage",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(II)Lorg/xmlvm/iphone/UIImage;",
    JAVA_NULL,
    JAVA_NULL},
    {"getCGImage",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGImage;",
    JAVA_NULL,
    JAVA_NULL},
    {"drawInRect",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"drawAtPoint",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getSize",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGSize;",
    JAVA_NULL,
    JAVA_NULL},
    {"cropImage",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(IIII)Lorg/xmlvm/iphone/UIImage;",
    JAVA_NULL,
    JAVA_NULL},
    {"PNGRepresentation",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSData;",
    JAVA_NULL,
    JAVA_NULL},
    {"JPEGRepresentation",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)Lorg/xmlvm/iphone/NSData;",
    JAVA_NULL,
    JAVA_NULL},
    {"writeToSavedPhotosAlbum",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIImageWriteToPhotoAlbumHandler;Ljava/lang/Object;)V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_imageNamed___java_lang_String(argsArray[0]);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String(argsArray[0]);
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_imageWithData___org_xmlvm_iphone_NSData(argsArray[0]);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_stretchableImage___int_int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 4:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_getCGImage__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint(receiver, argsArray[0]);
        break;
    case 7:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_getSize__(receiver);
        break;
    case 8:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_cropImage___int_int_int_int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    case 9:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_PNGRepresentation__(receiver);
        break;
    case 10:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImage_JPEGRepresentation___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 11:
        org_xmlvm_iphone_UIImage_writeToSavedPhotosAlbum___org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_java_lang_Object(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIImage()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIImage);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIImage.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIImage.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIImage);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIImage.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIImage.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIImage();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIImage()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIImage.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIImage;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIImage.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIImage.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIImage.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

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
    __TIB_org_xmlvm_iphone_UIImage.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIImage_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImage);
    __CLASS_org_xmlvm_iphone_UIImage_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImage_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIImage_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImage_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImage]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIImage.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIImage(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImage]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImage(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImage]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImage()
{
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    org_xmlvm_iphone_UIImage* me = (org_xmlvm_iphone_UIImage*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImage));
    me->tib = &__TIB_org_xmlvm_iphone_UIImage;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImage(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIImage]
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
    JAVA_OBJECT obj = xmlvm_get_associated_c_object(named);
    [named release];
    return obj;
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
    JAVA_OBJECT obj = xmlvm_get_associated_c_object(named);
    [named release];
    return obj;
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
    XMLVM_VAR_THIZ;
    CGImageRef image=[thiz CGImage];
    if(image==nil)
        return JAVA_NULL;
    else
    {
        JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGImage();
        //retain here so that it can be GC'd
        CGImageRetain(image);
        org_xmlvm_iphone_CGImage_INTERNAL_CONSTRUCTOR(obj, image);
        return obj;
    }
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
    XMLVM_VAR_THIZ;
    XMLVM_VAR_CGPoint(pt, n1);

    [thiz drawAtPoint:pt];
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
    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT(x, n1);
    XMLVM_VAR_INT(y, n2);
    XMLVM_VAR_INT(width, n3);
    XMLVM_VAR_INT(height, n4);
    
    CroppedImageArgs* args = [[CroppedImageArgs alloc] init];
    args->cropRect = CGRectMake(x, y, width, height);
    [thiz performSelectorOnMainThread:@selector(cropImage:) withObject:args waitUntilDone:TRUE];
    UIImage* croppedImage = args->croppedImage;
    [args release];
    JAVA_OBJECT obj = xmlvm_get_associated_c_object(croppedImage);
    [croppedImage release];
    return obj;
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

void org_xmlvm_iphone_UIImage_writeToSavedPhotosAlbum___org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_writeToSavedPhotosAlbum___org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_java_lang_Object]
    XMLVM_VAR_THIZ;
    
    DispatchObject* dispatcher = nil;
    XMLVM_VAR_IOS(NSObject, context, n2);
    
    if (n2!= JAVA_NULL){
        dispatcher = [[DispatchObject alloc] initWithTarget:n1];
        UIImageWriteToSavedPhotosAlbum (thiz,
                                        dispatcher ,
                                        @selector(imageSavedToPhotosAlbum: didFinishSavingWithError: contextInfo:),
                                        context);
    }
    else{
         UIImageWriteToSavedPhotosAlbum (thiz,
                                         dispatcher,
                                         nil,
                                         context);
    }
    //XMLVM_END_WRAPPER
}

