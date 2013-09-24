#include "xmlvm.h"

#include "org_xmlvm_iphone_UIControlContentVerticalAlignment.h"

#define XMLVM_CURRENT_CLASS_NAME UIControlContentVerticalAlignment
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIControlContentVerticalAlignment

__TIB_DEFINITION_org_xmlvm_iphone_UIControlContentVerticalAlignment __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIControlContentVerticalAlignment, // classInitializer
    "org.xmlvm.iphone.UIControlContentVerticalAlignment", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIControlContentVerticalAlignment), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Center;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Top;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Bottom;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Fill;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Center",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Center,
    "",
    JAVA_NULL},
    {"Top",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Top,
    "",
    JAVA_NULL},
    {"Bottom",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Bottom,
    "",
    JAVA_NULL},
    {"Fill",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Fill,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIControlContentVerticalAlignment();
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

void __INIT_org_xmlvm_iphone_UIControlContentVerticalAlignment()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UIControlContentVerticalAlignment")
        __INIT_IMPL_org_xmlvm_iphone_UIControlContentVerticalAlignment();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIControlContentVerticalAlignment()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIControlContentVerticalAlignment;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Center = 0;
    _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Top = 1;
    _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Bottom = 2;
    _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Fill = 3;

    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment);
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.clazz = __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment;
    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment);
    __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIControlContentVerticalAlignment_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIControlContentVerticalAlignment]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIControlContentVerticalAlignment(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIControlContentVerticalAlignment]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlContentVerticalAlignment(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlContentVerticalAlignment]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIControlContentVerticalAlignment()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
org_xmlvm_iphone_UIControlContentVerticalAlignment* me = (org_xmlvm_iphone_UIControlContentVerticalAlignment*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIControlContentVerticalAlignment));
    me->tib = &__TIB_org_xmlvm_iphone_UIControlContentVerticalAlignment;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIControlContentVerticalAlignment(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIControlContentVerticalAlignment]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIControlContentVerticalAlignment()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIControlContentVerticalAlignment_GET_Center()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
    return _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Center;
}

void org_xmlvm_iphone_UIControlContentVerticalAlignment_PUT_Center(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
_STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Center = v;
}

JAVA_INT org_xmlvm_iphone_UIControlContentVerticalAlignment_GET_Top()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
    return _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Top;
}

void org_xmlvm_iphone_UIControlContentVerticalAlignment_PUT_Top(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
_STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Top = v;
}

JAVA_INT org_xmlvm_iphone_UIControlContentVerticalAlignment_GET_Bottom()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
    return _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Bottom;
}

void org_xmlvm_iphone_UIControlContentVerticalAlignment_PUT_Bottom(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
_STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Bottom = v;
}

JAVA_INT org_xmlvm_iphone_UIControlContentVerticalAlignment_GET_Fill()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
    return _STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Fill;
}

void org_xmlvm_iphone_UIControlContentVerticalAlignment_PUT_Fill(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UIControlContentVerticalAlignment)
_STATIC_org_xmlvm_iphone_UIControlContentVerticalAlignment_Fill = v;
}

