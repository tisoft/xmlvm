#include "xmlvm.h"

#include "org_xmlvm_iphone_UIImagePickerControllerCameraDevice.h"

#define XMLVM_CURRENT_CLASS_NAME UIImagePickerControllerCameraDevice
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIImagePickerControllerCameraDevice

__TIB_DEFINITION_org_xmlvm_iphone_UIImagePickerControllerCameraDevice __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraDevice, // classInitializer
    "org.xmlvm.iphone.UIImagePickerControllerCameraDevice", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIImagePickerControllerCameraDevice), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Rear;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Front;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Rear",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Rear,
    "",
    JAVA_NULL},
    {"Front",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Front,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIImagePickerControllerCameraDevice();
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

void __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraDevice()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIImagePickerControllerCameraDevice();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIImagePickerControllerCameraDevice()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIImagePickerControllerCameraDevice;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Rear = 0;
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Front = 1;

    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.clazz = __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImagePickerControllerCameraDevice]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIImagePickerControllerCameraDevice(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImagePickerControllerCameraDevice]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImagePickerControllerCameraDevice()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraDevice();
    org_xmlvm_iphone_UIImagePickerControllerCameraDevice* me = (org_xmlvm_iphone_UIImagePickerControllerCameraDevice*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImagePickerControllerCameraDevice));
    me->tib = &__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerControllerCameraDevice(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIImagePickerControllerCameraDevice]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImagePickerControllerCameraDevice()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerCameraDevice_GET_Rear()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraDevice();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Rear;
}

void org_xmlvm_iphone_UIImagePickerControllerCameraDevice_PUT_Rear(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraDevice();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Rear = v;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerCameraDevice_GET_Front()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraDevice();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Front;
}

void org_xmlvm_iphone_UIImagePickerControllerCameraDevice_PUT_Front(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerCameraDevice.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerCameraDevice();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerCameraDevice_Front = v;
}

