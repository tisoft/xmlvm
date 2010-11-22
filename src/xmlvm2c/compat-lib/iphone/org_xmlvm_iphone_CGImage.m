#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CGDataProvider.h"

#include "org_xmlvm_iphone_CGImage.h"

__CLASS_DEFINITION_org_xmlvm_iphone_CGImage __CLASS_org_xmlvm_iphone_CGImage = {
    0, // classInitialized
    "org.xmlvm.iphone.CGImage", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_CGImage()
{
    __CLASS_org_xmlvm_iphone_CGImage.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_CGImage.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGImage;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_CGImage.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_CGImage.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CGImage_getSize__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_CGImage.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_CGImage.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGImage]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_CGImage(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGImage]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGImage()
{
    if (!__CLASS_org_xmlvm_iphone_CGImage.classInitialized) __INIT_org_xmlvm_iphone_CGImage();
    org_xmlvm_iphone_CGImage* me = (org_xmlvm_iphone_CGImage*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGImage));
    me->__class = &__CLASS_org_xmlvm_iphone_CGImage;
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
    if (!__CLASS_org_xmlvm_iphone_CGImage.classInitialized) __INIT_org_xmlvm_iphone_CGImage();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGImage_createWithImageInRect___org_xmlvm_iphone_CGImage_org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGImage_createPNGFromDataProvider___org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_CGImage.classInitialized) __INIT_org_xmlvm_iphone_CGImage();
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

