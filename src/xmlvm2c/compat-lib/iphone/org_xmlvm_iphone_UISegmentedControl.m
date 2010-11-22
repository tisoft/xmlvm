#include "org_xmlvm_iphone_UIImage.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "java_util_ArrayList.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UISegmentedControl.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UISegmentedControl __CLASS_org_xmlvm_iphone_UISegmentedControl = {
    0, // classInitialized
    "org.xmlvm.iphone.UISegmentedControl", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIControl, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UISegmentedControl()
{
    __CLASS_org_xmlvm_iphone_UISegmentedControl.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __CLASS_org_xmlvm_iphone_UISegmentedControl.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UISegmentedControl;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UISegmentedControl.vtable, __CLASS_org_xmlvm_iphone_UIControl.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setTitle___java_lang_String_int;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_getTitleForSegmentAtIndex___int;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_insertSegmentWithTitle___java_lang_String_int_boolean;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_insertSegmentWithImage___org_xmlvm_iphone_UIImage_int_boolean;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_numberOfSegments__;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_removeAllSegments__;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_removeSegmentAtIndex___int_boolean;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_getSelectedSegmentIndex__;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setSelectedSegmentIndex___int;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_getSegmentedControlStyle__;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setSegmentedControlStyle___int;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_getTintColor__;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setTintColor___org_xmlvm_iphone_UIColor;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_isMomentary__;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_setMomentary___boolean;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UISegmentedControl_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UISegmentedControl.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UISegmentedControl.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UISegmentedControl]
    //XMLVM_END_WRAPPER
}

GC_CALLBACK __DELETE_org_xmlvm_iphone_UISegmentedControl(void * me, void * client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UISegmentedControl]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UISegmentedControl()
{
    if (!__CLASS_org_xmlvm_iphone_UISegmentedControl.classInitialized) __INIT_org_xmlvm_iphone_UISegmentedControl();
    org_xmlvm_iphone_UISegmentedControl* me = (org_xmlvm_iphone_UISegmentedControl*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UISegmentedControl));
    me->__class = &__CLASS_org_xmlvm_iphone_UISegmentedControl;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UISegmentedControl]
    //XMLVM_END_WRAPPER
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UISegmentedControl);
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

