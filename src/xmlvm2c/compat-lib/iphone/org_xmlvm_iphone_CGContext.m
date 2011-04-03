#include "xmlvm.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CGImage.h"
#include "org_xmlvm_iphone_CGFont.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_CGContext.h"

#define XMLVM_CURRENT_CLASS_NAME CGContext
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGContext

__TIB_DEFINITION_org_xmlvm_iphone_CGContext __TIB_org_xmlvm_iphone_CGContext = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_CGContext, // classInitializer
    "org.xmlvm.iphone.CGContext", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CGContext), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGContext_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
#import <CoreGraphics/CoreGraphics.h>
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible;
static JAVA_INT _STATIC_org_xmlvm_iphone_CGContext_kCGTextFill;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"kCGTextInvisible",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible,
    "",
    JAVA_NULL},
    {"kCGTextFill",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_CGContext_kCGTextFill,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGContext();
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
    &__CLASS_float_1ARRAY,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_float_1ARRAY,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGFont,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_float_1ARRAY,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
};

static JAVA_OBJECT* __method20_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
    &__CLASS_org_xmlvm_iphone_CGImage,
};

static JAVA_OBJECT* __method22_arg_types[] = {
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method24_arg_types[] = {
    &__CLASS_float,
    &__CLASS_float,
};

static JAVA_OBJECT* __method25_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method26_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method27_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"setFillColor",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"fillRect",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"clipToRect",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setStrokeColor",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"translate",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"rotate",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"scale",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"strokeRect",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"fillEllipseInRect",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setAlpha",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setFont",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setFontSize",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShouldAntialias",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setShadowWithColor",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"showTextAtPoint",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"showText",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"storeState",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"restoreState",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getClip",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getTextPosition",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setTextDrawingMode",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"drawImage",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"beginPath",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"moveToPoint",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"addLineToPoint",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"drawPath",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setLineCap",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"strokePath",
    &__method27_arg_types[0],
    sizeof(__method27_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_CGContext_setFillColor___float_1ARRAY(receiver, argsArray[0]);
        break;
    case 1:
        org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_CGContext_setStrokeColor___float_1ARRAY(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_CGContext_translate___float_float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 5:
        org_xmlvm_iphone_CGContext_rotate___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 6:
        org_xmlvm_iphone_CGContext_scale___float_float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 7:
        org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 9:
        org_xmlvm_iphone_CGContext_setAlpha___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 10:
        org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont(receiver, argsArray[0]);
        break;
    case 11:
        org_xmlvm_iphone_CGContext_setFontSize___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 12:
        org_xmlvm_iphone_CGContext_setShouldAntialias___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 13:
        org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_1ARRAY(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[2])->fields.java_lang_Float.value_, argsArray[3]);
        break;
    case 14:
        org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, argsArray[2]);
        break;
    case 15:
        org_xmlvm_iphone_CGContext_showText___java_lang_String(receiver, argsArray[0]);
        break;
    case 16:
        org_xmlvm_iphone_CGContext_storeState__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_CGContext_restoreState__(receiver);
        break;
    case 18:
        org_xmlvm_iphone_CGContext_getClip__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_CGContext_getTextPosition__(receiver);
        break;
    case 20:
        org_xmlvm_iphone_CGContext_setTextDrawingMode___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 21:
        org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage(receiver, argsArray[0], argsArray[1]);
        break;
    case 22:
        org_xmlvm_iphone_CGContext_beginPath__(receiver);
        break;
    case 23:
        org_xmlvm_iphone_CGContext_moveToPoint___float_float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 24:
        org_xmlvm_iphone_CGContext_addLineToPoint___float_float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_, ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 25:
        org_xmlvm_iphone_CGContext_drawPath___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 26:
        org_xmlvm_iphone_CGContext_setLineCap___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 27:
        org_xmlvm_iphone_CGContext_strokePath__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGContext()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_CGContext);
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_CGContext();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_CGContext);
}

void __INIT_IMPL_org_xmlvm_iphone_CGContext()
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_CGContext.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_CGContext.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGContext;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGContext.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_CGContext.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setFillColor___float_1ARRAY;
        __TIB_org_xmlvm_iphone_CGContext.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect;
        __TIB_org_xmlvm_iphone_CGContext.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect;
        __TIB_org_xmlvm_iphone_CGContext.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setStrokeColor___float_1ARRAY;
        __TIB_org_xmlvm_iphone_CGContext.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_translate___float_float;
        __TIB_org_xmlvm_iphone_CGContext.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_rotate___float;
        __TIB_org_xmlvm_iphone_CGContext.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_scale___float_float;
        __TIB_org_xmlvm_iphone_CGContext.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect;
        __TIB_org_xmlvm_iphone_CGContext.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect;
        __TIB_org_xmlvm_iphone_CGContext.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setAlpha___float;
        __TIB_org_xmlvm_iphone_CGContext.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont;
        __TIB_org_xmlvm_iphone_CGContext.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setFontSize___float;
        __TIB_org_xmlvm_iphone_CGContext.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setShouldAntialias___boolean;
        __TIB_org_xmlvm_iphone_CGContext.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_1ARRAY;
        __TIB_org_xmlvm_iphone_CGContext.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String;
        __TIB_org_xmlvm_iphone_CGContext.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_showText___java_lang_String;
        __TIB_org_xmlvm_iphone_CGContext.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_storeState__;
        __TIB_org_xmlvm_iphone_CGContext.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_restoreState__;
        __TIB_org_xmlvm_iphone_CGContext.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_getClip__;
        __TIB_org_xmlvm_iphone_CGContext.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_getTextPosition__;
        __TIB_org_xmlvm_iphone_CGContext.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setTextDrawingMode___int;
        __TIB_org_xmlvm_iphone_CGContext.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage;
        __TIB_org_xmlvm_iphone_CGContext.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_beginPath__;
        __TIB_org_xmlvm_iphone_CGContext.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_moveToPoint___float_float;
        __TIB_org_xmlvm_iphone_CGContext.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_addLineToPoint___float_float;
        __TIB_org_xmlvm_iphone_CGContext.vtable[34] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_drawPath___int;
        __TIB_org_xmlvm_iphone_CGContext.vtable[35] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_setLineCap___int;
        __TIB_org_xmlvm_iphone_CGContext.vtable[36] = (VTABLE_PTR) &org_xmlvm_iphone_CGContext_strokePath__;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_CGContext.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_CGContext.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces
        _STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible = 1;
        _STATIC_org_xmlvm_iphone_CGContext_kCGTextFill = 2;

        __TIB_org_xmlvm_iphone_CGContext.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGContext.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_CGContext.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_CGContext.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGContext.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_CGContext.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_CGContext.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_CGContext.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_CGContext = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGContext);
        __TIB_org_xmlvm_iphone_CGContext.clazz = __CLASS_org_xmlvm_iphone_CGContext;
        __CLASS_org_xmlvm_iphone_CGContext_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGContext, 3);
        __CLASS_org_xmlvm_iphone_CGContext_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGContext, 2);
        __CLASS_org_xmlvm_iphone_CGContext_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGContext, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGContext]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_CGContext.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_CGContext(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGContext]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGContext(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGContext()
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    org_xmlvm_iphone_CGContext* me = (org_xmlvm_iphone_CGContext*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGContext));
    me->tib = &__TIB_org_xmlvm_iphone_CGContext;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGContext(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGContext]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGContext()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_CGContext_GET_kCGTextInvisible()
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    return _STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible;
}

void org_xmlvm_iphone_CGContext_PUT_kCGTextInvisible(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    _STATIC_org_xmlvm_iphone_CGContext_kCGTextInvisible = v;
}

JAVA_INT org_xmlvm_iphone_CGContext_GET_kCGTextFill()
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    return _STATIC_org_xmlvm_iphone_CGContext_kCGTextFill;
}

void org_xmlvm_iphone_CGContext_PUT_kCGTextFill(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_CGContext.classInitialized) __INIT_org_xmlvm_iphone_CGContext();
    _STATIC_org_xmlvm_iphone_CGContext_kCGTextFill = v;
}

void org_xmlvm_iphone_CGContext_setFillColor___float_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setFillColor___float_1ARRAY]
    org_xmlvm_iphone_CGContext *thiz = me;
    CGContextRef c = thiz->fields.org_xmlvm_iphone_CGContext.ocContext;
    org_xmlvm_runtime_XMLVMArray* a = n1;
    CGContextSetFillColor(c, (JAVA_ARRAY_FLOAT*) a->fields.org_xmlvm_runtime_XMLVMArray.array_);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_fillRect___org_xmlvm_iphone_CGRect]
	org_xmlvm_iphone_CGContext *thiz = me;
	CGContextRef *c = thiz->fields.org_xmlvm_iphone_CGContext.ocContext;
	CGContextFillRect(c, toCGRect(n1));
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_clipToRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setStrokeColor___float_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setStrokeColor___float_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_translate___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_translate___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_rotate___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_rotate___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_scale___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_scale___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_strokeRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_fillEllipseInRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setAlpha___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setFont___org_xmlvm_iphone_CGFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setFontSize___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setFontSize___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setShouldAntialias___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setShouldAntialias___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_1ARRAY(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_FLOAT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setShadowWithColor___float_float_float_float_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_showTextAtPoint___float_float_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_showText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_showText___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_storeState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_storeState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_restoreState__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_restoreState__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGContext_getClip__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_getClip__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGContext_getTextPosition__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_getTextPosition__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setTextDrawingMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setTextDrawingMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_drawImage___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGImage]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_beginPath__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_beginPath__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_moveToPoint___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_moveToPoint___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_addLineToPoint___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_addLineToPoint___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_drawPath___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_drawPath___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_setLineCap___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_setLineCap___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGContext_strokePath__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGContext_strokePath__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

