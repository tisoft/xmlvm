#include "xmlvm.h"
#include "org_xmlvm_iphone_QLPreviewController.h"
#include "org_xmlvm_iphone_QLPreviewItem.h"

#include "org_xmlvm_iphone_QLPreviewControllerDataSource.h"

#define XMLVM_CURRENT_CLASS_NAME QLPreviewControllerDataSource
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_QLPreviewControllerDataSource

__TIB_DEFINITION_org_xmlvm_iphone_QLPreviewControllerDataSource __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_QLPreviewControllerDataSource, // classInitializer
    "org.xmlvm.iphone.QLPreviewControllerDataSource", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_QLPreviewControllerDataSource), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_QLPreviewControllerDataSource();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_QLPreviewControllerDataSource___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_QLPreviewController,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_QLPreviewController,
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"numberOfPreviewItemsInPreviewController",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/QLPreviewController;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"previewController",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/QLPreviewController;I)Lorg/xmlvm/iphone/QLPreviewItem;",
    JAVA_NULL,
    JAVA_NULL},
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
    case 0:
        //conversion.i = (JAVA_INT) org_xmlvm_iphone_QLPreviewControllerDataSource_numberOfPreviewItemsInPreviewController___org_xmlvm_iphone_QLPreviewController(receiver, argsArray[0]);
        XMLVM_INTERNAL_ERROR();
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 1:
        //result = (JAVA_OBJECT) org_xmlvm_iphone_QLPreviewControllerDataSource_previewController___org_xmlvm_iphone_QLPreviewController_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        XMLVM_INTERNAL_ERROR();
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_QLPreviewControllerDataSource()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_QLPreviewControllerDataSource);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_QLPreviewControllerDataSource);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_QLPreviewControllerDataSource();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_QLPreviewControllerDataSource()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_QLPreviewControllerDataSource;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_QLPreviewControllerDataSource);
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.clazz = __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource;
    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource);
    __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource_1ARRAY);
    __CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewControllerDataSource_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_QLPreviewControllerDataSource]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_QLPreviewControllerDataSource(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_QLPreviewControllerDataSource]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewControllerDataSource(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewControllerDataSource]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_QLPreviewControllerDataSource()
{
    if (!__TIB_org_xmlvm_iphone_QLPreviewControllerDataSource.classInitialized) __INIT_org_xmlvm_iphone_QLPreviewControllerDataSource();
    org_xmlvm_iphone_QLPreviewControllerDataSource* me = (org_xmlvm_iphone_QLPreviewControllerDataSource*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_QLPreviewControllerDataSource));
    me->tib = &__TIB_org_xmlvm_iphone_QLPreviewControllerDataSource;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewControllerDataSource(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_QLPreviewControllerDataSource]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_QLPreviewControllerDataSource()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_QLPreviewControllerDataSource();
    org_xmlvm_iphone_QLPreviewControllerDataSource___INIT___(me);
    return me;
}

void org_xmlvm_iphone_QLPreviewControllerDataSource___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewControllerDataSource___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

