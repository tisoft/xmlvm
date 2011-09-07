#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_ADBannerContentSizeIdentifier.h"

#define XMLVM_CURRENT_CLASS_NAME ADBannerContentSizeIdentifier
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_ADBannerContentSizeIdentifier

__TIB_DEFINITION_org_xmlvm_iphone_ADBannerContentSizeIdentifier __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_ADBannerContentSizeIdentifier, // classInitializer
    "org.xmlvm.iphone.ADBannerContentSizeIdentifier", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_ADBannerContentSizeIdentifier), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_OBJECT _STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Portrait;
static JAVA_OBJECT _STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Landscape;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Portrait",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Portrait,
    "",
    JAVA_NULL},
    {"Landscape",
    &__CLASS_java_lang_String,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Landscape,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_ADBannerContentSizeIdentifier();
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

void __INIT_org_xmlvm_iphone_ADBannerContentSizeIdentifier()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_ADBannerContentSizeIdentifier();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_ADBannerContentSizeIdentifier()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_ADBannerContentSizeIdentifier;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Portrait = (java_lang_String*) xmlvm_create_java_string_from_pool(33);
    _STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Landscape = (java_lang_String*) xmlvm_create_java_string_from_pool(34);

    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier);
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.clazz = __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier;
    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier);
    __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier_1ARRAY);
    __CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_ADBannerContentSizeIdentifier_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_ADBannerContentSizeIdentifier]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_ADBannerContentSizeIdentifier(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_ADBannerContentSizeIdentifier]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerContentSizeIdentifier(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerContentSizeIdentifier]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_ADBannerContentSizeIdentifier()
{
    if (!__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitialized) __INIT_org_xmlvm_iphone_ADBannerContentSizeIdentifier();
    org_xmlvm_iphone_ADBannerContentSizeIdentifier* me = (org_xmlvm_iphone_ADBannerContentSizeIdentifier*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_ADBannerContentSizeIdentifier));
    me->tib = &__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_ADBannerContentSizeIdentifier(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_ADBannerContentSizeIdentifier]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_ADBannerContentSizeIdentifier()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_ADBannerContentSizeIdentifier_GET_Portrait()
{
    if (!__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitialized) __INIT_org_xmlvm_iphone_ADBannerContentSizeIdentifier();
    return _STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Portrait;
}

void org_xmlvm_iphone_ADBannerContentSizeIdentifier_PUT_Portrait(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitialized) __INIT_org_xmlvm_iphone_ADBannerContentSizeIdentifier();
    _STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Portrait = v;
}

JAVA_OBJECT org_xmlvm_iphone_ADBannerContentSizeIdentifier_GET_Landscape()
{
    if (!__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitialized) __INIT_org_xmlvm_iphone_ADBannerContentSizeIdentifier();
    return _STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Landscape;
}

void org_xmlvm_iphone_ADBannerContentSizeIdentifier_PUT_Landscape(JAVA_OBJECT v)
{
    if (!__TIB_org_xmlvm_iphone_ADBannerContentSizeIdentifier.classInitialized) __INIT_org_xmlvm_iphone_ADBannerContentSizeIdentifier();
    _STATIC_org_xmlvm_iphone_ADBannerContentSizeIdentifier_Landscape = v;
}

