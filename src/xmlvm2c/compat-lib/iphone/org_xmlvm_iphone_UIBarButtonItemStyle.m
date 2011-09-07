#include "xmlvm.h"

#include "org_xmlvm_iphone_UIBarButtonItemStyle.h"

#define XMLVM_CURRENT_CLASS_NAME UIBarButtonItemStyle
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIBarButtonItemStyle

__TIB_DEFINITION_org_xmlvm_iphone_UIBarButtonItemStyle __TIB_org_xmlvm_iphone_UIBarButtonItemStyle = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIBarButtonItemStyle, // classInitializer
    "org.xmlvm.iphone.UIBarButtonItemStyle", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIBarButtonItemStyle), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Plain",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain,
    "",
    JAVA_NULL},
    {"Bordered",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered,
    "",
    JAVA_NULL},
    {"Done",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIBarButtonItemStyle();
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

void __INIT_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIBarButtonItemStyle);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIBarButtonItemStyle);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIBarButtonItemStyle();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItemStyle;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain = 0;
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered = 1;
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done = 2;

    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIBarButtonItemStyle);
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.clazz = __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle;
    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle);
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIBarButtonItemStyle_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIBarButtonItemStyle(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarButtonItemStyle(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    org_xmlvm_iphone_UIBarButtonItemStyle* me = (org_xmlvm_iphone_UIBarButtonItemStyle*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIBarButtonItemStyle));
    me->tib = &__TIB_org_xmlvm_iphone_UIBarButtonItemStyle;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIBarButtonItemStyle(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIBarButtonItemStyle]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIBarButtonItemStyle()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Plain()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Plain(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Plain = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Bordered()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Bordered(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Bordered = v;
}

JAVA_INT org_xmlvm_iphone_UIBarButtonItemStyle_GET_Done()
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    return _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done;
}

void org_xmlvm_iphone_UIBarButtonItemStyle_PUT_Done(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIBarButtonItemStyle.classInitialized) __INIT_org_xmlvm_iphone_UIBarButtonItemStyle();
    _STATIC_org_xmlvm_iphone_UIBarButtonItemStyle_Done = v;
}

