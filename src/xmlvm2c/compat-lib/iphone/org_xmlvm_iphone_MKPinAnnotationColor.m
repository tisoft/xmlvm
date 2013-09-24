#include "xmlvm.h"

#include "org_xmlvm_iphone_MKPinAnnotationColor.h"

#define XMLVM_CURRENT_CLASS_NAME MKPinAnnotationColor
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKPinAnnotationColor

__TIB_DEFINITION_org_xmlvm_iphone_MKPinAnnotationColor __TIB_org_xmlvm_iphone_MKPinAnnotationColor = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_MKPinAnnotationColor, // classInitializer
    "org.xmlvm.iphone.MKPinAnnotationColor", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_MKPinAnnotationColor), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPinAnnotationColor;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Red;
static JAVA_INT _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Green;
static JAVA_INT _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Purple;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Red",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Red,
    "",
    JAVA_NULL},
    {"Green",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Green,
    "",
    JAVA_NULL},
    {"Purple",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Purple,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKPinAnnotationColor();
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
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKPinAnnotationColor()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_MKPinAnnotationColor);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_MKPinAnnotationColor.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_MKPinAnnotationColor);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_MKPinAnnotationColor.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_MKPinAnnotationColor.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_MKPinAnnotationColor.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.MKPinAnnotationColor")
        __INIT_IMPL_org_xmlvm_iphone_MKPinAnnotationColor();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_MKPinAnnotationColor()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKPinAnnotationColor;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKPinAnnotationColor.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Red = 0;
    _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Green = 0;
    _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Purple = 0;

    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKPinAnnotationColor = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKPinAnnotationColor);
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.clazz = __CLASS_org_xmlvm_iphone_MKPinAnnotationColor;
    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKPinAnnotationColor);
    __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKPinAnnotationColor_1ARRAY);
    __CLASS_org_xmlvm_iphone_MKPinAnnotationColor_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKPinAnnotationColor_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKPinAnnotationColor]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_MKPinAnnotationColor.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_MKPinAnnotationColor(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKPinAnnotationColor]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKPinAnnotationColor(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKPinAnnotationColor]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKPinAnnotationColor()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_MKPinAnnotationColor)
org_xmlvm_iphone_MKPinAnnotationColor* me = (org_xmlvm_iphone_MKPinAnnotationColor*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKPinAnnotationColor));
    me->tib = &__TIB_org_xmlvm_iphone_MKPinAnnotationColor;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKPinAnnotationColor(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKPinAnnotationColor]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKPinAnnotationColor()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_MKPinAnnotationColor_GET_Red()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_MKPinAnnotationColor)
    return _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Red;
}

void org_xmlvm_iphone_MKPinAnnotationColor_PUT_Red(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_MKPinAnnotationColor)
_STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Red = v;
}

JAVA_INT org_xmlvm_iphone_MKPinAnnotationColor_GET_Green()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_MKPinAnnotationColor)
    return _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Green;
}

void org_xmlvm_iphone_MKPinAnnotationColor_PUT_Green(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_MKPinAnnotationColor)
_STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Green = v;
}

JAVA_INT org_xmlvm_iphone_MKPinAnnotationColor_GET_Purple()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_MKPinAnnotationColor)
    return _STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Purple;
}

void org_xmlvm_iphone_MKPinAnnotationColor_PUT_Purple(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_MKPinAnnotationColor)
_STATIC_org_xmlvm_iphone_MKPinAnnotationColor_Purple = v;
}

