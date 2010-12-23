#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_UIImage.h"
#include "org_xmlvm_iphone_UIEdgeInsets.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIBarItem.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIBarItem __TIB_org_xmlvm_iphone_UIBarItem = {
    0, // classInitialized
    "org.xmlvm.iphone.UIBarItem", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIBarItem()
{
    __TIB_org_xmlvm_iphone_UIBarItem.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIBarItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIBarItem.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_getBar__;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_setBar___org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_isEnabled__;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_setEnabled___boolean;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_getImage__;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_setImage___org_xmlvm_iphone_UIImage;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_getImageInsets__;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_setImageInsets___org_xmlvm_iphone_UIEdgeInsets;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_getTitle__;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_setTitle___java_lang_String;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_getTag__;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_setTag___int;
    __TIB_org_xmlvm_iphone_UIBarItem.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarItem_updateViews__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIBarItem.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIBarItem.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarItem]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIBarItem(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarItem()
{
    if (!__TIB_org_xmlvm_iphone_UIBarItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarItem();
    org_xmlvm_iphone_UIBarItem* me = (org_xmlvm_iphone_UIBarItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarItem));
    me->tib = &__TIB_org_xmlvm_iphone_UIBarItem;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarItem]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIBarItem();
    org_xmlvm_iphone_UIBarItem___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIBarItem___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getBar__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_getBar__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarItem_setBar___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_setBar___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIBarItem_isEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_isEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarItem_setEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_setEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getImage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_getImage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarItem_setImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_setImage___org_xmlvm_iphone_UIImage]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getImageInsets__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_getImageInsets__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarItem_setImageInsets___org_xmlvm_iphone_UIEdgeInsets(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_setImageInsets___org_xmlvm_iphone_UIEdgeInsets]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIBarItem_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIBarItem_getTag__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_getTag__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarItem_setTag___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_setTag___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarItem_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarItem_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

