#include "org_xmlvm_iphone_UITabBarDelegate.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_UITabBarController.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "org_xmlvm_iphone_UITabBarItem.h"

#include "org_xmlvm_iphone_UITabBar.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITabBar __TIB_org_xmlvm_iphone_UITabBar = {
    0, // classInitialized
    "org.xmlvm.iphone.UITabBar", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBar_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"tbcontrol",
    &__CLASS_org_xmlvm_iphone_UITabBarController,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UITabBar, fields.org_xmlvm_iphone_UITabBar.tbcontrol_),
    0,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UITabBar()
{
    __TIB_org_xmlvm_iphone_UITabBar.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UITabBar.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBar;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBar.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITabBar.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getDelegate__;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getItems__;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getSelectedItem__;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setSelectedIndex___int;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_isCustomizing__;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getBarStyle__;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setBarStyle___int;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_getTintColor__;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_isTranslucent__;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_setTranslucent___boolean;
    __TIB_org_xmlvm_iphone_UITabBar.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBar_updateViews__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITabBar.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITabBar.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITabBar.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBar.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITabBar = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UITabBar);
    __TIB_org_xmlvm_iphone_UITabBar.clazz = __CLASS_org_xmlvm_iphone_UITabBar;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBar]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITabBar(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBar]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBar()
{
    if (!__TIB_org_xmlvm_iphone_UITabBar.classInitialized) __INIT_org_xmlvm_iphone_UITabBar();
    org_xmlvm_iphone_UITabBar* me = (org_xmlvm_iphone_UITabBar*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBar));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBar;
    me->fields.org_xmlvm_iphone_UITabBar.tbcontrol_ = (org_xmlvm_iphone_UITabBarController*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBar]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBar()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBar();
    org_xmlvm_iphone_UITabBar___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBar___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setDelegate___org_xmlvm_iphone_UITabBarDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getItems__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getItems__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setItems___java_util_ArrayList_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getSelectedItem__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getSelectedItem__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setSelectedItem___org_xmlvm_iphone_UITabBarItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setSelectedIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setSelectedIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_beginCustomizingItems___java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_endCustomizingAnimated___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_isCustomizing__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_isCustomizing__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UITabBar_getBarStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getBarStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setBarStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBar_getTintColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_getTintColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setTintColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UITabBar_isTranslucent__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_isTranslucent__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_setTranslucent___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBar_updateViews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBar_updateViews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

