#include "xmlvm.h"
#include "org_xmlvm_iphone_UIImage.h"
#include "org_xmlvm_iphone_UIEvent.h"
#include "org_xmlvm_iphone_UIFont.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "java_util_Set.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIButton.h"

#define XMLVM_CURRENT_CLASS_NAME UIButton
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIButton

__TIB_DEFINITION_org_xmlvm_iphone_UIButton __TIB_org_xmlvm_iphone_UIButton = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIButton, // classInitializer
    "org.xmlvm.iphone.UIButton", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIControl, // extends
    sizeof(org_xmlvm_iphone_UIButton), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButton;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIButton_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIKit.h>
#include "org_xmlvm_iphone_NSString.h"
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIButton();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIFont,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_int,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
    &__CLASS_int,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIColor,
    &__CLASS_int,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIImage,
    &__CLASS_int,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method15_arg_types[] = {
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIImage,
    &__CLASS_int,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGSize,
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method22_arg_types[] = {
    &__CLASS_java_util_Set,
    &__CLASS_org_xmlvm_iphone_UIEvent,
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_float,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"buttonWithType",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setFont",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getFont",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getButtonType",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitle",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"titleForState",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentTitle",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitleColor",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"titleColorForState",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentTitleColor",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitleShadowColor",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"titleShadowColorForState",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentTitleShadowColor",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setImage",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"imageForState",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentImage",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setBackgroundImage",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"backgroundImageForState",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentBackgroundImage",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTitleShadowOffset",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTitleShadowOffset",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesBegan",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"touchesEnded",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAlpha",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_UIButton_buttonWithType___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_UIButton_setFont___org_xmlvm_iphone_UIFont(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_UIButton_getFont__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_UIButton_getButtonType__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_UIButton_setTitle___java_lang_String_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 5:
        org_xmlvm_iphone_UIButton_titleForState___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 6:
        org_xmlvm_iphone_UIButton_getCurrentTitle__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_UIButton_setTitleColor___org_xmlvm_iphone_UIColor_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 8:
        org_xmlvm_iphone_UIButton_titleColorForState___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 9:
        org_xmlvm_iphone_UIButton_getCurrentTitleColor__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UIButton_setTitleShadowColor___org_xmlvm_iphone_UIColor_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 11:
        org_xmlvm_iphone_UIButton_titleShadowColorForState___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 12:
        org_xmlvm_iphone_UIButton_getCurrentTitleShadowColor__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_UIButton_setImage___org_xmlvm_iphone_UIImage_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 14:
        org_xmlvm_iphone_UIButton_imageForState___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 15:
        org_xmlvm_iphone_UIButton_getCurrentImage__(receiver);
        break;
    case 16:
        org_xmlvm_iphone_UIButton_setBackgroundImage___org_xmlvm_iphone_UIImage_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 17:
        org_xmlvm_iphone_UIButton_backgroundImageForState___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 18:
        org_xmlvm_iphone_UIButton_getCurrentBackgroundImage__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_UIButton_setTitleShadowOffset___org_xmlvm_iphone_CGSize(receiver, argsArray[0]);
        break;
    case 20:
        org_xmlvm_iphone_UIButton_getTitleShadowOffset__(receiver);
        break;
    case 21:
        org_xmlvm_iphone_UIButton_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 22:
        org_xmlvm_iphone_UIButton_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent(receiver, argsArray[0], argsArray[1]);
        break;
    case 23:
        org_xmlvm_iphone_UIButton_setAlpha___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIButton()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_UIButton);
    if (!__TIB_org_xmlvm_iphone_UIButton.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_UIButton();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_UIButton);
}

void __INIT_IMPL_org_xmlvm_iphone_UIButton()
{
    if (!__TIB_org_xmlvm_iphone_UIButton.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_UIButton.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_UIControl.classInitialized) __INIT_IMPL_org_xmlvm_iphone_UIControl();
        __TIB_org_xmlvm_iphone_UIButton.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIButton;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIButton.vtable, __TIB_org_xmlvm_iphone_UIControl.vtable, sizeof(__TIB_org_xmlvm_iphone_UIControl.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_UIButton.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setFont___org_xmlvm_iphone_UIFont;
        __TIB_org_xmlvm_iphone_UIButton.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getFont__;
        __TIB_org_xmlvm_iphone_UIButton.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getButtonType__;
        __TIB_org_xmlvm_iphone_UIButton.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setTitle___java_lang_String_int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_titleForState___int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentTitle__;
        __TIB_org_xmlvm_iphone_UIButton.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setTitleColor___org_xmlvm_iphone_UIColor_int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_titleColorForState___int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentTitleColor__;
        __TIB_org_xmlvm_iphone_UIButton.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setTitleShadowColor___org_xmlvm_iphone_UIColor_int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_titleShadowColorForState___int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentTitleShadowColor__;
        __TIB_org_xmlvm_iphone_UIButton.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setImage___org_xmlvm_iphone_UIImage_int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_imageForState___int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentImage__;
        __TIB_org_xmlvm_iphone_UIButton.vtable[93] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setBackgroundImage___org_xmlvm_iphone_UIImage_int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[94] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_backgroundImageForState___int;
        __TIB_org_xmlvm_iphone_UIButton.vtable[95] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getCurrentBackgroundImage__;
        __TIB_org_xmlvm_iphone_UIButton.vtable[96] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setTitleShadowOffset___org_xmlvm_iphone_CGSize;
        __TIB_org_xmlvm_iphone_UIButton.vtable[97] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_getTitleShadowOffset__;
        __TIB_org_xmlvm_iphone_UIButton.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_touchesBegan___java_util_Set_org_xmlvm_iphone_UIEvent;
        __TIB_org_xmlvm_iphone_UIButton.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_touchesEnded___java_util_Set_org_xmlvm_iphone_UIEvent;
        __TIB_org_xmlvm_iphone_UIButton.vtable[45] = (VTABLE_PTR) &org_xmlvm_iphone_UIButton_setAlpha___float;
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_UIButton.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_UIButton.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_UIButton.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIButton.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIButton.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_UIButton.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIButton.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_UIButton.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_UIButton.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_UIButton.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_UIButton = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIButton);
        __TIB_org_xmlvm_iphone_UIButton.clazz = __CLASS_org_xmlvm_iphone_UIButton;
        __CLASS_org_xmlvm_iphone_UIButton_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIButton, 1);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIButton]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_UIButton.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_UIButton(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIButton]
    __DELETE_org_xmlvm_iphone_UIControl(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIButton(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControl(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIButton()
{
    if (!__TIB_org_xmlvm_iphone_UIButton.classInitialized) __INIT_org_xmlvm_iphone_UIButton();
    org_xmlvm_iphone_UIButton* me = (org_xmlvm_iphone_UIButton*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIButton));
    me->tib = &__TIB_org_xmlvm_iphone_UIButton;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIButton(me);
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
    org_xmlvm_iphone_UIControl_INTERNAL_CONSTRUCTOR(b, objcBtn);
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
    org_xmlvm_iphone_UIButton* thiz = me;
    UIFont* font = ((UIButton*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)).font;
    org_xmlvm_iphone_UIFont* font_ = __NEW_org_xmlvm_iphone_UIFont();
    org_xmlvm_iphone_UIFont_INTERNAL_CONSTRUCTOR(font_, font);
    return font_;
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
    XMLVM_VAR_THIZ;
    XMLVM_VAR_NSString(title, n1);
    XMLVM_VAR_INT(state, n2);
    
	[thiz setTitle:title forState:state];
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
    org_xmlvm_iphone_UIButton* thiz = me;
    org_xmlvm_iphone_UIColor* color = n1;
    [((UIButton*) (thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj)) setTitleColor:color->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj forState:n2];
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

