
#include "org_xmlvm_iphone_UIUserInterfaceIdiom.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIUserInterfaceIdiom __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom = {
    0, // classInitialized
    "org.xmlvm.iphone.UIUserInterfaceIdiom", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad;

void __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom()
{
    __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIUserInterfaceIdiom;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone = 0;
    _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad = 1;


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIUserInterfaceIdiom]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIUserInterfaceIdiom(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIUserInterfaceIdiom]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIUserInterfaceIdiom()
{
    if (!__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    org_xmlvm_iphone_UIUserInterfaceIdiom* me = (org_xmlvm_iphone_UIUserInterfaceIdiom*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIUserInterfaceIdiom));
    me->__class = &__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIUserInterfaceIdiom]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIUserInterfaceIdiom()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIUserInterfaceIdiom();
    org_xmlvm_iphone_UIUserInterfaceIdiom___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_UIUserInterfaceIdiom_GET_Phone()
{
    if (!__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    return _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone;
}

void org_xmlvm_iphone_UIUserInterfaceIdiom_PUT_Phone(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone = v;
}

JAVA_INT org_xmlvm_iphone_UIUserInterfaceIdiom_GET_Pad()
{
    if (!__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    return _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad;
}

void org_xmlvm_iphone_UIUserInterfaceIdiom_PUT_Pad(JAVA_INT v)
{
    if (!__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad = v;
}

void org_xmlvm_iphone_UIUserInterfaceIdiom___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIUserInterfaceIdiom___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

