
#include "org_xmlvm_iphone_UIColor.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIColor __TIB_org_xmlvm_iphone_UIColor = {
    0, // classInitialized
    "org.xmlvm.iphone.UIColor", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIColor;
//TODO _ARRAYTYPE not initialized
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIColor_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIKit.h>
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_blackColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_darkGrayColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_lightGrayColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_whiteColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_grayColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_redColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_greenColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_blueColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_cyanColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_yellowColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_magentaColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_orangeColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_purpleColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_brownColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_clearColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_lightTextColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_darkTextColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_groupTableViewBackgroundColor;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIColor_viewFlipsideBackgroundColor;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"blackColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_blackColor,
    "",
    JAVA_NULL},
    {"darkGrayColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_darkGrayColor,
    "",
    JAVA_NULL},
    {"lightGrayColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_lightGrayColor,
    "",
    JAVA_NULL},
    {"whiteColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_whiteColor,
    "",
    JAVA_NULL},
    {"grayColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_grayColor,
    "",
    JAVA_NULL},
    {"redColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_redColor,
    "",
    JAVA_NULL},
    {"greenColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_greenColor,
    "",
    JAVA_NULL},
    {"blueColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_blueColor,
    "",
    JAVA_NULL},
    {"cyanColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_cyanColor,
    "",
    JAVA_NULL},
    {"yellowColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_yellowColor,
    "",
    JAVA_NULL},
    {"magentaColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_magentaColor,
    "",
    JAVA_NULL},
    {"orangeColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_orangeColor,
    "",
    JAVA_NULL},
    {"purpleColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_purpleColor,
    "",
    JAVA_NULL},
    {"brownColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_brownColor,
    "",
    JAVA_NULL},
    {"clearColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_clearColor,
    "",
    JAVA_NULL},
    {"lightTextColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_lightTextColor,
    "",
    JAVA_NULL},
    {"darkTextColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_darkTextColor,
    "",
    JAVA_NULL},
    {"groupTableViewBackgroundColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_groupTableViewBackgroundColor,
    "",
    JAVA_NULL},
    {"viewFlipsideBackgroundColor",
    &__CLASS_org_xmlvm_iphone_UIColor,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIColor_viewFlipsideBackgroundColor,
    "",
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UIColor()
{
    __TIB_org_xmlvm_iphone_UIColor.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIColor.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIColor;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIColor.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIColor.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIColor.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_org_xmlvm_iphone_UIColor_blackColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_darkGrayColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_lightGrayColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_whiteColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_grayColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_redColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_greenColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_blueColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_cyanColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_yellowColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_magentaColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_orangeColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_purpleColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_brownColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_clearColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_lightTextColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_darkTextColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_groupTableViewBackgroundColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;
    _STATIC_org_xmlvm_iphone_UIColor_viewFlipsideBackgroundColor = (org_xmlvm_iphone_UIColor*) JAVA_NULL;

    __TIB_org_xmlvm_iphone_UIColor.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIColor.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIColor = __NEW_XMLVMClass(&__TIB_org_xmlvm_iphone_UIColor);
    __TIB_org_xmlvm_iphone_UIColor.clazz = __CLASS_org_xmlvm_iphone_UIColor;
    org_xmlvm_iphone_UIColor___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIColor]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIColor(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIColor]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    org_xmlvm_iphone_UIColor* me = (org_xmlvm_iphone_UIColor*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIColor));
    me->tib = &__TIB_org_xmlvm_iphone_UIColor;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIColor]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIColor()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_blackColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_blackColor;
}

void org_xmlvm_iphone_UIColor_PUT_blackColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_blackColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_darkGrayColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_darkGrayColor;
}

void org_xmlvm_iphone_UIColor_PUT_darkGrayColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_darkGrayColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_lightGrayColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_lightGrayColor;
}

void org_xmlvm_iphone_UIColor_PUT_lightGrayColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_lightGrayColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_whiteColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_whiteColor;
}

void org_xmlvm_iphone_UIColor_PUT_whiteColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_whiteColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_grayColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_grayColor;
}

void org_xmlvm_iphone_UIColor_PUT_grayColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_grayColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_redColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_redColor;
}

void org_xmlvm_iphone_UIColor_PUT_redColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_redColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_greenColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_greenColor;
}

void org_xmlvm_iphone_UIColor_PUT_greenColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_greenColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_blueColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_blueColor;
}

void org_xmlvm_iphone_UIColor_PUT_blueColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_blueColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_cyanColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_cyanColor;
}

void org_xmlvm_iphone_UIColor_PUT_cyanColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_cyanColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_yellowColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_yellowColor;
}

void org_xmlvm_iphone_UIColor_PUT_yellowColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_yellowColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_magentaColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_magentaColor;
}

void org_xmlvm_iphone_UIColor_PUT_magentaColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_magentaColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_orangeColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_orangeColor;
}

void org_xmlvm_iphone_UIColor_PUT_orangeColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_orangeColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_purpleColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_purpleColor;
}

void org_xmlvm_iphone_UIColor_PUT_purpleColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_purpleColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_brownColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_brownColor;
}

void org_xmlvm_iphone_UIColor_PUT_brownColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_brownColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_clearColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_clearColor;
}

void org_xmlvm_iphone_UIColor_PUT_clearColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_clearColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_lightTextColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_lightTextColor;
}

void org_xmlvm_iphone_UIColor_PUT_lightTextColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_lightTextColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_darkTextColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_darkTextColor;
}

void org_xmlvm_iphone_UIColor_PUT_darkTextColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_darkTextColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_groupTableViewBackgroundColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_groupTableViewBackgroundColor;
}

void org_xmlvm_iphone_UIColor_PUT_groupTableViewBackgroundColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_groupTableViewBackgroundColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_GET_viewFlipsideBackgroundColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    return _STATIC_org_xmlvm_iphone_UIColor_viewFlipsideBackgroundColor;
}

void org_xmlvm_iphone_UIColor_PUT_viewFlipsideBackgroundColor(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    _STATIC_org_xmlvm_iphone_UIColor_viewFlipsideBackgroundColor = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_colorWithWhiteAlpha___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIColor_colorWithWhiteAlpha___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_colorWithHSBA___float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIColor_colorWithHSBA___float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_colorWithRGBA___float_float_float_float(JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_FLOAT n4)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIColor_colorWithRGBA___float_float_float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_colorWithPatternImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIColor_colorWithPatternImage___org_xmlvm_iphone_UIImage]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIColor___CLINIT_()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIColor___CLINIT___]
	JAVA_OBJECT color;
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor blackColor];
	org_xmlvm_iphone_UIColor_PUT_blackColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor darkGrayColor];
	org_xmlvm_iphone_UIColor_PUT_darkGrayColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor lightGrayColor];
	org_xmlvm_iphone_UIColor_PUT_lightGrayColor(color);

	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor whiteColor];
	org_xmlvm_iphone_UIColor_PUT_whiteColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor grayColor];
	org_xmlvm_iphone_UIColor_PUT_grayColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor redColor];
	org_xmlvm_iphone_UIColor_PUT_redColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor greenColor];
	org_xmlvm_iphone_UIColor_PUT_greenColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor blueColor];
	org_xmlvm_iphone_UIColor_PUT_blueColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor cyanColor];
	org_xmlvm_iphone_UIColor_PUT_cyanColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor yellowColor];
	org_xmlvm_iphone_UIColor_PUT_yellowColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor magentaColor];
	org_xmlvm_iphone_UIColor_PUT_magentaColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor orangeColor];
	org_xmlvm_iphone_UIColor_PUT_orangeColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor purpleColor];
	org_xmlvm_iphone_UIColor_PUT_purpleColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor brownColor];
	org_xmlvm_iphone_UIColor_PUT_brownColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor clearColor];
	org_xmlvm_iphone_UIColor_PUT_clearColor(color);

	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor lightTextColor];
	org_xmlvm_iphone_UIColor_PUT_lightTextColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor darkTextColor];
	org_xmlvm_iphone_UIColor_PUT_darkTextColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor groupTableViewBackgroundColor];
	org_xmlvm_iphone_UIColor_PUT_groupTableViewBackgroundColor(color);
	
	color = __NEW_org_xmlvm_iphone_UIColor();
	org_xmlvm_iphone_NSObject___INIT___(color);
	((org_xmlvm_iphone_UIColor*) color)->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj = [UIColor viewFlipsideBackgroundColor];
	org_xmlvm_iphone_UIColor_PUT_viewFlipsideBackgroundColor(color);
    //XMLVM_END_WRAPPER
}

