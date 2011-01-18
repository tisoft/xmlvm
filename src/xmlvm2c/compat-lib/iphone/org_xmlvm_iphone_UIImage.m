#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIImage.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIImage __TIB_org_xmlvm_iphone_UIImage = {
    0, // classInitialized
    "org.xmlvm.iphone.UIImage", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImage_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIImage.h>

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

void __INIT_org_xmlvm_iphone_UIImage()
{
    __TIB_org_xmlvm_iphone_UIImage.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
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
    __CLASS_org_xmlvm_iphone_UIImage = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIImage);
    __TIB_org_xmlvm_iphone_UIImage.clazz = __CLASS_org_xmlvm_iphone_UIImage;
    __CLASS_org_xmlvm_iphone_UIImage_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImage, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImage]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIImage(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImage]
	org_xmlvm_iphone_UIImage* thiz = (org_xmlvm_iphone_UIImage*) me;
	[((UIImage*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImage()
{
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    org_xmlvm_iphone_UIImage* me = (org_xmlvm_iphone_UIImage*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImage));
    me->tib = &__TIB_org_xmlvm_iphone_UIImage;
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
	NSString* nsStr = toNSString(n1);
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	UIImage* named = [UIImage imageNamed:nsStr];
	[named retain];
	[pool release];
	[nsStr release];
	
	org_xmlvm_iphone_UIImage *toRet = __NEW_org_xmlvm_iphone_UIImage();
	//TODO need to call a constructor but UIImage does not have a public default constructor
	toRet->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = named; //[UIImage imageWithContentsOfFile: nsStr];
	return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String]
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	NSString* nsStr = toNSString(n1);
	UIImage* named = [UIImage imageNamed:nsStr];
	[named retain];
	[pool release];
	[nsStr release];
	
	org_xmlvm_iphone_UIImage *toRet = __NEW_org_xmlvm_iphone_UIImage();
	toRet->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = named; //[UIImage imageWithContentsOfFile: nsStr];
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
	org_xmlvm_iphone_UIImage *thiz = me;
	UIImage* realImg = thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
	CGRect drawIn = toCGRect(n1);
	[realImg drawInRect: drawIn];
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
    XMLVM_NOT_IMPLEMENTED();
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

