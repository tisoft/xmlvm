#include "xmlvm.h"

#include "org_xmlvm_iphone_UIUserInterfaceIdiom.h"

// Include implemented interfaces

#define XMLVM_CURRENT_CLASS_NAME UIUserInterfaceIdiom
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIUserInterfaceIdiom

__TIB_DEFINITION_org_xmlvm_iphone_UIUserInterfaceIdiom __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom, // classInitializer
    "org.xmlvm.iphone.UIUserInterfaceIdiom", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_UIUserInterfaceIdiom), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone;
static JAVA_INT _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Phone",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone,
    "",
    JAVA_NULL},
    {"Pad",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIUserInterfaceIdiom();
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

void __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIUserInterfaceIdiom();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIUserInterfaceIdiom()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIUserInterfaceIdiom;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone = 0;
    _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad = 1;

    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom);
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.clazz = __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom;
    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom);
    __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIUserInterfaceIdiom_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIUserInterfaceIdiom]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_UIUserInterfaceIdiom(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIUserInterfaceIdiom]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIUserInterfaceIdiom(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIUserInterfaceIdiom]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIUserInterfaceIdiom()
{
    if (!__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    org_xmlvm_iphone_UIUserInterfaceIdiom* me = (org_xmlvm_iphone_UIUserInterfaceIdiom*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIUserInterfaceIdiom));
    me->tib = &__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIUserInterfaceIdiom(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIUserInterfaceIdiom]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIUserInterfaceIdiom()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_UIUserInterfaceIdiom_GET_Phone()
{
    if (!__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    return _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone;
}

void org_xmlvm_iphone_UIUserInterfaceIdiom_PUT_Phone(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Phone = v;
}

JAVA_INT org_xmlvm_iphone_UIUserInterfaceIdiom_GET_Pad()
{
    if (!__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    return _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad;
}

void org_xmlvm_iphone_UIUserInterfaceIdiom_PUT_Pad(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_UIUserInterfaceIdiom.classInitialized) __INIT_org_xmlvm_iphone_UIUserInterfaceIdiom();
    _STATIC_org_xmlvm_iphone_UIUserInterfaceIdiom_Pad = v;
}

