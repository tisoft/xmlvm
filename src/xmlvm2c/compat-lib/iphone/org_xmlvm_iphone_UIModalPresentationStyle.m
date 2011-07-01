#include "xmlvm.h"

#include "org_xmlvm_iphone_UIModalPresentationStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UIModalPresentationStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIModalPresentationStyle

__TIB_DEFINITION_org_xmlvm_iphone_UIModalPresentationStyle __TIB_org_xmlvm_iphone_UIModalPresentationStyle = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIModalPresentationStyle, // classInitializer
    "org.xmlvm.iphone.UIModalPresentationStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIModalPresentationStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalPresentationStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FullScreen;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_PageSheet;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FormSheet;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_CurrentContext;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"FullScreen",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FullScreen,
    "",
    JAVA_NULL},
    {"PageSheet",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIModalPresentationStyle_PageSheet,
    "",
    JAVA_NULL},
    {"FormSheet",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FormSheet,
    "",
    JAVA_NULL},
    {"CurrentContext",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIModalPresentationStyle_CurrentContext,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIModalPresentationStyle();
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

void __INIT_org_xmlvm_iphone_UIModalPresentationStyle()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIModalPresentationStyle);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIModalPresentationStyle);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIModalPresentationStyle.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIModalPresentationStyle.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIModalPresentationStyle();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIModalPresentationStyle()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIModalPresentationStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIModalPresentationStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FullScreen = 0;
    _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_PageSheet = 1;
    _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FormSheet = 2;
    _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_CurrentContext = 3;

    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIModalPresentationStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIModalPresentationStyle);
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.clazz = __CLASS_org_xmlvm_iphone_UIModalPresentationStyle;
    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIModalPresentationStyle);
    __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIModalPresentationStyle_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIModalPresentationStyle_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIModalPresentationStyle_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIModalPresentationStyle]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIModalPresentationStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIModalPresentationStyle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIModalPresentationStyle(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIModalPresentationStyle()
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    org_xmlvm_iphone_UIModalPresentationStyle* me = (org_xmlvm_iphone_UIModalPresentationStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIModalPresentationStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UIModalPresentationStyle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIModalPresentationStyle(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIModalPresentationStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIModalPresentationStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIModalPresentationStyle_GET_FullScreen()
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    return _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FullScreen;
}

void org_xmlvm_iphone_UIModalPresentationStyle_PUT_FullScreen(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FullScreen = v;
}

JAVA_INT org_xmlvm_iphone_UIModalPresentationStyle_GET_PageSheet()
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    return _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_PageSheet;
}

void org_xmlvm_iphone_UIModalPresentationStyle_PUT_PageSheet(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_PageSheet = v;
}

JAVA_INT org_xmlvm_iphone_UIModalPresentationStyle_GET_FormSheet()
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    return _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FormSheet;
}

void org_xmlvm_iphone_UIModalPresentationStyle_PUT_FormSheet(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_FormSheet = v;
}

JAVA_INT org_xmlvm_iphone_UIModalPresentationStyle_GET_CurrentContext()
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    return _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_CurrentContext;
}

void org_xmlvm_iphone_UIModalPresentationStyle_PUT_CurrentContext(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIModalPresentationStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalPresentationStyle();
    _STATIC_org_xmlvm_iphone_UIModalPresentationStyle_CurrentContext = v;
}

