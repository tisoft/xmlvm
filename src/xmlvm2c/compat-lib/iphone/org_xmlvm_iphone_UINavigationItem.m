#include "org_xmlvm_iphone_UIView.h"
#include "org_xmlvm_iphone_UIBarButtonItem.h"
#include "org_xmlvm_iphone_UINavigationBar.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UINavigationItem.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UINavigationItem __CLASS_org_xmlvm_iphone_UINavigationItem = {
    0, // classInitialized
    "org.xmlvm.iphone.UINavigationItem", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UINavigationItem()
{
    __CLASS_org_xmlvm_iphone_UINavigationItem.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UINavigationItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UINavigationItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UINavigationItem.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_hidesBackButton__;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getPrompt__;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getTitle__;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_getTitleView__;
    __CLASS_org_xmlvm_iphone_UINavigationItem.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UINavigationItem.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UINavigationItem.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UINavigationItem(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UINavigationItem()
{
    if (!__CLASS_org_xmlvm_iphone_UINavigationItem.classInitialized) __INIT_org_xmlvm_iphone_UINavigationItem();
    org_xmlvm_iphone_UINavigationItem* me = (org_xmlvm_iphone_UINavigationItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UINavigationItem));
    me->__class = &__CLASS_org_xmlvm_iphone_UINavigationItem;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UINavigationItem]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UINavigationItem);
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UINavigationItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UINavigationItem___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem___INIT____java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setToolbar___org_xmlvm_iphone_UINavigationBar]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getBackBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UINavigationItem_hidesBackButton__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_hidesBackButton__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setHidesBackButton___boolean_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getLeftBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getPrompt__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getPrompt__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setPrompt___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getRightBarButtonItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_getTitleView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_getTitleView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_setTitleView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationItem_access$000___org_xmlvm_iphone_UINavigationItem(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UINavigationItem.classInitialized) __INIT_org_xmlvm_iphone_UINavigationItem();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationItem_access$000___org_xmlvm_iphone_UINavigationItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

