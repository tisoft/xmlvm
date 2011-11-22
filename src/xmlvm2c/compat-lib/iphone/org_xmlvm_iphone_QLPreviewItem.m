#include "xmlvm.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_NSURL.h"

#include "org_xmlvm_iphone_QLPreviewItem.h"

#define XMLVM_CURRENT_CLASS_NAME QLPreviewItem
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_QLPreviewItem

__TIB_DEFINITION_org_xmlvm_iphone_QLPreviewItem __TIB_org_xmlvm_iphone_QLPreviewItem = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_QLPreviewItem, // classInitializer
    "org.xmlvm.iphone.QLPreviewItem", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_QLPreviewItem), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewItem;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewItem_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewItem_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_QLPreviewItem_3ARRAY;
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
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_QLPreviewItem();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_QLPreviewItem___INIT___(obj);
        break;
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

void __INIT_org_xmlvm_iphone_QLPreviewItem()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_QLPreviewItem);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_QLPreviewItem.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_QLPreviewItem.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_QLPreviewItem);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_QLPreviewItem.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_QLPreviewItem.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_QLPreviewItem.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_QLPreviewItem();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_QLPreviewItem()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_QLPreviewItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_QLPreviewItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_QLPreviewItem.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_QLPreviewItem.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_QLPreviewItem.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_QLPreviewItem.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewItem.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_QLPreviewItem.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_QLPreviewItem.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewItem.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_QLPreviewItem.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_QLPreviewItem.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_QLPreviewItem.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_QLPreviewItem = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_QLPreviewItem);
    __TIB_org_xmlvm_iphone_QLPreviewItem.clazz = __CLASS_org_xmlvm_iphone_QLPreviewItem;
    __TIB_org_xmlvm_iphone_QLPreviewItem.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_QLPreviewItem_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewItem);
    __CLASS_org_xmlvm_iphone_QLPreviewItem_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewItem_1ARRAY);
    __CLASS_org_xmlvm_iphone_QLPreviewItem_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_QLPreviewItem_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_QLPreviewItem]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_QLPreviewItem.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_QLPreviewItem(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_QLPreviewItem]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewItem(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_QLPreviewItem()
{
    if (!__TIB_org_xmlvm_iphone_QLPreviewItem.classInitialized) __INIT_org_xmlvm_iphone_QLPreviewItem();
    org_xmlvm_iphone_QLPreviewItem* me = (org_xmlvm_iphone_QLPreviewItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_QLPreviewItem));
    me->tib = &__TIB_org_xmlvm_iphone_QLPreviewItem;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_QLPreviewItem(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_QLPreviewItem]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_QLPreviewItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_QLPreviewItem();
    org_xmlvm_iphone_QLPreviewItem___INIT___(me);
    return me;
}

void org_xmlvm_iphone_QLPreviewItem___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_QLPreviewItem___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

