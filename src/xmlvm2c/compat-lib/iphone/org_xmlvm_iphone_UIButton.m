#include "org_xmlvm_iphone_UIImage.h"
#include "org_xmlvm_iphone_UIFont.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIButton.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIButton __TIB_org_xmlvm_iphone_UIButton = {
    0, // classInitialized
    "org.xmlvm.iphone.UIButton", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButton;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButton_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIKit.h>
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UIButton()
{
    __TIB_org_xmlvm_iphone_UIButton.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_org_xmlvm_iphone_UIControl();
    __TIB_org_xmlvm_iphone_UIButton.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIButton;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIButton.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIButton.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setFont___org_xmlvm_iphone_UIFont;
    __TIB_org_xmlvm_iphone_UIButton.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getFont__;
    __TIB_org_xmlvm_iphone_UIButton.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getButtonType__;
    __TIB_org_xmlvm_iphone_UIButton.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setTitle___java_lang_String_int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_titleForState___int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentTitle__;
    __TIB_org_xmlvm_iphone_UIButton.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setTitleColor___org_xmlvm_iphone_UIColor_int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_titleColorForState___int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentTitleColor__;
    __TIB_org_xmlvm_iphone_UIButton.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setTitleShadowColor___org_xmlvm_iphone_UIColor_int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_titleShadowColorForState___int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentTitleShadowColor__;
    __TIB_org_xmlvm_iphone_UIButton.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setImage___org_xmlvm_iphone_UIImage_int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_imageForState___int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentImage__;
    __TIB_org_xmlvm_iphone_UIButton.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setBackgroundImage___org_xmlvm_iphone_UIImage_int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_backgroundImageForState___int;
    __TIB_org_xmlvm_iphone_UIButton.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentBackgroundImage__;
    __TIB_org_xmlvm_iphone_UIButton.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setTitleShadowOffset___org_xmlvm_iphone_CGSize;
    __TIB_org_xmlvm_iphone_UIButton.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getTitleShadowOffset__;
    __TIB_org_xmlvm_iphone_UIButton.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIButton.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
    __TIB_org_xmlvm_iphone_UIButton.vtable[45] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setAlpha___float;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIButton.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIButton.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIButton.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIButton.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIButton = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UIButton);
    __TIB_org_xmlvm_iphone_UIButton.clazz = __CLASS_org_xmlvm_iphone_UIButton;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIButton]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIButton(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIButton]
	org_xmlvm_iphone_UIButton *thiz = me;
	[((UIButton*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIButton()
{
    if (!__TIB_org_xmlvm_iphone_UIButton.classInitialized) __INIT_org_xmlvm_iphone_UIButton();
    org_xmlvm_iphone_UIButton* me = (org_xmlvm_iphone_UIButton*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIButton));
    me->tib = &__TIB_org_xmlvm_iphone_UIButton;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIButton]
	XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIButton);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIButton()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_buttonWithType___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIButton.classInitialized) __INIT_org_xmlvm_iphone_UIButton();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_buttonWithType___int]
	NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];
	UIButton* objcBtn = [UIButton buttonWithType: (UIButtonType) n1];
	[objcBtn retain];
	[p release];
	
	JAVA_OBJECT b = __NEW_org_xmlvm_iphone_UIButton();
	org_xmlvm_iphone_NSObject___INIT___(b);
	((org_xmlvm_iphone_UIButton*) b)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = objcBtn;
	return b;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_setFont___org_xmlvm_iphone_UIFont(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_setFont___org_xmlvm_iphone_UIFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_getFont__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_getFont__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIButton_getButtonType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_getButtonType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_setTitle___java_lang_String_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_setTitle___java_lang_String_int]
	UIButton* button = (UIButton*) ((org_xmlvm_iphone_UIButton*) me)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
	NSString* title = toNSString(n1);
	[button setTitle: title forState: n2];
	[title release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_titleForState___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_titleForState___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentTitle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_getCurrentTitle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_setTitleColor___org_xmlvm_iphone_UIColor_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_setTitleColor___org_xmlvm_iphone_UIColor_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_titleColorForState___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_titleColorForState___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentTitleColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_getCurrentTitleColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_setTitleShadowColor___org_xmlvm_iphone_UIColor_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_setTitleShadowColor___org_xmlvm_iphone_UIColor_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_titleShadowColorForState___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_titleShadowColorForState___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentTitleShadowColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_getCurrentTitleShadowColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_setImage___org_xmlvm_iphone_UIImage_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_setImage___org_xmlvm_iphone_UIImage_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_imageForState___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_imageForState___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentImage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_getCurrentImage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_setBackgroundImage___org_xmlvm_iphone_UIImage_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_setBackgroundImage___org_xmlvm_iphone_UIImage_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_backgroundImageForState___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_backgroundImageForState___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_getCurrentBackgroundImage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_getCurrentBackgroundImage__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_setTitleShadowOffset___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_setTitleShadowOffset___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIButton_getTitleShadowOffset__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_getTitleShadowOffset__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIButton_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIButton_setAlpha___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

