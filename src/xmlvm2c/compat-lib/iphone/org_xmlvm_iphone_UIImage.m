#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CGImage.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIImage.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIImage __CLASS_org_xmlvm_iphone_UIImage = {
    0, // classInitialized
    "org.xmlvm.iphone.UIImage", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIImage.h>
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIImage()
{
    __CLASS_org_xmlvm_iphone_UIImage.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIImage.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIImage;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIImage.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIImage.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_stretchableImage___int_int;
    __CLASS_org_xmlvm_iphone_UIImage.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_getCGImage__;
    __CLASS_org_xmlvm_iphone_UIImage.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_drawInRect___org_xmlvm_iphone_CGRect;
    __CLASS_org_xmlvm_iphone_UIImage.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_drawAtPoint___org_xmlvm_iphone_CGPoint;
    __CLASS_org_xmlvm_iphone_UIImage.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_getSize__;
    __CLASS_org_xmlvm_iphone_UIImage.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UIImage_cropImage___int_int_int_int;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIImage.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIImage.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImage]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImage()
{
    if (!__CLASS_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    org_xmlvm_iphone_UIImage* me = (org_xmlvm_iphone_UIImage*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImage));
    me->__class = &__CLASS_org_xmlvm_iphone_UIImage;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIImage]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImage()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_UIImage(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImage]
    //XMLVM_END_WRAPPER
}



JAVA_OBJECT org_xmlvm_iphone_UIImage_imageNamed___java_lang_String(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String]
	
	NSString *nsStr = toNSString(n1);
	UIImage *named = [UIImage imageNamed:nsStr];
	
	org_xmlvm_iphone_UIImage *toRet = __NEW_org_xmlvm_iphone_UIImage();
	//TODO need to call a constructor but UIImage does not have a public default constructor
	toRet->org_xmlvm_iphone_UIImage.ocImage = named; //[UIImage imageWithContentsOfFile: nsStr];
	return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImage_imageWithContentsOfFile___java_lang_String]
	
	NSString *nsStr = toNSString(n1);
	UIImage *named = [UIImage imageNamed:nsStr];
	
	org_xmlvm_iphone_UIImage *toRet = __NEW_org_xmlvm_iphone_UIImage();
	toRet->org_xmlvm_iphone_UIImage.ocImage = named; //[UIImage imageWithContentsOfFile: nsStr];
	return toRet;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImage_imageWithData___org_xmlvm_iphone_NSData(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIImage.classInitialized) __INIT_org_xmlvm_iphone_UIImage();
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
	UIImage *realImg = thiz->org_xmlvm_iphone_UIImage.ocImage;
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

