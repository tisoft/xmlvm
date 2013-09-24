#include "xmlvm.h"

#include "org_xmlvm_iphone_UIBarStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UIBarStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIBarStyle

__TIB_DEFINITION_org_xmlvm_iphone_UIBarStyle __TIB_org_xmlvm_iphone_UIBarStyle = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIBarStyle, // classInitializer
    "org.xmlvm.iphone.UIBarStyle", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIBarStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarStyle_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarStyle_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarStyle_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarStyle_Default;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarStyle_Black;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Default",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarStyle_Default,
    "",
    JAVA_NULL},
    {"Black",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarStyle_Black,
    "",
    JAVA_NULL},
    {"BlackOpaque",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque,
    "",
    JAVA_NULL},
    {"BlackTranslucent",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIBarStyle();
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

void __INIT_org_xmlvm_iphone_UIBarStyle()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIBarStyle);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIBarStyle.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIBarStyle.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIBarStyle);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIBarStyle.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIBarStyle.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIBarStyle.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIBarStyle")
        __INIT_IMPL_org_xmlvm_iphone_UIBarStyle();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIBarStyle()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_UIBarStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIBarStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIBarStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIBarStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIBarStyle_Default = 0;
    _STATIC_org_xmlvm_iphone_UIBarStyle_Black = 1;
    _STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque = 1;
    _STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent = 2;

    __TIB_org_xmlvm_iphone_UIBarStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIBarStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIBarStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIBarStyle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIBarStyle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIBarStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIBarStyle);
    __TIB_org_xmlvm_iphone_UIBarStyle.clazz = __CLASS_org_xmlvm_iphone_UIBarStyle;
    __TIB_org_xmlvm_iphone_UIBarStyle.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIBarStyle_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarStyle);
    __CLASS_org_xmlvm_iphone_UIBarStyle_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarStyle_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIBarStyle_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarStyle_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarStyle]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIBarStyle.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIBarStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarStyle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarStyle()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
org_xmlvm_iphone_UIBarStyle* me = (org_xmlvm_iphone_UIBarStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UIBarStyle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarStyle(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_Default()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
    return _STATIC_org_xmlvm_iphone_UIBarStyle_Default;
}

void org_xmlvm_iphone_UIBarStyle_PUT_Default(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
_STATIC_org_xmlvm_iphone_UIBarStyle_Default = v;
}

JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_Black()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
    return _STATIC_org_xmlvm_iphone_UIBarStyle_Black;
}

void org_xmlvm_iphone_UIBarStyle_PUT_Black(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
_STATIC_org_xmlvm_iphone_UIBarStyle_Black = v;
}

JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_BlackOpaque()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
    return _STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque;
}

void org_xmlvm_iphone_UIBarStyle_PUT_BlackOpaque(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
_STATIC_org_xmlvm_iphone_UIBarStyle_BlackOpaque = v;
}

JAVA_INT org_xmlvm_iphone_UIBarStyle_GET_BlackTranslucent()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
    return _STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent;
}

void org_xmlvm_iphone_UIBarStyle_PUT_BlackTranslucent(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIBarStyle)
_STATIC_org_xmlvm_iphone_UIBarStyle_BlackTranslucent = v;
}

