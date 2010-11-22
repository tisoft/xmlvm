#include "org_xmlvm_iphone_UIImage.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UIImageView.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIImageView __CLASS_org_xmlvm_iphone_UIImageView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIImageView", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIView, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIImageView()
{
    __CLASS_org_xmlvm_iphone_UIImageView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __CLASS_org_xmlvm_iphone_UIImageView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIImageView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIImageView.vtable, __CLASS_org_xmlvm_iphone_UIView.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIImageView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIImageView_setImage___org_xmlvm_iphone_UIImage;
    __CLASS_org_xmlvm_iphone_UIImageView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIImageView_getImage__;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIImageView.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIImageView.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImageView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIImageView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImageView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImageView()
{
    if (!__CLASS_org_xmlvm_iphone_UIImageView.classInitialized) __INIT_org_xmlvm_iphone_UIImageView();
    org_xmlvm_iphone_UIImageView* me = (org_xmlvm_iphone_UIImageView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImageView));
    me->__class = &__CLASS_org_xmlvm_iphone_UIImageView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIImageView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImageView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIImageView();
    org_xmlvm_iphone_UIImageView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIImageView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImageView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImageView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImageView___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImageView_setImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImageView_setImage___org_xmlvm_iphone_UIImage]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImageView_getImage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImageView_getImage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

