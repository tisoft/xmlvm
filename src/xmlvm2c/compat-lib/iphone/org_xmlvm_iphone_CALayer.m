#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_CAAction.h"
#include "org_xmlvm_iphone_CAAnimation.h"
#include "org_xmlvm_iphone_CGAffineTransform.h"
#include "org_xmlvm_iphone_CGContext.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_NSArray.h"
#include "org_xmlvm_iphone_NSDictionary.h"
#include "org_xmlvm_iphone_UIView.h"

#include "org_xmlvm_iphone_CALayer.h"

#define XMLVM_CURRENT_CLASS_NAME CALayer
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CALayer

__TIB_DEFINITION_org_xmlvm_iphone_CALayer __TIB_org_xmlvm_iphone_CALayer = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CALayer, // classInitializer
    "org.xmlvm.iphone.CALayer", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CALayer), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CALayer_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

@implementation CALayerWrapper : CALayer

- (void) drawInContext:(CGContextRef)ctx
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_drawInContext___org_xmlvm_iphone_CGContext
	// Convert the Objective-C CGContextRef to a C CGContext
    org_xmlvm_iphone_CGContext* c = __NEW_org_xmlvm_iphone_CGContext();
    org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(c, ctx);

    org_xmlvm_iphone_CALayer* jthiz = xmlvm_get_associated_c_object(self);
	// Get the function pointer to method drawInContext by accessing the vtable of the C object
	Func_VOO f = jthiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_CALayer_drawInContext___org_xmlvm_iphone_CGContext];
    f(jthiz, c);
#endif
}

@end

void org_xmlvm_iphone_CALayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [CALayer class] || [obj class] == [CALayerWrapper class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_CALayer();
        org_xmlvm_iphone_CALayer_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CALayer();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CALayer___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method15_arg_types[] = {
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method17_arg_types[] = {
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method19_arg_types[] = {
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method22_arg_types[] = {
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method24_arg_types[] = {
};

static JAVA_OBJECT* __method25_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method26_arg_types[] = {
};

static JAVA_OBJECT* __method27_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method28_arg_types[] = {
};

static JAVA_OBJECT* __method29_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method30_arg_types[] = {
};

static JAVA_OBJECT* __method31_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method32_arg_types[] = {
};

static JAVA_OBJECT* __method33_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method34_arg_types[] = {
};

static JAVA_OBJECT* __method35_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method36_arg_types[] = {
};

static JAVA_OBJECT* __method37_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method38_arg_types[] = {
};

static JAVA_OBJECT* __method39_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method40_arg_types[] = {
};

static JAVA_OBJECT* __method41_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method42_arg_types[] = {
};

static JAVA_OBJECT* __method43_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method44_arg_types[] = {
};

static JAVA_OBJECT* __method45_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method46_arg_types[] = {
};

static JAVA_OBJECT* __method47_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method48_arg_types[] = {
};

static JAVA_OBJECT* __method49_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method50_arg_types[] = {
};

static JAVA_OBJECT* __method51_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method52_arg_types[] = {
};

static JAVA_OBJECT* __method53_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method54_arg_types[] = {
};

static JAVA_OBJECT* __method55_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method56_arg_types[] = {
};

static JAVA_OBJECT* __method57_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method58_arg_types[] = {
};

static JAVA_OBJECT* __method59_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method60_arg_types[] = {
};

static JAVA_OBJECT* __method61_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method62_arg_types[] = {
};

static JAVA_OBJECT* __method63_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method64_arg_types[] = {
};

static JAVA_OBJECT* __method65_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method66_arg_types[] = {
};

static JAVA_OBJECT* __method67_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGSize,
};

static JAVA_OBJECT* __method68_arg_types[] = {
};

static JAVA_OBJECT* __method69_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method70_arg_types[] = {
};

static JAVA_OBJECT* __method71_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSDictionary,
};

static JAVA_OBJECT* __method72_arg_types[] = {
};

static JAVA_OBJECT* __method73_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method74_arg_types[] = {
};

static JAVA_OBJECT* __method75_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method76_arg_types[] = {
};

static JAVA_OBJECT* __method77_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSDictionary,
};

static JAVA_OBJECT* __method78_arg_types[] = {
};

static JAVA_OBJECT* __method79_arg_types[] = {
};

static JAVA_OBJECT* __method80_arg_types[] = {
};

static JAVA_OBJECT* __method81_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method82_arg_types[] = {
};

static JAVA_OBJECT* __method83_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGAffineTransform,
};

static JAVA_OBJECT* __method84_arg_types[] = {
};

static JAVA_OBJECT* __method85_arg_types[] = {
};

static JAVA_OBJECT* __method86_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method87_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CALayer,
    &__CLASS_int,
};

static JAVA_OBJECT* __method88_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CALayer,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method89_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CALayer,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method90_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CALayer,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method91_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method92_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method93_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method94_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method95_arg_types[] = {
    &__CLASS_double,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method96_arg_types[] = {
    &__CLASS_double,
    &__CLASS_org_xmlvm_iphone_CALayer,
};

static JAVA_OBJECT* __method97_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __method98_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __method99_arg_types[] = {
};

static JAVA_OBJECT* __method100_arg_types[] = {
};

static JAVA_OBJECT* __method101_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method102_arg_types[] = {
};

static JAVA_OBJECT* __method103_arg_types[] = {
};

static JAVA_OBJECT* __method104_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGContext,
};

static JAVA_OBJECT* __method105_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGContext,
};

static JAVA_OBJECT* __method106_arg_types[] = {
};

static JAVA_OBJECT* __method107_arg_types[] = {
};

static JAVA_OBJECT* __method108_arg_types[] = {
};

static JAVA_OBJECT* __method109_arg_types[] = {
};

static JAVA_OBJECT* __method110_arg_types[] = {
};

static JAVA_OBJECT* __method111_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method112_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CAAnimation,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method113_arg_types[] = {
};

static JAVA_OBJECT* __method114_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method115_arg_types[] = {
};

static JAVA_OBJECT* __method116_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method117_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __method118_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"layer",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CALayer;",
    JAVA_NULL,
    JAVA_NULL},
    {"getBounds",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"setBounds",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getPosition",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGPoint;",
    JAVA_NULL,
    JAVA_NULL},
    {"setPosition",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getZPosition",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setZPosition",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getAnchorPoint",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGPoint;",
    JAVA_NULL,
    JAVA_NULL},
    {"setAnchorPoint",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getAnchorPointZ",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setAnchorPointZ",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getFrame",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"setFrame",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isHidden",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setHidden",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isDoubleSided",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setDoubleSided",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isGeometryFlipped",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setGeometryFlipped",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getSuperlayer",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CALayer;",
    JAVA_NULL,
    JAVA_NULL},
    {"getSublayers",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setSublayers",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getMask",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CALayer;",
    JAVA_NULL,
    JAVA_NULL},
    {"setMask",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CALayer;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getMasksToBounds",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setMasksToBounds",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getContents",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"setContents",
    &__method27_arg_types[0],
    sizeof(__method27_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getContentsRect",
    &__method28_arg_types[0],
    sizeof(__method28_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"setContentsRect",
    &__method29_arg_types[0],
    sizeof(__method29_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getContentsGravity",
    &__method30_arg_types[0],
    sizeof(__method30_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setContentsGravity",
    &__method31_arg_types[0],
    sizeof(__method31_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getContentsScale",
    &__method32_arg_types[0],
    sizeof(__method32_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setContentsScale",
    &__method33_arg_types[0],
    sizeof(__method33_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getContentsCenter",
    &__method34_arg_types[0],
    sizeof(__method34_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"setContentsCenter",
    &__method35_arg_types[0],
    sizeof(__method35_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getMagnificationFilter",
    &__method36_arg_types[0],
    sizeof(__method36_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setMagnificationFilter",
    &__method37_arg_types[0],
    sizeof(__method37_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getMinificationFilter",
    &__method38_arg_types[0],
    sizeof(__method38_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setMinificationFilter",
    &__method39_arg_types[0],
    sizeof(__method39_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getMinificationFilterBias",
    &__method40_arg_types[0],
    sizeof(__method40_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setMinificationFilterBias",
    &__method41_arg_types[0],
    sizeof(__method41_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isOpaque",
    &__method42_arg_types[0],
    sizeof(__method42_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setOpaque",
    &__method43_arg_types[0],
    sizeof(__method43_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getNeedsDisplayOnBoundsChange",
    &__method44_arg_types[0],
    sizeof(__method44_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setNeedsDisplayOnBoundsChange",
    &__method45_arg_types[0],
    sizeof(__method45_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getEdgeAntialiasingMask",
    &__method46_arg_types[0],
    sizeof(__method46_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setEdgeAntialiasingMask",
    &__method47_arg_types[0],
    sizeof(__method47_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCornerRadius",
    &__method48_arg_types[0],
    sizeof(__method48_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setCornerRadius",
    &__method49_arg_types[0],
    sizeof(__method49_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getBorderWidth",
    &__method50_arg_types[0],
    sizeof(__method50_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setBorderWidth",
    &__method51_arg_types[0],
    sizeof(__method51_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getOpacity",
    &__method52_arg_types[0],
    sizeof(__method52_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setOpacity",
    &__method53_arg_types[0],
    sizeof(__method53_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCompositingFilter",
    &__method54_arg_types[0],
    sizeof(__method54_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"setCompositingFilter",
    &__method55_arg_types[0],
    sizeof(__method55_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getFilters",
    &__method56_arg_types[0],
    sizeof(__method56_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setFilters",
    &__method57_arg_types[0],
    sizeof(__method57_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getBackgroundFilters",
    &__method58_arg_types[0],
    sizeof(__method58_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setBackgroundFilters",
    &__method59_arg_types[0],
    sizeof(__method59_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getShouldRasterize",
    &__method60_arg_types[0],
    sizeof(__method60_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setShouldRasterize",
    &__method61_arg_types[0],
    sizeof(__method61_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getRasterizationScale",
    &__method62_arg_types[0],
    sizeof(__method62_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setRasterizationScale",
    &__method63_arg_types[0],
    sizeof(__method63_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getShadowOpacity",
    &__method64_arg_types[0],
    sizeof(__method64_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setShadowOpacity",
    &__method65_arg_types[0],
    sizeof(__method65_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getShadowOffset",
    &__method66_arg_types[0],
    sizeof(__method66_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGSize;",
    JAVA_NULL,
    JAVA_NULL},
    {"setShadowOffset",
    &__method67_arg_types[0],
    sizeof(__method67_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGSize;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getShadowRadius",
    &__method68_arg_types[0],
    sizeof(__method68_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()F",
    JAVA_NULL,
    JAVA_NULL},
    {"setShadowRadius",
    &__method69_arg_types[0],
    sizeof(__method69_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(F)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getActions",
    &__method70_arg_types[0],
    sizeof(__method70_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSDictionary;",
    JAVA_NULL,
    JAVA_NULL},
    {"setActions",
    &__method71_arg_types[0],
    sizeof(__method71_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSDictionary;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getName",
    &__method72_arg_types[0],
    sizeof(__method72_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"setName",
    &__method73_arg_types[0],
    sizeof(__method73_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method74_arg_types[0],
    sizeof(__method74_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIView;",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method75_arg_types[0],
    sizeof(__method75_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIView;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getStyle",
    &__method76_arg_types[0],
    sizeof(__method76_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSDictionary;",
    JAVA_NULL,
    JAVA_NULL},
    {"setStyle",
    &__method77_arg_types[0],
    sizeof(__method77_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSDictionary;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getVisibleRect",
    &__method78_arg_types[0],
    sizeof(__method78_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"presentationLayer",
    &__method79_arg_types[0],
    sizeof(__method79_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CALayer;",
    JAVA_NULL,
    JAVA_NULL},
    {"modelLayer",
    &__method80_arg_types[0],
    sizeof(__method80_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"shouldArchiveValueForKey",
    &__method81_arg_types[0],
    sizeof(__method81_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"affineTransform",
    &__method82_arg_types[0],
    sizeof(__method82_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"setAffineTransform",
    &__method83_arg_types[0],
    sizeof(__method83_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGAffineTransform;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"contentsAreFlipped",
    &__method84_arg_types[0],
    sizeof(__method84_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"removeFromSuperlayer",
    &__method85_arg_types[0],
    sizeof(__method85_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"addSublayer",
    &__method86_arg_types[0],
    sizeof(__method86_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CALayer;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"insertSublayer",
    &__method87_arg_types[0],
    sizeof(__method87_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CALayer;I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"insertSublayerBelow",
    &__method88_arg_types[0],
    sizeof(__method88_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CALayer;Lorg/xmlvm/iphone/CALayer;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"insertSublayerAbove",
    &__method89_arg_types[0],
    sizeof(__method89_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CALayer;Lorg/xmlvm/iphone/CALayer;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"replaceSublayer",
    &__method90_arg_types[0],
    sizeof(__method90_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CALayer;Lorg/xmlvm/iphone/CALayer;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"convertPointFromLayer",
    &__method91_arg_types[0],
    sizeof(__method91_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;Lorg/xmlvm/iphone/CALayer;)Lorg/xmlvm/iphone/CGPoint;",
    JAVA_NULL,
    JAVA_NULL},
    {"convertPointToLayer",
    &__method92_arg_types[0],
    sizeof(__method92_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;Lorg/xmlvm/iphone/CALayer;)Lorg/xmlvm/iphone/CGPoint;",
    JAVA_NULL,
    JAVA_NULL},
    {"convertRectFromLayer",
    &__method93_arg_types[0],
    sizeof(__method93_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;Lorg/xmlvm/iphone/CALayer;)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"convertRectToLayer",
    &__method94_arg_types[0],
    sizeof(__method94_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;Lorg/xmlvm/iphone/CALayer;)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"convertTimeFromLayer",
    &__method95_arg_types[0],
    sizeof(__method95_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(DLorg/xmlvm/iphone/CALayer;)D",
    JAVA_NULL,
    JAVA_NULL},
    {"convertTimeToLayer",
    &__method96_arg_types[0],
    sizeof(__method96_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(DLorg/xmlvm/iphone/CALayer;)D",
    JAVA_NULL,
    JAVA_NULL},
    {"hitTest",
    &__method97_arg_types[0],
    sizeof(__method97_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;)Lorg/xmlvm/iphone/CALayer;",
    JAVA_NULL,
    JAVA_NULL},
    {"containsPoint",
    &__method98_arg_types[0],
    sizeof(__method98_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"display",
    &__method99_arg_types[0],
    sizeof(__method99_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"setNeedsDisplay",
    &__method100_arg_types[0],
    sizeof(__method100_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"setNeedsDisplayInRect",
    &__method101_arg_types[0],
    sizeof(__method101_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"needsDisplay",
    &__method102_arg_types[0],
    sizeof(__method102_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"displayIfNeeded",
    &__method103_arg_types[0],
    sizeof(__method103_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"drawInContext",
    &__method104_arg_types[0],
    sizeof(__method104_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGContext;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"renderInContext",
    &__method105_arg_types[0],
    sizeof(__method105_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGContext;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"preferredFrameSize",
    &__method106_arg_types[0],
    sizeof(__method106_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGSize;",
    JAVA_NULL,
    JAVA_NULL},
    {"setNeedsLayout",
    &__method107_arg_types[0],
    sizeof(__method107_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"needsLayout",
    &__method108_arg_types[0],
    sizeof(__method108_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"layoutIfNeeded",
    &__method109_arg_types[0],
    sizeof(__method109_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"layoutSublayers",
    &__method110_arg_types[0],
    sizeof(__method110_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"actionForKey",
    &__method111_arg_types[0],
    sizeof(__method111_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Lorg/xmlvm/iphone/CAAction;",
    JAVA_NULL,
    JAVA_NULL},
    {"addAnimation",
    &__method112_arg_types[0],
    sizeof(__method112_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CAAnimation;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"removeAllAnimations",
    &__method113_arg_types[0],
    sizeof(__method113_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"removeAnimationForKey",
    &__method114_arg_types[0],
    sizeof(__method114_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"animationKeys",
    &__method115_arg_types[0],
    sizeof(__method115_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"animationForKey",
    &__method116_arg_types[0],
    sizeof(__method116_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Lorg/xmlvm/iphone/CAAnimation;",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollPoint",
    &__method117_arg_types[0],
    sizeof(__method117_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGPoint;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"scrollRectToVisible",
    &__method118_arg_types[0],
    sizeof(__method118_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGRect;)V",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_layer__();
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getBounds__(receiver);
        break;
    case 2:
        org_xmlvm_iphone_CALayer_setBounds___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getPosition__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_CALayer_setPosition___org_xmlvm_iphone_CGPoint(receiver, argsArray[0]);
        break;
    case 5:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getZPosition__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 6:
        org_xmlvm_iphone_CALayer_setZPosition___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 7:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getAnchorPoint__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_CALayer_setAnchorPoint___org_xmlvm_iphone_CGPoint(receiver, argsArray[0]);
        break;
    case 9:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getAnchorPointZ__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 10:
        org_xmlvm_iphone_CALayer_setAnchorPointZ___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 11:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getFrame__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_CALayer_setFrame___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 13:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_isHidden__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 14:
        org_xmlvm_iphone_CALayer_setHidden___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 15:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_isDoubleSided__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 16:
        org_xmlvm_iphone_CALayer_setDoubleSided___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 17:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_isGeometryFlipped__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 18:
        org_xmlvm_iphone_CALayer_setGeometryFlipped___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 19:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getSuperlayer__(receiver);
        break;
    case 20:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getSublayers__(receiver);
        break;
    case 21:
        org_xmlvm_iphone_CALayer_setSublayers___java_util_List(receiver, argsArray[0]);
        break;
    case 22:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getMask__(receiver);
        break;
    case 23:
        org_xmlvm_iphone_CALayer_setMask___org_xmlvm_iphone_CALayer(receiver, argsArray[0]);
        break;
    case 24:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_getMasksToBounds__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 25:
        org_xmlvm_iphone_CALayer_setMasksToBounds___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 26:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getContents__(receiver);
        break;
    case 27:
        org_xmlvm_iphone_CALayer_setContents___java_lang_Object(receiver, argsArray[0]);
        break;
    case 28:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getContentsRect__(receiver);
        break;
    case 29:
        org_xmlvm_iphone_CALayer_setContentsRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 30:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getContentsGravity__(receiver);
        break;
    case 31:
        org_xmlvm_iphone_CALayer_setContentsGravity___java_lang_String(receiver, argsArray[0]);
        break;
    case 32:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getContentsScale__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 33:
        org_xmlvm_iphone_CALayer_setContentsScale___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 34:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getContentsCenter__(receiver);
        break;
    case 35:
        org_xmlvm_iphone_CALayer_setContentsCenter___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 36:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getMagnificationFilter__(receiver);
        break;
    case 37:
        org_xmlvm_iphone_CALayer_setMagnificationFilter___java_lang_String(receiver, argsArray[0]);
        break;
    case 38:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getMinificationFilter__(receiver);
        break;
    case 39:
        org_xmlvm_iphone_CALayer_setMinificationFilter___java_lang_String(receiver, argsArray[0]);
        break;
    case 40:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getMinificationFilterBias__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 41:
        org_xmlvm_iphone_CALayer_setMinificationFilterBias___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 42:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_isOpaque__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 43:
        org_xmlvm_iphone_CALayer_setOpaque___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 44:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_getNeedsDisplayOnBoundsChange__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 45:
        org_xmlvm_iphone_CALayer_setNeedsDisplayOnBoundsChange___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 46:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_CALayer_getEdgeAntialiasingMask__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 47:
        org_xmlvm_iphone_CALayer_setEdgeAntialiasingMask___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 48:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getCornerRadius__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 49:
        org_xmlvm_iphone_CALayer_setCornerRadius___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 50:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getBorderWidth__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 51:
        org_xmlvm_iphone_CALayer_setBorderWidth___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 52:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getOpacity__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 53:
        org_xmlvm_iphone_CALayer_setOpacity___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 54:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getCompositingFilter__(receiver);
        break;
    case 55:
        org_xmlvm_iphone_CALayer_setCompositingFilter___java_lang_Object(receiver, argsArray[0]);
        break;
    case 56:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getFilters__(receiver);
        break;
    case 57:
        org_xmlvm_iphone_CALayer_setFilters___java_util_List(receiver, argsArray[0]);
        break;
    case 58:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getBackgroundFilters__(receiver);
        break;
    case 59:
        org_xmlvm_iphone_CALayer_setBackgroundFilters___java_util_List(receiver, argsArray[0]);
        break;
    case 60:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_getShouldRasterize__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 61:
        org_xmlvm_iphone_CALayer_setShouldRasterize___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 62:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getRasterizationScale__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 63:
        org_xmlvm_iphone_CALayer_setRasterizationScale___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 64:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getShadowOpacity__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 65:
        org_xmlvm_iphone_CALayer_setShadowOpacity___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 66:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getShadowOffset__(receiver);
        break;
    case 67:
        org_xmlvm_iphone_CALayer_setShadowOffset___org_xmlvm_iphone_CGSize(receiver, argsArray[0]);
        break;
    case 68:
        conversion.f = (JAVA_FLOAT) org_xmlvm_iphone_CALayer_getShadowRadius__(receiver);
        result = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(result, conversion.f);
        break;
    case 69:
        org_xmlvm_iphone_CALayer_setShadowRadius___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 70:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getActions__(receiver);
        break;
    case 71:
        org_xmlvm_iphone_CALayer_setActions___org_xmlvm_iphone_NSDictionary(receiver, argsArray[0]);
        break;
    case 72:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getName__(receiver);
        break;
    case 73:
        org_xmlvm_iphone_CALayer_setName___java_lang_String(receiver, argsArray[0]);
        break;
    case 74:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getDelegate__(receiver);
        break;
    case 75:
        org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 76:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getStyle__(receiver);
        break;
    case 77:
        org_xmlvm_iphone_CALayer_setStyle___org_xmlvm_iphone_NSDictionary(receiver, argsArray[0]);
        break;
    case 78:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_getVisibleRect__(receiver);
        break;
    case 79:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_presentationLayer__(receiver);
        break;
    case 80:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_modelLayer__(receiver);
        break;
    case 81:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_shouldArchiveValueForKey___java_lang_String(receiver, argsArray[0]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 82:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_affineTransform__(receiver);
        break;
    case 83:
        org_xmlvm_iphone_CALayer_setAffineTransform___org_xmlvm_iphone_CGAffineTransform(receiver, argsArray[0]);
        break;
    case 84:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_contentsAreFlipped__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 85:
        org_xmlvm_iphone_CALayer_removeFromSuperlayer__(receiver);
        break;
    case 86:
        org_xmlvm_iphone_CALayer_addSublayer___org_xmlvm_iphone_CALayer(receiver, argsArray[0]);
        break;
    case 87:
        org_xmlvm_iphone_CALayer_insertSublayer___org_xmlvm_iphone_CALayer_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 88:
        org_xmlvm_iphone_CALayer_insertSublayerBelow___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer(receiver, argsArray[0], argsArray[1]);
        break;
    case 89:
        org_xmlvm_iphone_CALayer_insertSublayerAbove___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer(receiver, argsArray[0], argsArray[1]);
        break;
    case 90:
        org_xmlvm_iphone_CALayer_replaceSublayer___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer(receiver, argsArray[0], argsArray[1]);
        break;
    case 91:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_convertPointFromLayer___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_CALayer(receiver, argsArray[0], argsArray[1]);
        break;
    case 92:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_convertPointToLayer___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_CALayer(receiver, argsArray[0], argsArray[1]);
        break;
    case 93:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_convertRectFromLayer___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CALayer(receiver, argsArray[0], argsArray[1]);
        break;
    case 94:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_convertRectToLayer___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CALayer(receiver, argsArray[0], argsArray[1]);
        break;
    case 95:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CALayer_convertTimeFromLayer___double_org_xmlvm_iphone_CALayer(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, argsArray[1]);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 96:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CALayer_convertTimeToLayer___double_org_xmlvm_iphone_CALayer(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_, argsArray[1]);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 97:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_hitTest___org_xmlvm_iphone_CGPoint(receiver, argsArray[0]);
        break;
    case 98:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_containsPoint___org_xmlvm_iphone_CGPoint(receiver, argsArray[0]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 99:
        org_xmlvm_iphone_CALayer_display__(receiver);
        break;
    case 100:
        org_xmlvm_iphone_CALayer_setNeedsDisplay__(receiver);
        break;
    case 101:
        org_xmlvm_iphone_CALayer_setNeedsDisplayInRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 102:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_needsDisplay__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 103:
        org_xmlvm_iphone_CALayer_displayIfNeeded__(receiver);
        break;
    case 104:
        org_xmlvm_iphone_CALayer_drawInContext___org_xmlvm_iphone_CGContext(receiver, argsArray[0]);
        break;
    case 105:
        org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext(receiver, argsArray[0]);
        break;
    case 106:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_preferredFrameSize__(receiver);
        break;
    case 107:
        org_xmlvm_iphone_CALayer_setNeedsLayout__(receiver);
        break;
    case 108:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CALayer_needsLayout__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 109:
        org_xmlvm_iphone_CALayer_layoutIfNeeded__(receiver);
        break;
    case 110:
        org_xmlvm_iphone_CALayer_layoutSublayers__(receiver);
        break;
    case 111:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_actionForKey___java_lang_String(receiver, argsArray[0]);
        break;
    case 112:
        org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 113:
        org_xmlvm_iphone_CALayer_removeAllAnimations__(receiver);
        break;
    case 114:
        org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String(receiver, argsArray[0]);
        break;
    case 115:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_animationKeys__(receiver);
        break;
    case 116:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CALayer_animationForKey___java_lang_String(receiver, argsArray[0]);
        break;
    case 117:
        org_xmlvm_iphone_CALayer_scrollPoint___org_xmlvm_iphone_CGPoint(receiver, argsArray[0]);
        break;
    case 118:
        org_xmlvm_iphone_CALayer_scrollRectToVisible___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CALayer()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CALayer);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CALayer.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CALayer.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CALayer);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CALayer.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CALayer.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CALayer.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_CALayer();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CALayer()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_CALayer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CALayer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CALayer.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CALayer.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CALayer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CALayer.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CALayer.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CALayer.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CALayer.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CALayer.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CALayer.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CALayer.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CALayer.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CALayer = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CALayer);
    __TIB_org_xmlvm_iphone_CALayer.clazz = __CLASS_org_xmlvm_iphone_CALayer;
    __TIB_org_xmlvm_iphone_CALayer.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CALayer_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CALayer);
    __CLASS_org_xmlvm_iphone_CALayer_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CALayer_1ARRAY);
    __CLASS_org_xmlvm_iphone_CALayer_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CALayer_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CALayer]

    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);

    // NSDictionary __WRAPPER_CREATOR is required for the actions property
    if (!__TIB_org_xmlvm_iphone_NSDictionary.classInitialized) __INIT_org_xmlvm_iphone_NSDictionary();

    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CALayer.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CALayer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CALayer]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CALayer()
{
    if (!__TIB_org_xmlvm_iphone_CALayer.classInitialized) __INIT_org_xmlvm_iphone_CALayer();
    org_xmlvm_iphone_CALayer* me = (org_xmlvm_iphone_CALayer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CALayer));
    me->tib = &__TIB_org_xmlvm_iphone_CALayer;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CALayer(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CALayer]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CALayer()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CALayer();
    org_xmlvm_iphone_CALayer___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_layer__()
{
    if (!__TIB_org_xmlvm_iphone_CALayer.classInitialized) __INIT_org_xmlvm_iphone_CALayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_layer__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer___INIT___]
	CALayer* obj = [[CALayerWrapper alloc] init];
    org_xmlvm_iphone_CALayer_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getBounds__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getBounds__]
    XMLVM_VAR_THIZ;
    return fromCGRect([thiz bounds]);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setBounds___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setBounds___org_xmlvm_iphone_CGRect]
    XMLVM_VAR_THIZ;
    [thiz setBounds:toCGRect(n1)];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getPosition__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getPosition__]
    XMLVM_VAR_THIZ;
    return fromCGPoint([thiz position]);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setPosition___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setPosition___org_xmlvm_iphone_CGPoint]
    XMLVM_VAR_THIZ;
    [thiz setPosition:toCGPoint(n1)];
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getZPosition__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getZPosition__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setZPosition___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setZPosition___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getAnchorPoint__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getAnchorPoint__]
    XMLVM_VAR_THIZ;
    return fromCGPoint([thiz anchorPoint]);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setAnchorPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setAnchorPoint___org_xmlvm_iphone_CGPoint]
    XMLVM_VAR_THIZ;
    [thiz setAnchorPoint:toCGPoint(n1)];
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getAnchorPointZ__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getAnchorPointZ__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setAnchorPointZ___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setAnchorPointZ___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getFrame__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getFrame__]
    XMLVM_VAR_THIZ;
    return fromCGRect([thiz frame]);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setFrame___org_xmlvm_iphone_CGRect]
    XMLVM_VAR_THIZ;
    [thiz setFrame:toCGRect(n1)];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_isHidden__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_isHidden__]
    XMLVM_VAR_THIZ;
    return [thiz hidden];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setHidden___boolean]
    XMLVM_VAR_THIZ;
    [thiz setHidden:n1];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_isDoubleSided__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_isDoubleSided__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setDoubleSided___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setDoubleSided___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_isGeometryFlipped__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_isGeometryFlipped__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setGeometryFlipped___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setGeometryFlipped___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getSuperlayer__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getSuperlayer__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getSublayers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getSublayers__]

    XMLVM_VAR_THIZ;
    NSArray* sublayers = [thiz sublayers];
    java_util_List* result = fromNSArray(sublayers);
    return result;

    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setSublayers___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setSublayers___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getMask__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getMask__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setMask___org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setMask___org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_getMasksToBounds__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getMasksToBounds__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setMasksToBounds___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setMasksToBounds___boolean]
    XMLVM_VAR_THIZ;
    [thiz setMasksToBounds:n1];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getContents__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getContents__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setContents___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setContents___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getContentsRect__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getContentsRect__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setContentsRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setContentsRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getContentsGravity__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getContentsGravity__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setContentsGravity___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setContentsGravity___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getContentsScale__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getContentsScale__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setContentsScale___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setContentsScale___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getContentsCenter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getContentsCenter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setContentsCenter___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setContentsCenter___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getMagnificationFilter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getMagnificationFilter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setMagnificationFilter___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setMagnificationFilter___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getMinificationFilter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getMinificationFilter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setMinificationFilter___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setMinificationFilter___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getMinificationFilterBias__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getMinificationFilterBias__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setMinificationFilterBias___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setMinificationFilterBias___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_isOpaque__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_isOpaque__]
    XMLVM_VAR_THIZ;
    return [thiz opaque];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setOpaque___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setOpaque___boolean]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_BOOLEAN(isOpaque, n1);
    [thiz setOpaque:isOpaque];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_getNeedsDisplayOnBoundsChange__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getNeedsDisplayOnBoundsChange__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setNeedsDisplayOnBoundsChange___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setNeedsDisplayOnBoundsChange___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CALayer_getEdgeAntialiasingMask__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getEdgeAntialiasingMask__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setEdgeAntialiasingMask___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setEdgeAntialiasingMask___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getCornerRadius__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getCornerRadius__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setCornerRadius___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setCornerRadius___float]
    XMLVM_VAR_THIZ;
    [thiz setCornerRadius:n1];
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getBorderWidth__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getBorderWidth__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setBorderWidth___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setBorderWidth___float]
    XMLVM_VAR_THIZ;
    [thiz setBorderWidth:n1];
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getOpacity__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getOpacity__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setOpacity___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setOpacity___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getCompositingFilter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getCompositingFilter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setCompositingFilter___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setCompositingFilter___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getFilters__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getFilters__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setFilters___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setFilters___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getBackgroundFilters__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getBackgroundFilters__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setBackgroundFilters___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setBackgroundFilters___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_getShouldRasterize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getShouldRasterize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setShouldRasterize___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setShouldRasterize___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getRasterizationScale__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getRasterizationScale__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setRasterizationScale___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setRasterizationScale___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getShadowOpacity__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getShadowOpacity__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setShadowOpacity___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setShadowOpacity___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getShadowOffset__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getShadowOffset__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setShadowOffset___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setShadowOffset___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_CALayer_getShadowRadius__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getShadowRadius__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setShadowRadius___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setShadowRadius___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getActions__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getActions__]
    XMLVM_VAR_THIZ;
    return xmlvm_get_associated_c_object([thiz actions]);
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setActions___org_xmlvm_iphone_NSDictionary(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setActions___org_xmlvm_iphone_NSDictionary]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(NSDictionary, actions, n1);
    [thiz setActions:actions];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getName__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setName___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setName___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setDelegate___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getStyle__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getStyle__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setStyle___org_xmlvm_iphone_NSDictionary(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setStyle___org_xmlvm_iphone_NSDictionary]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_getVisibleRect__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_getVisibleRect__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_presentationLayer__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_presentationLayer__]
    XMLVM_VAR_THIZ;
    return xmlvm_get_associated_c_object([thiz presentationLayer]);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_modelLayer__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_modelLayer__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_shouldArchiveValueForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_shouldArchiveValueForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_affineTransform__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_affineTransform__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setAffineTransform___org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setAffineTransform___org_xmlvm_iphone_CGAffineTransform]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_contentsAreFlipped__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_contentsAreFlipped__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_removeFromSuperlayer__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_removeFromSuperlayer__]
    XMLVM_VAR_THIZ;
    [thiz removeFromSuperlayer];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_addSublayer___org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_addSublayer___org_xmlvm_iphone_CALayer]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS(CALayer, aLayer, n1);
    [thiz addSublayer:aLayer];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_insertSublayer___org_xmlvm_iphone_CALayer_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_insertSublayer___org_xmlvm_iphone_CALayer_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_insertSublayerBelow___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_insertSublayerBelow___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_insertSublayerAbove___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_insertSublayerAbove___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_replaceSublayer___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_replaceSublayer___org_xmlvm_iphone_CALayer_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_convertPointFromLayer___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_convertPointFromLayer___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_convertPointToLayer___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_convertPointToLayer___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_convertRectFromLayer___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_convertRectFromLayer___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_convertRectToLayer___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_convertRectToLayer___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CALayer_convertTimeFromLayer___double_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_convertTimeFromLayer___double_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CALayer_convertTimeToLayer___double_org_xmlvm_iphone_CALayer(JAVA_OBJECT me, JAVA_DOUBLE n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_convertTimeToLayer___double_org_xmlvm_iphone_CALayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_hitTest___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_hitTest___org_xmlvm_iphone_CGPoint]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_containsPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_containsPoint___org_xmlvm_iphone_CGPoint]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_display__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_display__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setNeedsDisplay__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setNeedsDisplay__]
    XMLVM_VAR_THIZ;
    [thiz setNeedsDisplay];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setNeedsDisplayInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setNeedsDisplayInRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_needsDisplay__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_needsDisplay__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_displayIfNeeded__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_displayIfNeeded__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_drawInContext___org_xmlvm_iphone_CGContext(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_drawInContext___org_xmlvm_iphone_CGContext]
    // Do nothing. Will be overwritten in derived classes
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_renderInContext___org_xmlvm_iphone_CGContext]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_preferredFrameSize__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_preferredFrameSize__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_setNeedsLayout__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_setNeedsLayout__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CALayer_needsLayout__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_needsLayout__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_layoutIfNeeded__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_layoutIfNeeded__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_layoutSublayers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_layoutSublayers__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_actionForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_actionForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_addAnimation___org_xmlvm_iphone_CAAnimation_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_removeAllAnimations__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_removeAllAnimations__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_removeAnimationForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_animationKeys__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_animationKeys__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CALayer_animationForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_animationForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_scrollPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_scrollPoint___org_xmlvm_iphone_CGPoint]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CALayer_scrollRectToVisible___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CALayer_scrollRectToVisible___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

