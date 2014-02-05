#include "xmlvm.h"
#include "java_lang_String.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_CGAffineTransform.h"
#include "org_xmlvm_iphone_UIImagePickerControllerDelegate.h"
#include "org_xmlvm_iphone_UINavigationControllerDelegate.h"
#include "org_xmlvm_iphone_UIView.h"

#include "org_xmlvm_iphone_UIImagePickerController.h"

#define XMLVM_CURRENT_CLASS_NAME UIImagePickerController
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIImagePickerController

__TIB_DEFINITION_org_xmlvm_iphone_UIImagePickerController __TIB_org_xmlvm_iphone_UIImagePickerController = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIImagePickerController, // classInitializer
    "org.xmlvm.iphone.UIImagePickerController", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UINavigationController, // extends
    sizeof(org_xmlvm_iphone_UIImagePickerController), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerController;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerController_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerController_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerController_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_iphone_UIImagePickerController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [UIImagePickerController class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_UIImagePickerController();
        org_xmlvm_iphone_UIImagePickerController_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaType;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIImagePickerController_OriginalImage;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIImagePickerController_EditedImage;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIImagePickerController_CropRect;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaURL;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIImagePickerController_ReferenceURL;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaMetadata;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"MediaType",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerController_MediaType,
    "",
    JAVA_NULL},
    {"OriginalImage",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerController_OriginalImage,
    "",
    JAVA_NULL},
    {"EditedImage",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerController_EditedImage,
    "",
    JAVA_NULL},
    {"CropRect",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerController_CropRect,
    "",
    JAVA_NULL},
    {"MediaURL",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerController_MediaURL,
    "",
    JAVA_NULL},
    {"ReferenceURL",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerController_ReferenceURL,
    "",
    JAVA_NULL},
    {"MediaMetadata",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerController_MediaMetadata,
    "",
    JAVA_NULL},
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIImagePickerController();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIImagePickerController___INIT___(obj);
        break;
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
    &__CLASS_int,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIImagePickerControllerDelegate,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UINavigationControllerDelegate,
};

static JAVA_OBJECT* __method12_arg_types[] = {
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method14_arg_types[] = {
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIView,
};

static JAVA_OBJECT* __method20_arg_types[] = {
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGAffineTransform,
};

static JAVA_OBJECT* __method22_arg_types[] = {
};

static JAVA_OBJECT* __method23_arg_types[] = {
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method24_arg_types[] = {
};

static JAVA_OBJECT* __method25_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method26_arg_types[] = {
};

static JAVA_OBJECT* __method27_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method28_arg_types[] = {
};

static JAVA_OBJECT* __method29_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method30_arg_types[] = {
};

static JAVA_OBJECT* __method31_arg_types[] = {
};

static JAVA_OBJECT* __method32_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"isSourceTypeAvailable",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"availableMediaTypesForSourceType",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"isCameraDeviceAvailable",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"availableCaptureModesForCameraDevice",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"isFlashAvailableForCameraDevice",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"getSourceType",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setSourceType",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isAllowsEditing",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setAllowsEditing",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIImagePickerControllerDelegate;",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIImagePickerControllerDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UINavigationControllerDelegate;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getMediaTypes",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"setMediaTypes",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getVideoMaximumDuration",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
    JAVA_NULL,
    JAVA_NULL},
    {"setVideoMaximumDuration",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(D)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getVideoQuality",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setVideoQuality",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCameraOverlayView",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/UIView;",
    JAVA_NULL,
    JAVA_NULL},
    {"setCameraOverlayView",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIView;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCameraViewTransform",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGAffineTransform;",
    JAVA_NULL,
    JAVA_NULL},
    {"setCameraViewTransform",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGAffineTransform;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isShowsCameraControls",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"setShowsCameraControls",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Z)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCameraCaptureMode",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setCameraCaptureMode",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCameraDevice",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setCameraDevice",
    &__method27_arg_types[0],
    sizeof(__method27_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"getCameraFlashMode",
    &__method28_arg_types[0],
    sizeof(__method28_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"setCameraFlashMode",
    &__method29_arg_types[0],
    sizeof(__method29_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"takePicture",
    &__method30_arg_types[0],
    sizeof(__method30_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"startVideoCapture",
    &__method31_arg_types[0],
    sizeof(__method31_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"stopVideoCapture",
    &__method32_arg_types[0],
    sizeof(__method32_arg_types) / sizeof(JAVA_OBJECT*),
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
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIImagePickerController_isSourceTypeAvailable___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImagePickerController_availableMediaTypesForSourceType___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 2:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIImagePickerController_isCameraDeviceAvailable___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImagePickerController_availableCaptureModesForCameraDevice___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 4:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIImagePickerController_isFlashAvailableForCameraDevice___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 5:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIImagePickerController_getSourceType__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 6:
        org_xmlvm_iphone_UIImagePickerController_setSourceType___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 7:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIImagePickerController_isAllowsEditing__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 8:
        org_xmlvm_iphone_UIImagePickerController_setAllowsEditing___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 9:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImagePickerController_getDelegate__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_UIImagePickerController_setDelegate___org_xmlvm_iphone_UIImagePickerControllerDelegate(receiver, argsArray[0]);
        break;
    case 11:
        org_xmlvm_iphone_UIImagePickerController_setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate(receiver, argsArray[0]);
        break;
    case 12:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImagePickerController_getMediaTypes__(receiver);
        break;
    case 13:
        org_xmlvm_iphone_UIImagePickerController_setMediaTypes___java_util_List(receiver, argsArray[0]);
        break;
    case 14:
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_UIImagePickerController_getVideoMaximumDuration__(receiver);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    case 15:
        org_xmlvm_iphone_UIImagePickerController_setVideoMaximumDuration___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 16:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIImagePickerController_getVideoQuality__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 17:
        org_xmlvm_iphone_UIImagePickerController_setVideoQuality___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 18:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImagePickerController_getCameraOverlayView__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_UIImagePickerController_setCameraOverlayView___org_xmlvm_iphone_UIView(receiver, argsArray[0]);
        break;
    case 20:
        result = (JAVA_OBJECT) org_xmlvm_iphone_UIImagePickerController_getCameraViewTransform__(receiver);
        break;
    case 21:
        org_xmlvm_iphone_UIImagePickerController_setCameraViewTransform___org_xmlvm_iphone_CGAffineTransform(receiver, argsArray[0]);
        break;
    case 22:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIImagePickerController_isShowsCameraControls__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 23:
        org_xmlvm_iphone_UIImagePickerController_setShowsCameraControls___boolean(receiver, ((java_lang_Boolean*) argsArray[0])->fields.java_lang_Boolean.value_);
        break;
    case 24:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIImagePickerController_getCameraCaptureMode__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 25:
        org_xmlvm_iphone_UIImagePickerController_setCameraCaptureMode___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 26:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIImagePickerController_getCameraDevice__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 27:
        org_xmlvm_iphone_UIImagePickerController_setCameraDevice___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 28:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_UIImagePickerController_getCameraFlashMode__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 29:
        org_xmlvm_iphone_UIImagePickerController_setCameraFlashMode___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 30:
        org_xmlvm_iphone_UIImagePickerController_takePicture__(receiver);
        break;
    case 31:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_UIImagePickerController_startVideoCapture__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 32:
        org_xmlvm_iphone_UIImagePickerController_stopVideoCapture__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIImagePickerController()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIImagePickerController);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIImagePickerController.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIImagePickerController.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIImagePickerController);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIImagePickerController.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIImagePickerController.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIImagePickerController.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIImagePickerController")
        __INIT_IMPL_org_xmlvm_iphone_UIImagePickerController();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIImagePickerController()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UINavigationController)
    __TIB_org_xmlvm_iphone_UIImagePickerController.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIImagePickerController;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIImagePickerController.vtable, __TIB_org_xmlvm_iphone_UINavigationController.vtable, sizeof(__TIB_org_xmlvm_iphone_UINavigationController.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIImagePickerController.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_UIImagePickerController_getDelegate__;
    __TIB_org_xmlvm_iphone_UIImagePickerController.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_UIImagePickerController_setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIImagePickerController.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIImagePickerController.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaType = (java_lang_String*) xmlvm_create_java_string_from_pool(29);
    _STATIC_org_xmlvm_iphone_UIImagePickerController_OriginalImage = (java_lang_String*) xmlvm_create_java_string_from_pool(30);
    _STATIC_org_xmlvm_iphone_UIImagePickerController_EditedImage = (java_lang_String*) xmlvm_create_java_string_from_pool(31);
    _STATIC_org_xmlvm_iphone_UIImagePickerController_CropRect = (java_lang_String*) xmlvm_create_java_string_from_pool(32);
    _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaURL = (java_lang_String*) xmlvm_create_java_string_from_pool(33);
    _STATIC_org_xmlvm_iphone_UIImagePickerController_ReferenceURL = (java_lang_String*) xmlvm_create_java_string_from_pool(34);
    _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaMetadata = (java_lang_String*) xmlvm_create_java_string_from_pool(35);

    __TIB_org_xmlvm_iphone_UIImagePickerController.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerController.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIImagePickerController.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIImagePickerController.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerController.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIImagePickerController.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIImagePickerController.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerController.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIImagePickerController = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIImagePickerController);
    __TIB_org_xmlvm_iphone_UIImagePickerController.clazz = __CLASS_org_xmlvm_iphone_UIImagePickerController;
    __TIB_org_xmlvm_iphone_UIImagePickerController.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIImagePickerController_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerController);
    __CLASS_org_xmlvm_iphone_UIImagePickerController_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerController_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIImagePickerController_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerController_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImagePickerController]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIImagePickerController.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIImagePickerController(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImagePickerController]
    org_xmlvm_iphone_UIImagePickerController* thiz = me;
    [thiz->fields.org_xmlvm_iphone_UIImagePickerController.delegateObjC release];
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerController(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UINavigationController(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerController]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImagePickerController()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
org_xmlvm_iphone_UIImagePickerController* me = (org_xmlvm_iphone_UIImagePickerController*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImagePickerController));
    me->tib = &__TIB_org_xmlvm_iphone_UIImagePickerController;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerController(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIImagePickerController]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImagePickerController()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIImagePickerController();
    org_xmlvm_iphone_UIImagePickerController___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_GET_MediaType()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    return _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaType;
}

void org_xmlvm_iphone_UIImagePickerController_PUT_MediaType(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
_STATIC_org_xmlvm_iphone_UIImagePickerController_MediaType = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_GET_OriginalImage()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    return _STATIC_org_xmlvm_iphone_UIImagePickerController_OriginalImage;
}

void org_xmlvm_iphone_UIImagePickerController_PUT_OriginalImage(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
_STATIC_org_xmlvm_iphone_UIImagePickerController_OriginalImage = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_GET_EditedImage()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    return _STATIC_org_xmlvm_iphone_UIImagePickerController_EditedImage;
}

void org_xmlvm_iphone_UIImagePickerController_PUT_EditedImage(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
_STATIC_org_xmlvm_iphone_UIImagePickerController_EditedImage = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_GET_CropRect()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    return _STATIC_org_xmlvm_iphone_UIImagePickerController_CropRect;
}

void org_xmlvm_iphone_UIImagePickerController_PUT_CropRect(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
_STATIC_org_xmlvm_iphone_UIImagePickerController_CropRect = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_GET_MediaURL()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    return _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaURL;
}

void org_xmlvm_iphone_UIImagePickerController_PUT_MediaURL(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
_STATIC_org_xmlvm_iphone_UIImagePickerController_MediaURL = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_GET_ReferenceURL()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    return _STATIC_org_xmlvm_iphone_UIImagePickerController_ReferenceURL;
}

void org_xmlvm_iphone_UIImagePickerController_PUT_ReferenceURL(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
_STATIC_org_xmlvm_iphone_UIImagePickerController_ReferenceURL = v;
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_GET_MediaMetadata()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    return _STATIC_org_xmlvm_iphone_UIImagePickerController_MediaMetadata;
}

void org_xmlvm_iphone_UIImagePickerController_PUT_MediaMetadata(JAVA_OBJECT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
_STATIC_org_xmlvm_iphone_UIImagePickerController_MediaMetadata = v;
}

void org_xmlvm_iphone_UIImagePickerController___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController___INIT___]
    UIImagePickerController* obj = [[UIImagePickerController alloc] init];
    org_xmlvm_iphone_UIImagePickerController_INTERNAL_CONSTRUCTOR(me, obj);
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIImagePickerController_isSourceTypeAvailable___int(JAVA_INT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_isSourceTypeAvailable___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_availableMediaTypesForSourceType___int(JAVA_INT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_availableMediaTypesForSourceType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIImagePickerController_isCameraDeviceAvailable___int(JAVA_INT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_isCameraDeviceAvailable___int]
    return [UIImagePickerController isCameraDeviceAvailable:n1];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_availableCaptureModesForCameraDevice___int(JAVA_INT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_availableCaptureModesForCameraDevice___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIImagePickerController_isFlashAvailableForCameraDevice___int(JAVA_INT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIImagePickerController)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_isFlashAvailableForCameraDevice___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIImagePickerController_getSourceType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getSourceType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setSourceType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setSourceType___int]
    XMLVM_VAR_THIZ;
    [thiz setSourceType:n1];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIImagePickerController_isAllowsEditing__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_isAllowsEditing__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setAllowsEditing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setAllowsEditing___boolean]
     XMLVM_VAR_THIZ;
    [thiz setAllowsEditing:n1];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setDelegate___org_xmlvm_iphone_UIImagePickerControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setDelegate___org_xmlvm_iphone_UIImagePickerControllerDelegate]
    org_xmlvm_iphone_UIImagePickerController* thiz = me;
    if (thiz->fields.org_xmlvm_iphone_UIImagePickerController.delegateObjC != nil) {
        [thiz->fields.org_xmlvm_iphone_UIImagePickerController.delegateObjC release];
    }
    UIImagePickerControllerDelegateWrapper* delegateWrapper = [[UIImagePickerControllerDelegateWrapper alloc] initWithDelegate:n1];
    [((UIImagePickerController*) thiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj) setDelegate:delegateWrapper];
    thiz->fields.org_xmlvm_iphone_UIImagePickerController.delegateObjC = delegateWrapper;
    thiz->fields.org_xmlvm_iphone_UIImagePickerController.delegateC = n1;
    
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setDelegate___org_xmlvm_iphone_UINavigationControllerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_getMediaTypes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getMediaTypes__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setMediaTypes___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setMediaTypes___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_UIImagePickerController_getVideoMaximumDuration__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getVideoMaximumDuration__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setVideoMaximumDuration___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setVideoMaximumDuration___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIImagePickerController_getVideoQuality__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getVideoQuality__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setVideoQuality___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setVideoQuality___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_getCameraOverlayView__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getCameraOverlayView__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setCameraOverlayView___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setCameraOverlayView___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIImagePickerController_getCameraViewTransform__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getCameraViewTransform__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setCameraViewTransform___org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setCameraViewTransform___org_xmlvm_iphone_CGAffineTransform]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIImagePickerController_isShowsCameraControls__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_isShowsCameraControls__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setShowsCameraControls___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setShowsCameraControls___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIImagePickerController_getCameraCaptureMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getCameraCaptureMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setCameraCaptureMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setCameraCaptureMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIImagePickerController_getCameraDevice__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getCameraDevice__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setCameraDevice___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setCameraDevice___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIImagePickerController_getCameraFlashMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_getCameraFlashMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_setCameraFlashMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_setCameraFlashMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_takePicture__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_takePicture__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIImagePickerController_startVideoCapture__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_startVideoCapture__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIImagePickerController_stopVideoCapture__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIImagePickerController_stopVideoCapture__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

