#include "java_util_Map.h"

#include "org_xmlvm_iphone_UIControl.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIControl __TIB_org_xmlvm_iphone_UIControl = {
    0, // classInitialized
    "org.xmlvm.iphone.UIControl", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControl_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"delegates",
    &__CLASS_java_util_Map,
    0,
    XMLVM_OFFSETOF(org_xmlvm_iphone_UIControl, fields.org_xmlvm_iphone_UIControl.delegates_),
    0,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UIControl()
{
    __TIB_org_xmlvm_iphone_UIControl.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UIControl.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControl;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIControl.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIControl.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int;
    __TIB_org_xmlvm_iphone_UIControl.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIControl.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIControl.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIControl.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControl.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIControl = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UIControl);
    __TIB_org_xmlvm_iphone_UIControl.clazz = __CLASS_org_xmlvm_iphone_UIControl;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIControl(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControl()
{
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    org_xmlvm_iphone_UIControl* me = (org_xmlvm_iphone_UIControl*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControl));
    me->tib = &__TIB_org_xmlvm_iphone_UIControl;
    me->fields.org_xmlvm_iphone_UIControl.delegates_ = (java_util_Map*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControl]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControl()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIControl();
    org_xmlvm_iphone_UIControl___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIControl___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_addTarget___org_xmlvm_iphone_UIControlDelegate_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

