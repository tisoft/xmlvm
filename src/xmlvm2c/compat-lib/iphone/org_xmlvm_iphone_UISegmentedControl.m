#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UISegmentedControl.h"

__TIB_DEFINITION_org_xmlvm_iphone_UISegmentedControl __TIB_org_xmlvm_iphone_UISegmentedControl = {
    0, // classInitialized
    "org.xmlvm.iphone.UISegmentedControl", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISegmentedControl;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISegmentedControl_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UISegmentedControl()
{
    __TIB_org_xmlvm_iphone_UISegmentedControl.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __TIB_org_xmlvm_iphone_UISegmentedControl.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISegmentedControl;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UISegmentedControl.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setTitle___java_lang_String_int;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_getTitleForSegmentAtIndex___int;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_insertSegmentWithTitle___java_lang_String_int_boolean;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_insertSegmentWithImage___org_xmlvm_iphone_UIImage_int_boolean;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_numberOfSegments__;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_removeAllSegments__;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_removeSegmentAtIndex___int_boolean;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_getSelectedSegmentIndex__;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setSelectedSegmentIndex___int;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_getSegmentedControlStyle__;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setSegmentedControlStyle___int;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_getTintColor__;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setTintColor___org_xmlvm_iphone_UIColor;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_isMomentary__;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setMomentary___boolean;
    __TIB_org_xmlvm_iphone_UISegmentedControl.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UISegmentedControl.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UISegmentedControl.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UISegmentedControl.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UISegmentedControl.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UISegmentedControl = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UISegmentedControl);
    __TIB_org_xmlvm_iphone_UISegmentedControl.clazz = __CLASS_org_xmlvm_iphone_UISegmentedControl;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISegmentedControl]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UISegmentedControl(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISegmentedControl]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISegmentedControl()
{
    if (!__TIB_org_xmlvm_iphone_UISegmentedControl.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControl();
    org_xmlvm_iphone_UISegmentedControl* me = (org_xmlvm_iphone_UISegmentedControl*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISegmentedControl));
    me->tib = &__TIB_org_xmlvm_iphone_UISegmentedControl;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISegmentedControl]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISegmentedControl()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UISegmentedControl();
    org_xmlvm_iphone_UISegmentedControl___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UISegmentedControl___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl___INIT____java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl___INIT____java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_setTitle___java_lang_String_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_setTitle___java_lang_String_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISegmentedControl_getTitleForSegmentAtIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_getTitleForSegmentAtIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_insertSegmentWithTitle___java_lang_String_int_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_insertSegmentWithTitle___java_lang_String_int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_insertSegmentWithImage___org_xmlvm_iphone_UIImage_int_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_insertSegmentWithImage___org_xmlvm_iphone_UIImage_int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISegmentedControl_numberOfSegments__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_numberOfSegments__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_removeAllSegments__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_removeAllSegments__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_removeSegmentAtIndex___int_boolean(JAVA_OBJECT me, JAVA_INT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_removeSegmentAtIndex___int_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISegmentedControl_getSelectedSegmentIndex__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_getSelectedSegmentIndex__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_setSelectedSegmentIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_setSelectedSegmentIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UISegmentedControl_getSegmentedControlStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_getSegmentedControlStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_setSegmentedControlStyle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_setSegmentedControlStyle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UISegmentedControl_getTintColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_getTintColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_setTintColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UISegmentedControl_isMomentary__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_isMomentary__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_setMomentary___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_setMomentary___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UISegmentedControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UISegmentedControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

