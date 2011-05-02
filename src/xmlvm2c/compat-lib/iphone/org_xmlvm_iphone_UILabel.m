#include "xmlvm.h"
#include "org_xmlvm_iphone_UIFont.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UILabel.h"

#define XMLVM_CURRENT_CLASS_NAME UILabel
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UILabel

__TIB_DEFINITION_org_xmlvm_iphone_UILabel __TIB_org_xmlvm_iphone_UILabel = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UILabel, // classInitializer
    "org.xmlvm.iphone.UILabel", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    sizeof(org_xmlvm_iphone_UILabel), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILabel;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILabel_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILabel_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UILabel_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UILabel.h>
#include "org_xmlvm_iphone_NSString.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "xmlvm-util.h"
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UILabel();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UILabel___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_UILabel___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIFont,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGSize,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_boolean,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setText",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getText",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setFont",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getFont",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTextColor",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTextColor",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTextAlignment",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTextAlignment",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getLineBreakMode",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setLineBreakMode",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getNumberOfLines",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setNumberOfLines",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getShadowOffset",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShadowOffset",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getShadowColor",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShadowColor",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isAdjustsFontSizeToFitWidth",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAdjustsFontSizeToFitWidth",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UILabel_setText___java_lang_String(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_UILabel_getText__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_UILabel_setFont___org_xmlvm_iphone_UIFont(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_UILabel_getFont__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UILabel_setTextColor___org_xmlvm_iphone_UIColor(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_UILabel_getTextColor__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_UILabel_setTextAlignment___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 7:
        org_xmlvm_iphone_UILabel_getTextAlignment__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_UILabel_getLineBreakMode__(receiver);
        break;
    case 9:
        org_xmlvm_iphone_UILabel_setLineBreakMode___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 10:
        org_xmlvm_iphone_UILabel_getNumberOfLines__(receiver);
        break;
    case 11:
        org_xmlvm_iphone_UILabel_setNumberOfLines___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 12:
        org_xmlvm_iphone_UILabel_getShadowOffset__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_UILabel_setShadowOffset___org_xmlvm_iphone_CGSize(receiver, argsArray[0]);
        break;
    case 14:
        org_xmlvm_iphone_UILabel_getShadowColor__(receiver);
        break;
    case 15:
        org_xmlvm_iphone_UILabel_setShadowColor___org_xmlvm_iphone_UIColor(receiver, argsArray[0]);
        break;
    case 16:
        org_xmlvm_iphone_UILabel_isAdjustsFontSizeToFitWidth__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_UILabel_setAdjustsFontSizeToFitWidth___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UILabel()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UILabel);
    if (!__TIB_org_xmlvm_iphone_UILabel.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UILabel();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UILabel);
}

void __INIT_IMPL_org_xmlvm_iphone_UILabel()
{
    if (!__TIB_org_xmlvm_iphone_UILabel.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UILabel.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIView();
        __TIB_org_xmlvm_iphone_UILabel.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UILabel;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UILabel.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UILabel.vtable[66] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setText___java_lang_String;
        __TIB_org_xmlvm_iphone_UILabel.vtable[67] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getText__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[68] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setFont___org_xmlvm_iphone_UIFont;
        __TIB_org_xmlvm_iphone_UILabel.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getFont__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setTextColor___org_xmlvm_iphone_UIColor;
        __TIB_org_xmlvm_iphone_UILabel.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getTextColor__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setTextAlignment___int;
        __TIB_org_xmlvm_iphone_UILabel.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getTextAlignment__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getLineBreakMode__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setLineBreakMode___int;
        __TIB_org_xmlvm_iphone_UILabel.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getNumberOfLines__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setNumberOfLines___int;
        __TIB_org_xmlvm_iphone_UILabel.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getShadowOffset__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setShadowOffset___org_xmlvm_iphone_CGSize;
        __TIB_org_xmlvm_iphone_UILabel.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_getShadowColor__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setShadowColor___org_xmlvm_iphone_UIColor;
        __TIB_org_xmlvm_iphone_UILabel.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_isAdjustsFontSizeToFitWidth__;
        __TIB_org_xmlvm_iphone_UILabel.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UILabel_setAdjustsFontSizeToFitWidth___boolean;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_UILabel.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UILabel.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_UILabel.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UILabel.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UILabel.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UILabel.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UILabel.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UILabel.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UILabel.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UILabel.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UILabel = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UILabel);
        __TIB_org_xmlvm_iphone_UILabel.clazz = __CLASS_org_xmlvm_iphone_UILabel;
        __TIB_org_xmlvm_iphone_UILabel.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_UILabel_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILabel);
        __CLASS_org_xmlvm_iphone_UILabel_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILabel_1ARRAY);
        __CLASS_org_xmlvm_iphone_UILabel_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UILabel_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UILabel]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UILabel.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UILabel(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UILabel]
    __DELETE_org_xmlvm_iphone_UIView(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UILabel(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UILabel()
{
    if (!__TIB_org_xmlvm_iphone_UILabel.classInitialized) __INIT_org_xmlvm_iphone_UILabel();
    org_xmlvm_iphone_UILabel* me = (org_xmlvm_iphone_UILabel*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UILabel));
    me->tib = &__TIB_org_xmlvm_iphone_UILabel;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UILabel(me);
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
	UILabel* obj = [[UILabel alloc] init];
    org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(me, obj);
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

