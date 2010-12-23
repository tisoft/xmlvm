#include "org_xmlvm_iphone_UIView.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_UIBarButtonItemDelegate.h"

#include "org_xmlvm_iphone_UIBarButtonItem.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItem __TIB_org_xmlvm_iphone_UIBarButtonItem = {
    0, // classInitialized
    "org.xmlvm.iphone.UIBarButtonItem", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIBarItem, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIBarButtonItem()
{
    __TIB_org_xmlvm_iphone_UIBarButtonItem.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIBarItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarItem();
    __TIB_org_xmlvm_iphone_UIBarButtonItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIBarButtonItem.vtable, __TIB_org_xmlvm_iphone_UIBarItem.vtable, sizeof(__TIB_org_xmlvm_iphone_UIBarItem.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_setTitle___java_lang_String;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_getCustomView__;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_setCustomView___org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_getPossibleTitles__;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_setPossibleTitles___java_util_Set;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_getStyle__;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_setStyle___int;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_getTarget__;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[34] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_setTarget___org_xmlvm_iphone_UIBarButtonItemDelegate;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[35] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_getWidth__;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.vtable[36] = (VTABLE_PTR) &org_xmlvm_iphone_UIBarButtonItem_setWidth___float;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIBarButtonItem.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIBarButtonItem.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarButtonItem]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIBarButtonItem(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarButtonItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarButtonItem()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItem();
    org_xmlvm_iphone_UIBarButtonItem* me = (org_xmlvm_iphone_UIBarButtonItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarButtonItem));
    me->tib = &__TIB_org_xmlvm_iphone_UIBarButtonItem;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarButtonItem]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_UIBarButtonItem___INIT____int_org_xmlvm_iphone_UIBarButtonItemDelegate(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem___INIT____int_org_xmlvm_iphone_UIBarButtonItemDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem___INIT____org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem___INIT____org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem___INIT____org_xmlvm_iphone_UIImage_int_org_xmlvm_iphone_UIBarButtonItemDelegate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem___INIT____org_xmlvm_iphone_UIImage_int_org_xmlvm_iphone_UIBarButtonItemDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem___INIT____java_lang_String_int_org_xmlvm_iphone_UIBarButtonItemDelegate(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem___INIT____java_lang_String_int_org_xmlvm_iphone_UIBarButtonItemDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIBarButtonItem_getCustomView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_getCustomView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem_setCustomView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_setCustomView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIBarButtonItem_getPossibleTitles__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_getPossibleTitles__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem_setPossibleTitles___java_util_Set(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_setPossibleTitles___java_util_Set]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItem_getStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_getStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem_setStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_setStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIBarButtonItem_getTarget__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_getTarget__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem_setTarget___org_xmlvm_iphone_UIBarButtonItemDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_setTarget___org_xmlvm_iphone_UIBarButtonItemDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIBarButtonItem_getWidth__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_getWidth__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIBarButtonItem_setWidth___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIBarButtonItem_setWidth___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

