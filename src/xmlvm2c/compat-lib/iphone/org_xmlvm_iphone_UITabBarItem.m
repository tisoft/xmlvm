#include "java_lang_String.h"

#include "org_xmlvm_iphone_UITabBarItem.h"

__TIB_DEFINITION_org_xmlvm_iphone_UITabBarItem __TIB_org_xmlvm_iphone_UITabBarItem = {
    0, // classInitialized
    "org.xmlvm.iphone.UITabBarItem", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIBarItem, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITabBarItem_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UITabBarItem()
{
    __TIB_org_xmlvm_iphone_UITabBarItem.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIBarItem.classInitialized) __INIT_org_xmlvm_iphone_UIBarItem();
    __TIB_org_xmlvm_iphone_UITabBarItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITabBarItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITabBarItem.vtable, __TIB_org_xmlvm_iphone_UIBarItem.vtable, sizeof(__TIB_org_xmlvm_iphone_UIBarItem.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UITabBarItem.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarItem_getBadgeValue__;
    __TIB_org_xmlvm_iphone_UITabBarItem.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String;
    __TIB_org_xmlvm_iphone_UITabBarItem.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UITabBarItem.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITabBarItem.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UITabBarItem.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITabBarItem.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITabBarItem = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UITabBarItem);
    __TIB_org_xmlvm_iphone_UITabBarItem.clazz = __CLASS_org_xmlvm_iphone_UITabBarItem;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITabBarItem]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UITabBarItem(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITabBarItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITabBarItem()
{
    if (!__TIB_org_xmlvm_iphone_UITabBarItem.classInitialized) __INIT_org_xmlvm_iphone_UITabBarItem();
    org_xmlvm_iphone_UITabBarItem* me = (org_xmlvm_iphone_UITabBarItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITabBarItem));
    me->tib = &__TIB_org_xmlvm_iphone_UITabBarItem;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITabBarItem]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITabBarItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UITabBarItem();
    org_xmlvm_iphone_UITabBarItem___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UITabBarItem___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UITabBarItem_getBadgeValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem_getBadgeValue__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem_setBadgeValue___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem_setTitle___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UITabBarItem_access$000___org_xmlvm_iphone_UITabBarItem(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UITabBarItem.classInitialized) __INIT_org_xmlvm_iphone_UITabBarItem();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UITabBarItem_access$000___org_xmlvm_iphone_UITabBarItem]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

