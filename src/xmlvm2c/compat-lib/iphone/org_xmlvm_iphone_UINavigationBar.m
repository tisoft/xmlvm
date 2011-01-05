#include "org_xmlvm_iphone_UINavigationItem.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UINavigationController.h"
#include "org_xmlvm_iphone_UINavigationBarDelegate.h"
#include "org_xmlvm_iphone_UIColor.h"

#include "org_xmlvm_iphone_UINavigationBar.h"

__TIB_DEFINITION_org_xmlvm_iphone_UINavigationBar __TIB_org_xmlvm_iphone_UINavigationBar = {
    0, // classInitialized
    "org.xmlvm.iphone.UINavigationBar", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBar;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UINavigationBar_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"nbcontroller",
    &__CLASS_org_xmlvm_iphone_UINavigationController,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UINavigationBar, fields.org_xmlvm_iphone_UINavigationBar.nbcontroller_),
    0,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UINavigationBar()
{
    __TIB_org_xmlvm_iphone_UINavigationBar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UINavigationBar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UINavigationBar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UINavigationBar.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_popNavigationItemAnimated___boolean;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList_boolean;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getDelegate__;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setDelegate___org_xmlvm_iphone_UINavigationBarDelegate;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getTopItem__;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getBackitem__;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getItems__;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getBarStyle__;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setBarStyle___int;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_getTintColor__;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setTintColor___org_xmlvm_iphone_UIColor;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_isTranslucent__;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_setTranslucent___boolean;
    __TIB_org_xmlvm_iphone_UINavigationBar.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UINavigationBar_updateViews__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UINavigationBar.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UINavigationBar.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UINavigationBar.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UINavigationBar.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UINavigationBar = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UINavigationBar);
    __TIB_org_xmlvm_iphone_UINavigationBar.clazz = __CLASS_org_xmlvm_iphone_UINavigationBar;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UINavigationBar]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UINavigationBar(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UINavigationBar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UINavigationBar()
{
    if (!__TIB_org_xmlvm_iphone_UINavigationBar.classInitialized) __INIT_org_xmlvm_iphone_UINavigationBar();
    org_xmlvm_iphone_UINavigationBar* me = (org_xmlvm_iphone_UINavigationBar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UINavigationBar));
    me->tib = &__TIB_org_xmlvm_iphone_UINavigationBar;
    me->fields.org_xmlvm_iphone_UINavigationBar.nbcontroller_ = (org_xmlvm_iphone_UINavigationController*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UINavigationBar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UINavigationBar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UINavigationBar();
    org_xmlvm_iphone_UINavigationBar___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UINavigationBar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_pushNavigationItem___org_xmlvm_iphone_UINavigationItem_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_popNavigationItemAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_popNavigationItemAnimated___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setItems___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setDelegate___org_xmlvm_iphone_UINavigationBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setDelegate___org_xmlvm_iphone_UINavigationBarDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getTopItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getTopItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getBackitem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getBackitem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getItems__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getItems__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UINavigationBar_getBarStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getBarStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setBarStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UINavigationBar_getTintColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_getTintColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setTintColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UINavigationBar_isTranslucent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_isTranslucent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_setTranslucent___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UINavigationBar_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UINavigationBar_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

