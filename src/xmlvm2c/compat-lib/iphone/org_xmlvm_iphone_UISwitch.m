#include "xmlvm.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_UISwitch.h"

__TIB_DEFINITION_org_xmlvm_iphone_UISwitch __TIB_org_xmlvm_iphone_UISwitch = {
    0, // classInitialized
    "org.xmlvm.iphone.UISwitch", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISwitch_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_FLOAT _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth;
static JAVA_FLOAT _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kSwitchButtonWidth",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth,
    "",
    JAVA_NULL},
    {"kSwitchButtonHeight",
    &__CLASS_float,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight,
    "",
    JAVA_NULL},
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UISwitch();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UISwitch___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_UISwitch()
{
    __TIB_org_xmlvm_iphone_UISwitch.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __TIB_org_xmlvm_iphone_UISwitch.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISwitch;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISwitch.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UISwitch.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_setOn___boolean;
    __TIB_org_xmlvm_iphone_UISwitch.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_isOn__;
    __TIB_org_xmlvm_iphone_UISwitch.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect;
    __TIB_org_xmlvm_iphone_UISwitch.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UISwitch.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISwitch.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth = 94.0;
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight = 27.0;

    __TIB_org_xmlvm_iphone_UISwitch.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISwitch.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UISwitch.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UISwitch.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISwitch.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UISwitch = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UISwitch);
    __TIB_org_xmlvm_iphone_UISwitch.clazz = __CLASS_org_xmlvm_iphone_UISwitch;
    __CLASS_org_xmlvm_iphone_UISwitch_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UISwitch, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UISwitch(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISwitch()
{
    if (!__TIB_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    org_xmlvm_iphone_UISwitch* me = (org_xmlvm_iphone_UISwitch*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISwitch));
    me->tib = &__TIB_org_xmlvm_iphone_UISwitch;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISwitch]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISwitch()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISwitch();
    org_xmlvm_iphone_UISwitch___INIT___(me);
    return me;
}

JAVA_FLOAT org_xmlvm_iphone_UISwitch_GET_kSwitchButtonWidth()
{
    if (!__TIB_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    return _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth;
}

void org_xmlvm_iphone_UISwitch_PUT_kSwitchButtonWidth(JAVA_FLOAT v)
{
    if (!__TIB_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonWidth = v;
}

JAVA_FLOAT org_xmlvm_iphone_UISwitch_GET_kSwitchButtonHeight()
{
    if (!__TIB_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    return _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight;
}

void org_xmlvm_iphone_UISwitch_PUT_kSwitchButtonHeight(JAVA_FLOAT v)
{
    if (!__TIB_org_xmlvm_iphone_UISwitch.classInitialized) __INIT_org_xmlvm_iphone_UISwitch();
    _STATIC_org_xmlvm_iphone_UISwitch_kSwitchButtonHeight = v;
}

void org_xmlvm_iphone_UISwitch___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_setOn___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_setOn___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISwitch_isOn__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_isOn__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_setFrame___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISwitch_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

