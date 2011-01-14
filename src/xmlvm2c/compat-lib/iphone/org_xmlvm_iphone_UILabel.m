#include "org_xmlvm_iphone_UIFont.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UILabel.h"

__TIB_DEFINITION_org_xmlvm_iphone_UILabel __TIB_org_xmlvm_iphone_UILabel = {
    0, // classInitialized
    "org.xmlvm.iphone.UILabel", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILabel;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILabel_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UILabel.h>
#include "org_xmlvm_iphone_NSString.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "xmlvm-util.h"
//XMLVM_END_IMPLEMENTATION


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_UILabel()
{
    __TIB_org_xmlvm_iphone_UILabel.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_UILabel.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UILabel;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UILabel.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UILabel.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setText___java_lang_String;
    __TIB_org_xmlvm_iphone_UILabel.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getText__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setFont___org_xmlvm_iphone_UIFont;
    __TIB_org_xmlvm_iphone_UILabel.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getFont__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setTextColor___org_xmlvm_iphone_UIColor;
    __TIB_org_xmlvm_iphone_UILabel.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getTextColor__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setTextAlignment___int;
    __TIB_org_xmlvm_iphone_UILabel.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getTextAlignment__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getLineBreakMode__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setLineBreakMode___int;
    __TIB_org_xmlvm_iphone_UILabel.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getNumberOfLines__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setNumberOfLines___int;
    __TIB_org_xmlvm_iphone_UILabel.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getShadowOffset__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setShadowOffset___org_xmlvm_iphone_CGSize;
    __TIB_org_xmlvm_iphone_UILabel.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getShadowColor__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setShadowColor___org_xmlvm_iphone_UIColor;
    __TIB_org_xmlvm_iphone_UILabel.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_isAdjustsFontSizeToFitWidth__;
    __TIB_org_xmlvm_iphone_UILabel.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setAdjustsFontSizeToFitWidth___boolean;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UILabel.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UILabel.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UILabel.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UILabel.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UILabel = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UILabel);
    __TIB_org_xmlvm_iphone_UILabel.clazz = __CLASS_org_xmlvm_iphone_UILabel;

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UILabel]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UILabel(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UILabel]
    org_xmlvm_iphone_UILabel *thiz = me;
	[((UILabel*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UILabel()
{
    if (!__TIB_org_xmlvm_iphone_UILabel.classInitialized) __INIT_org_xmlvm_iphone_UILabel();
    org_xmlvm_iphone_UILabel* me = (org_xmlvm_iphone_UILabel*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UILabel));
    me->tib = &__TIB_org_xmlvm_iphone_UILabel;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UILabel]
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UILabel);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UILabel()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UILabel();
    org_xmlvm_iphone_UILabel___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UILabel___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel___INIT____org_xmlvm_iphone_CGRect]
	UILabel* obj = [[UILabel alloc] initWithFrame: toCGRect(n1)];
    org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setText___java_lang_String]
    NSString* nsStr = toNSString(n1);
	org_xmlvm_iphone_UILabel *thiz = me;
	UILabel* obj = thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    [obj setText:nsStr];
    [nsStr release];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILabel_getText__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_getText__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setFont___org_xmlvm_iphone_UIFont(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setFont___org_xmlvm_iphone_UIFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILabel_getFont__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_getFont__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setTextColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setTextColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILabel_getTextColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_getTextColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setTextAlignment___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setTextAlignment___int]
    org_xmlvm_iphone_UILabel* thiz = (org_xmlvm_iphone_UILabel*) me;
    UILabel* obj = thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj;
    [obj setTextAlignment:n1];
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UILabel_getTextAlignment__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_getTextAlignment__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UILabel_getLineBreakMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_getLineBreakMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setLineBreakMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setLineBreakMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UILabel_getNumberOfLines__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_getNumberOfLines__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setNumberOfLines___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setNumberOfLines___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILabel_getShadowOffset__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_getShadowOffset__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setShadowOffset___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setShadowOffset___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UILabel_getShadowColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_getShadowColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setShadowColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setShadowColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UILabel_isAdjustsFontSizeToFitWidth__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_isAdjustsFontSizeToFitWidth__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UILabel_setAdjustsFontSizeToFitWidth___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UILabel_setAdjustsFontSizeToFitWidth___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

