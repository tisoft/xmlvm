#include "xmlvm.h"

#include "org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.h"

#define XMLVM_CURRENT_CLASS_NAME NSError_ErrorCode_NSCocoa
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSError_ErrorCode_NSCocoa

__TIB_DEFINITION_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa, // classInitializer
    "org.xmlvm.iphone.NSError$ErrorCode$NSCocoa", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSError_ErrorCode_NSCocoa), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileNoSuchFileError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileLockingError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoPermissionError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInvalidFileNameError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadCorruptFileError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoSuchFileError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInapplicableStringEncodingError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnsupportedSchemeError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadTooLargeError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownStringEncodingError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnknownError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteNoPermissionError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInvalidFileNameError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInapplicableStringEncodingError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnsupportedSchemeError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteOutOfSpaceError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteVolumeReadOnlyError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSKeyValueValidationError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSUserCancelledError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMinimum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMaximum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMinimum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMaximum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMinimum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMaximum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadCorruptError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadUnknownVersionError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadStreamError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListWriteStreamError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMinimum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMaximum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMinimum;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableNotLoadableError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableArchitectureMismatchError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableRuntimeMismatchError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLoadError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLinkError;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMaximum;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"NSFileNoSuchFileError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileNoSuchFileError,
    "",
    JAVA_NULL},
    {"NSFileLockingError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileLockingError,
    "",
    JAVA_NULL},
    {"NSFileReadUnknownError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownError,
    "",
    JAVA_NULL},
    {"NSFileReadNoPermissionError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoPermissionError,
    "",
    JAVA_NULL},
    {"NSFileReadInvalidFileNameError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInvalidFileNameError,
    "",
    JAVA_NULL},
    {"NSFileReadCorruptFileError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadCorruptFileError,
    "",
    JAVA_NULL},
    {"NSFileReadNoSuchFileError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoSuchFileError,
    "",
    JAVA_NULL},
    {"NSFileReadInapplicableStringEncodingError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInapplicableStringEncodingError,
    "",
    JAVA_NULL},
    {"NSFileReadUnsupportedSchemeError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnsupportedSchemeError,
    "",
    JAVA_NULL},
    {"NSFileReadTooLargeError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadTooLargeError,
    "",
    JAVA_NULL},
    {"NSFileReadUnknownStringEncodingError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownStringEncodingError,
    "",
    JAVA_NULL},
    {"NSFileWriteUnknownError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnknownError,
    "",
    JAVA_NULL},
    {"NSFileWriteNoPermissionError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteNoPermissionError,
    "",
    JAVA_NULL},
    {"NSFileWriteInvalidFileNameError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInvalidFileNameError,
    "",
    JAVA_NULL},
    {"NSFileWriteInapplicableStringEncodingError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInapplicableStringEncodingError,
    "",
    JAVA_NULL},
    {"NSFileWriteUnsupportedSchemeError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnsupportedSchemeError,
    "",
    JAVA_NULL},
    {"NSFileWriteOutOfSpaceError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteOutOfSpaceError,
    "",
    JAVA_NULL},
    {"NSFileWriteVolumeReadOnlyError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteVolumeReadOnlyError,
    "",
    JAVA_NULL},
    {"NSKeyValueValidationError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSKeyValueValidationError,
    "",
    JAVA_NULL},
    {"NSFormattingError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingError,
    "",
    JAVA_NULL},
    {"NSUserCancelledError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSUserCancelledError,
    "",
    JAVA_NULL},
    {"NSFileErrorMinimum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMinimum,
    "",
    JAVA_NULL},
    {"NSFileErrorMaximum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMaximum,
    "",
    JAVA_NULL},
    {"NSValidationErrorMinimum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMinimum,
    "",
    JAVA_NULL},
    {"NSValidationErrorMaximum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMaximum,
    "",
    JAVA_NULL},
    {"NSFormattingErrorMinimum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMinimum,
    "",
    JAVA_NULL},
    {"NSFormattingErrorMaximum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMaximum,
    "",
    JAVA_NULL},
    {"NSPropertyListReadCorruptError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadCorruptError,
    "",
    JAVA_NULL},
    {"NSPropertyListReadUnknownVersionError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadUnknownVersionError,
    "",
    JAVA_NULL},
    {"NSPropertyListReadStreamError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadStreamError,
    "",
    JAVA_NULL},
    {"NSPropertyListWriteStreamError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListWriteStreamError,
    "",
    JAVA_NULL},
    {"NSPropertyListErrorMinimum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMinimum,
    "",
    JAVA_NULL},
    {"NSPropertyListErrorMaximum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMaximum,
    "",
    JAVA_NULL},
    {"NSExecutableErrorMinimum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMinimum,
    "",
    JAVA_NULL},
    {"NSExecutableNotLoadableError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableNotLoadableError,
    "",
    JAVA_NULL},
    {"NSExecutableArchitectureMismatchError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableArchitectureMismatchError,
    "",
    JAVA_NULL},
    {"NSExecutableRuntimeMismatchError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableRuntimeMismatchError,
    "",
    JAVA_NULL},
    {"NSExecutableLoadError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLoadError,
    "",
    JAVA_NULL},
    {"NSExecutableLinkError",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLinkError,
    "",
    JAVA_NULL},
    {"NSExecutableErrorMaximum",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMaximum,
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
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSError_ErrorCode_NSCocoa___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileNoSuchFileError = 4;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileLockingError = 255;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownError = 256;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoPermissionError = 257;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInvalidFileNameError = 258;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadCorruptFileError = 259;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoSuchFileError = 260;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInapplicableStringEncodingError = 261;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnsupportedSchemeError = 262;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadTooLargeError = 263;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownStringEncodingError = 264;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnknownError = 512;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteNoPermissionError = 513;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInvalidFileNameError = 514;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInapplicableStringEncodingError = 517;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnsupportedSchemeError = 518;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteOutOfSpaceError = 640;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteVolumeReadOnlyError = 642;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSKeyValueValidationError = 1024;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingError = 2048;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSUserCancelledError = 3072;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMinimum = 0;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMaximum = 1023;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMinimum = 1024;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMaximum = 2047;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMinimum = 2048;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMaximum = 2559;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadCorruptError = 3840;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadUnknownVersionError = 3841;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadStreamError = 3842;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListWriteStreamError = 3851;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMinimum = 3840;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMaximum = 4095;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMinimum = 3584;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableNotLoadableError = 3584;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableArchitectureMismatchError = 3585;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableRuntimeMismatchError = 3586;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLoadError = 3587;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLinkError = 3588;
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMaximum = 3839;

    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa);
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.clazz = __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa;
    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa);
    __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    org_xmlvm_iphone_NSError_ErrorCode_NSCocoa* me = (org_xmlvm_iphone_NSError_ErrorCode_NSCocoa*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSError_ErrorCode_NSCocoa));
    me->tib = &__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    org_xmlvm_iphone_NSError_ErrorCode_NSCocoa___INIT___(me);
    return me;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileNoSuchFileError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileNoSuchFileError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileNoSuchFileError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileNoSuchFileError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileLockingError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileLockingError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileLockingError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileLockingError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadUnknownError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadUnknownError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadNoPermissionError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoPermissionError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadNoPermissionError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoPermissionError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadInvalidFileNameError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInvalidFileNameError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadInvalidFileNameError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInvalidFileNameError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadCorruptFileError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadCorruptFileError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadCorruptFileError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadCorruptFileError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadNoSuchFileError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoSuchFileError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadNoSuchFileError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadNoSuchFileError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadInapplicableStringEncodingError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInapplicableStringEncodingError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadInapplicableStringEncodingError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadInapplicableStringEncodingError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadUnsupportedSchemeError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnsupportedSchemeError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadUnsupportedSchemeError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnsupportedSchemeError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadTooLargeError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadTooLargeError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadTooLargeError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadTooLargeError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileReadUnknownStringEncodingError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownStringEncodingError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileReadUnknownStringEncodingError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileReadUnknownStringEncodingError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileWriteUnknownError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnknownError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileWriteUnknownError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnknownError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileWriteNoPermissionError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteNoPermissionError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileWriteNoPermissionError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteNoPermissionError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileWriteInvalidFileNameError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInvalidFileNameError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileWriteInvalidFileNameError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInvalidFileNameError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileWriteInapplicableStringEncodingError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInapplicableStringEncodingError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileWriteInapplicableStringEncodingError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteInapplicableStringEncodingError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileWriteUnsupportedSchemeError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnsupportedSchemeError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileWriteUnsupportedSchemeError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteUnsupportedSchemeError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileWriteOutOfSpaceError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteOutOfSpaceError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileWriteOutOfSpaceError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteOutOfSpaceError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileWriteVolumeReadOnlyError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteVolumeReadOnlyError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileWriteVolumeReadOnlyError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileWriteVolumeReadOnlyError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSKeyValueValidationError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSKeyValueValidationError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSKeyValueValidationError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSKeyValueValidationError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFormattingError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFormattingError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSUserCancelledError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSUserCancelledError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSUserCancelledError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSUserCancelledError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileErrorMinimum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMinimum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileErrorMinimum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMinimum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFileErrorMaximum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMaximum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFileErrorMaximum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFileErrorMaximum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSValidationErrorMinimum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMinimum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSValidationErrorMinimum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMinimum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSValidationErrorMaximum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMaximum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSValidationErrorMaximum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSValidationErrorMaximum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFormattingErrorMinimum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMinimum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFormattingErrorMinimum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMinimum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSFormattingErrorMaximum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMaximum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSFormattingErrorMaximum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSFormattingErrorMaximum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSPropertyListReadCorruptError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadCorruptError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSPropertyListReadCorruptError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadCorruptError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSPropertyListReadUnknownVersionError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadUnknownVersionError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSPropertyListReadUnknownVersionError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadUnknownVersionError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSPropertyListReadStreamError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadStreamError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSPropertyListReadStreamError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListReadStreamError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSPropertyListWriteStreamError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListWriteStreamError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSPropertyListWriteStreamError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListWriteStreamError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSPropertyListErrorMinimum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMinimum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSPropertyListErrorMinimum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMinimum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSPropertyListErrorMaximum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMaximum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSPropertyListErrorMaximum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSPropertyListErrorMaximum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSExecutableErrorMinimum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMinimum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSExecutableErrorMinimum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMinimum = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSExecutableNotLoadableError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableNotLoadableError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSExecutableNotLoadableError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableNotLoadableError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSExecutableArchitectureMismatchError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableArchitectureMismatchError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSExecutableArchitectureMismatchError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableArchitectureMismatchError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSExecutableRuntimeMismatchError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableRuntimeMismatchError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSExecutableRuntimeMismatchError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableRuntimeMismatchError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSExecutableLoadError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLoadError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSExecutableLoadError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLoadError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSExecutableLinkError()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLinkError;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSExecutableLinkError(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableLinkError = v;
}

JAVA_INT org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_GET_NSExecutableErrorMaximum()
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    return _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMaximum;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_PUT_NSExecutableErrorMaximum(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa.classInitialized) __INIT_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa();
    _STATIC_org_xmlvm_iphone_NSError_ErrorCode_NSCocoa_NSExecutableErrorMaximum = v;
}

void org_xmlvm_iphone_NSError_ErrorCode_NSCocoa___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSError_ErrorCode_NSCocoa___INIT___]
    java_lang_Thread* curThread;
    XMLVM_ENTER_METHOD("org.xmlvm.iphone.NSError$ErrorCode$NSCocoa", "<init>", "?")
    XMLVMElem _r0;
    _r0.o = me;
    XMLVM_SOURCE_POSITION("NSError.java", 91)
    java_lang_Object___INIT___(_r0.o);
    XMLVM_EXIT_METHOD()
    return;
    //XMLVM_END_WRAPPER
}

