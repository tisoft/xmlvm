#include "xmlvm.h"
#include "org_xmlvm_iphone_UIImage.h"

#include "org_xmlvm_iphone_UIColor.h"

#define XMLVM_CURRENT_CLASS_NAME UIColor
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIColor

__TIB_DEFINITION_org_xmlvm_iphone_UIColor __TIB_org_xmlvm_iphone_UIColor = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIColor, // classInitializer
    "org.xmlvm.iphone.UIColor", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIColor), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIColor;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIColor_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIColor_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIColor_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIKit.h>


void org_xmlvm_iphone_UIColor_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    NSString* name = NSStringFromClass([obj class]);
    
    if (([obj class] == [UIColor class]) || ([name isEqual:@"UIDeviceRGBColor"])) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_UIColor();
        org_xmlvm_iphone_UIColor_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

static JAVA_OBJECT xmlvm_create_color_object(NSObject* color)
{
    JAVA_OBJECT jcolor = xmlvm_get_associated_c_object_if_present(color);
    if (jcolor != JAVA_NULL) {
        return jcolor;
    }
    jcolor = __NEW_org_xmlvm_iphone_UIColor();
    org_xmlvm_iphone_UIColor_INTERNAL_CONSTRUCTOR(jcolor, [color retain]);
    return jcolor;
}

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

#include "xmlvm-reflection.h"

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

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIColor();
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
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIImage,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"colorWithWhiteAlpha",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(FF)Lorg/xmlvm/iphone/UIColor;",
    JAVA_NULL,
    JAVA_NULL},
    {"colorWithHSBA",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(FFFF)Lorg/xmlvm/iphone/UIColor;",
    JAVA_NULL,
    JAVA_NULL},
    {"colorWithRGBA",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(FFFF)Lorg/xmlvm/iphone/UIColor;",
    JAVA_NULL,
    JAVA_NULL},
    {"colorWithPatternImage",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIImage;)Lorg/xmlvm/iphone/UIColor;",
    JAVA_NULL,
    JAVA_NULL},
    {"set",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIColor_colorWithWhiteAlpha___float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIColor_colorWithHSBA___float_float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIColor_colorWithRGBA___float_float_float_float(((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[3])->fields.java_lang_Float.value_);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIColor_colorWithPatternImage___org_xmlvm_iphone_UIImage(argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_UIColor_set__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIColor()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIColor);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIColor.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIColor.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIColor);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIColor.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIColor.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIColor();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIColor()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIColor.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIColor;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIColor.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIColor.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIColor.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
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
    __TIB_org_xmlvm_iphone_UIColor.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIColor.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIColor.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIColor.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIColor.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIColor.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIColor = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIColor);
    __TIB_org_xmlvm_iphone_UIColor.clazz = __CLASS_org_xmlvm_iphone_UIColor;
    __TIB_org_xmlvm_iphone_UIColor.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIColor_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIColor);
    __CLASS_org_xmlvm_iphone_UIColor_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIColor_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIColor_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIColor_2ARRAY);
    org_xmlvm_iphone_UIColor___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIColor]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIColor.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIColor(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIColor]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIColor(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIColor]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIColor()
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    org_xmlvm_iphone_UIColor* me = (org_xmlvm_iphone_UIColor*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIColor));
    me->tib = &__TIB_org_xmlvm_iphone_UIColor;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIColor(me, 0);
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
    UIColor* obj = [[UIColor alloc] initWithRed:n1 green:n2 blue:n3 alpha:n4];
    JAVA_OBJECT color = xmlvm_get_associated_c_object(obj);
    [obj release];
    return color;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIColor_colorWithPatternImage___org_xmlvm_iphone_UIImage(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_UIColor.classInitialized) __INIT_org_xmlvm_iphone_UIColor();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIColor_colorWithPatternImage___org_xmlvm_iphone_UIImage]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIColor_set__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIColor_set__]
    XMLVM_VAR_THIZ;
    [thiz set];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIColor___CLINIT_()
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIColor___CLINIT___]
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	JAVA_OBJECT color;
    
	color = xmlvm_create_color_object([UIColor blackColor]);
	org_xmlvm_iphone_UIColor_PUT_blackColor(color);
	
	color = xmlvm_create_color_object([UIColor darkGrayColor]);
	org_xmlvm_iphone_UIColor_PUT_darkGrayColor(color);
	
	color = xmlvm_create_color_object([UIColor lightGrayColor]);
	org_xmlvm_iphone_UIColor_PUT_lightGrayColor(color);

	color = xmlvm_create_color_object([UIColor whiteColor]);
	org_xmlvm_iphone_UIColor_PUT_whiteColor(color);
	
	color = xmlvm_create_color_object([UIColor grayColor]);
	org_xmlvm_iphone_UIColor_PUT_grayColor(color);
	
	color = xmlvm_create_color_object([UIColor redColor]);
	org_xmlvm_iphone_UIColor_PUT_redColor(color);
	
	color = xmlvm_create_color_object([UIColor greenColor]);
	org_xmlvm_iphone_UIColor_PUT_greenColor(color);
	
	color = xmlvm_create_color_object([UIColor blueColor]);
	org_xmlvm_iphone_UIColor_PUT_blueColor(color);
	
	color = xmlvm_create_color_object([UIColor cyanColor]);
	org_xmlvm_iphone_UIColor_PUT_cyanColor(color);
	
	color =xmlvm_create_color_object([UIColor yellowColor]);
	org_xmlvm_iphone_UIColor_PUT_yellowColor(color);
	
	color = xmlvm_create_color_object([UIColor magentaColor]);
	org_xmlvm_iphone_UIColor_PUT_magentaColor(color);
	
	color = xmlvm_create_color_object([UIColor orangeColor]);
	org_xmlvm_iphone_UIColor_PUT_orangeColor(color);
	
	color = xmlvm_create_color_object([UIColor purpleColor]);
	org_xmlvm_iphone_UIColor_PUT_purpleColor(color);
	
	color = xmlvm_create_color_object([UIColor brownColor]);
	org_xmlvm_iphone_UIColor_PUT_brownColor(color);
	
	color = xmlvm_create_color_object([UIColor clearColor]);
	org_xmlvm_iphone_UIColor_PUT_clearColor(color);

	color = xmlvm_create_color_object([UIColor lightTextColor]);
	org_xmlvm_iphone_UIColor_PUT_lightTextColor(color);
	
	color = xmlvm_create_color_object([UIColor darkTextColor]);
	org_xmlvm_iphone_UIColor_PUT_darkTextColor(color);
	
	color = xmlvm_create_color_object([UIColor groupTableViewBackgroundColor]);
	org_xmlvm_iphone_UIColor_PUT_groupTableViewBackgroundColor(color);
	
	color = xmlvm_create_color_object([UIColor viewFlipsideBackgroundColor]);
	org_xmlvm_iphone_UIColor_PUT_viewFlipsideBackgroundColor(color);
    
    [pool release];
    //XMLVM_END_WRAPPER
}

