#include "xmlvm.h"

#include "org_xmlvm_iphone_UIImagePickerControllerQualityType.h"

#define XMLVM_CURRENT_CLASS_NAME UIImagePickerControllerQualityType
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIImagePickerControllerQualityType

__TIB_DEFINITION_org_xmlvm_iphone_UIImagePickerControllerQualityType __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType, // classInitializer
    "org.xmlvm.iphone.UIImagePickerControllerQualityType", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIImagePickerControllerQualityType), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_High;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_D640x480;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Medium;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Low;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"High",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_High,
    "",
    JAVA_NULL},
    {"D640x480",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_D640x480,
    "",
    JAVA_NULL},
    {"Medium",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Medium,
    "",
    JAVA_NULL},
    {"Low",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Low,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIImagePickerControllerQualityType();
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

void __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIImagePickerControllerQualityType()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIImagePickerControllerQualityType;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_High = 0;
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_D640x480 = 3;
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Medium = 1;
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Low = 2;

    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType);
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.clazz = __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType;
    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImagePickerControllerQualityType_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIImagePickerControllerQualityType(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIImagePickerControllerQualityType]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerControllerQualityType(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerControllerQualityType]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIImagePickerControllerQualityType()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    org_xmlvm_iphone_UIImagePickerControllerQualityType* me = (org_xmlvm_iphone_UIImagePickerControllerQualityType*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIImagePickerControllerQualityType));
    me->tib = &__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIImagePickerControllerQualityType(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIImagePickerControllerQualityType]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIImagePickerControllerQualityType()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerQualityType_GET_High()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_High;
}

void org_xmlvm_iphone_UIImagePickerControllerQualityType_PUT_High(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_High = v;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerQualityType_GET_D640x480()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_D640x480;
}

void org_xmlvm_iphone_UIImagePickerControllerQualityType_PUT_D640x480(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_D640x480 = v;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerQualityType_GET_Medium()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Medium;
}

void org_xmlvm_iphone_UIImagePickerControllerQualityType_PUT_Medium(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Medium = v;
}

JAVA_INT org_xmlvm_iphone_UIImagePickerControllerQualityType_GET_Low()
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    return _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Low;
}

void org_xmlvm_iphone_UIImagePickerControllerQualityType_PUT_Low(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIImagePickerControllerQualityType.classInitialized) __INIT_org_xmlvm_iphone_UIImagePickerControllerQualityType();
    _STATIC_org_xmlvm_iphone_UIImagePickerControllerQualityType_Low = v;
}

