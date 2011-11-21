#include "xmlvm.h"

#include "org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.h"

#define XMLVM_CURRENT_CLASS_NAME UIImagePickerControllerCameraFlashMode
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode

__TIB_DEFINITION_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode, // classInitializer
    "org.xmlvm.iphone.UIImagePickerControllerCameraFlashMode", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Off;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Auto;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_On;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Off",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Off,
    "",
    JAVA_NULL},
    {"Auto",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Auto,
    "",
    JAVA_NULL},
    {"On",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_On,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
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

void __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Off = -1;
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Auto = 0;
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_On = 1;

    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.clazz = __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
    org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode* me = (org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode));
    me->tib = &__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_GET_Off()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Off;
}

void org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_PUT_Off(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Off = v;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_GET_Auto()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Auto;
}

void org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_PUT_Auto(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_Auto = v;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_GET_On()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_On;
}

void org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_PUT_On(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraFlashMode_On = v;
}

