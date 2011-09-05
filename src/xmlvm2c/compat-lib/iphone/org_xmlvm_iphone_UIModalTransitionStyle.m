#include "xmlvm.h"

#include "org_xmlvm_iphone_UIModalTransitionStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UIModalTransitionStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIModalTransitionStyle

__TIB_DEFINITION_org_xmlvm_iphone_UIModalTransitionStyle __TIB_org_xmlvm_iphone_UIModalTransitionStyle = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIModalTransitionStyle, // classInitializer
    "org.xmlvm.iphone.UIModalTransitionStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIModalTransitionStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalTransitionStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalTransitionStyle_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalTransitionStyle_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIModalTransitionStyle_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CoverVertical;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_FlipHorizontal;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CrossDissolve;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_PartialCurl;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"CoverVertical",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CoverVertical,
    "",
    JAVA_NULL},
    {"FlipHorizontal",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIModalTransitionStyle_FlipHorizontal,
    "",
    JAVA_NULL},
    {"CrossDissolve",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CrossDissolve,
    "",
    JAVA_NULL},
    {"PartialCurl",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIModalTransitionStyle_PartialCurl,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIModalTransitionStyle();
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

void __INIT_org_xmlvm_iphone_UIModalTransitionStyle()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIModalTransitionStyle);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIModalTransitionStyle);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIModalTransitionStyle.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIModalTransitionStyle.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIModalTransitionStyle();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIModalTransitionStyle()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIModalTransitionStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIModalTransitionStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CoverVertical = 0;
    _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_FlipHorizontal = 1;
    _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CrossDissolve = 2;
    _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_PartialCurl = 3;

    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIModalTransitionStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIModalTransitionStyle);
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.clazz = __CLASS_org_xmlvm_iphone_UIModalTransitionStyle;
    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIModalTransitionStyle_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIModalTransitionStyle);
    __CLASS_org_xmlvm_iphone_UIModalTransitionStyle_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIModalTransitionStyle_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIModalTransitionStyle_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIModalTransitionStyle_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIModalTransitionStyle]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIModalTransitionStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIModalTransitionStyle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIModalTransitionStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIModalTransitionStyle()
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    org_xmlvm_iphone_UIModalTransitionStyle* me = (org_xmlvm_iphone_UIModalTransitionStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIModalTransitionStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UIModalTransitionStyle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIModalTransitionStyle(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIModalTransitionStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIModalTransitionStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIModalTransitionStyle_GET_CoverVertical()
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    return _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CoverVertical;
}

void org_xmlvm_iphone_UIModalTransitionStyle_PUT_CoverVertical(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CoverVertical = v;
}

JAVA_INT org_xmlvm_iphone_UIModalTransitionStyle_GET_FlipHorizontal()
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    return _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_FlipHorizontal;
}

void org_xmlvm_iphone_UIModalTransitionStyle_PUT_FlipHorizontal(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_FlipHorizontal = v;
}

JAVA_INT org_xmlvm_iphone_UIModalTransitionStyle_GET_CrossDissolve()
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    return _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CrossDissolve;
}

void org_xmlvm_iphone_UIModalTransitionStyle_PUT_CrossDissolve(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_CrossDissolve = v;
}

JAVA_INT org_xmlvm_iphone_UIModalTransitionStyle_GET_PartialCurl()
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    return _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_PartialCurl;
}

void org_xmlvm_iphone_UIModalTransitionStyle_PUT_PartialCurl(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIModalTransitionStyle.classInitialized) __INIT_org_xmlvm_iphone_UIModalTransitionStyle();
    _STATIC_org_xmlvm_iphone_UIModalTransitionStyle_PartialCurl = v;
}

