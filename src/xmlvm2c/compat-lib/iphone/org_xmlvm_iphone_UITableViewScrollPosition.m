#include "xmlvm.h"

#include "org_xmlvm_iphone_UITableViewScrollPosition.h"

#define XMLVM_CURRENT_CLASS_NAME UITableViewScrollPosition
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UITableViewScrollPosition

__TIB_DEFINITION_org_xmlvm_iphone_UITableViewScrollPosition __TIB_org_xmlvm_iphone_UITableViewScrollPosition = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UITableViewScrollPosition, // classInitializer
    "org.xmlvm.iphone.UITableViewScrollPosition", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UITableViewScrollPosition), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewScrollPosition;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewScrollPosition_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewScrollPosition_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UITableViewScrollPosition_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_None;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Top;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Middle;
static JAVA_INT _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Bottom;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"None",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewScrollPosition_None,
    "",
    JAVA_NULL},
    {"Top",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Top,
    "",
    JAVA_NULL},
    {"Middle",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Middle,
    "",
    JAVA_NULL},
    {"Bottom",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Bottom,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UITableViewScrollPosition();
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

void __INIT_org_xmlvm_iphone_UITableViewScrollPosition()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UITableViewScrollPosition);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UITableViewScrollPosition.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UITableViewScrollPosition);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UITableViewScrollPosition.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UITableViewScrollPosition.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UITableViewScrollPosition.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.UITableViewScrollPosition")
        __INIT_IMPL_org_xmlvm_iphone_UITableViewScrollPosition();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UITableViewScrollPosition()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(java_lang_Object)
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UITableViewScrollPosition;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UITableViewScrollPosition.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_None = 0;
    _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Top = 0;
    _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Middle = 0;
    _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Bottom = 0;

    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UITableViewScrollPosition = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UITableViewScrollPosition);
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.clazz = __CLASS_org_xmlvm_iphone_UITableViewScrollPosition;
    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UITableViewScrollPosition_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewScrollPosition);
    __CLASS_org_xmlvm_iphone_UITableViewScrollPosition_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewScrollPosition_1ARRAY);
    __CLASS_org_xmlvm_iphone_UITableViewScrollPosition_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UITableViewScrollPosition_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UITableViewScrollPosition]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UITableViewScrollPosition.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UITableViewScrollPosition(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UITableViewScrollPosition]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewScrollPosition(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewScrollPosition]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UITableViewScrollPosition()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
org_xmlvm_iphone_UITableViewScrollPosition* me = (org_xmlvm_iphone_UITableViewScrollPosition*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UITableViewScrollPosition));
    me->tib = &__TIB_org_xmlvm_iphone_UITableViewScrollPosition;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UITableViewScrollPosition(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UITableViewScrollPosition]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UITableViewScrollPosition()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UITableViewScrollPosition_GET_None()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
    return _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_None;
}

void org_xmlvm_iphone_UITableViewScrollPosition_PUT_None(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
_STATIC_org_xmlvm_iphone_UITableViewScrollPosition_None = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewScrollPosition_GET_Top()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
    return _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Top;
}

void org_xmlvm_iphone_UITableViewScrollPosition_PUT_Top(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
_STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Top = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewScrollPosition_GET_Middle()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
    return _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Middle;
}

void org_xmlvm_iphone_UITableViewScrollPosition_PUT_Middle(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
_STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Middle = v;
}

JAVA_INT org_xmlvm_iphone_UITableViewScrollPosition_GET_Bottom()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
    return _STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Bottom;
}

void org_xmlvm_iphone_UITableViewScrollPosition_PUT_Bottom(JAVA_INT v)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_UITableViewScrollPosition)
_STATIC_org_xmlvm_iphone_UITableViewScrollPosition_Bottom = v;
}

