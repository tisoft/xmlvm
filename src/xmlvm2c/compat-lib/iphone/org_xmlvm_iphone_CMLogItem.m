#include "xmlvm.h"

#include "org_xmlvm_iphone_CMLogItem.h"

#define XMLVM_CURRENT_CLASS_NAME CMLogItem
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CMLogItem

__TIB_DEFINITION_org_xmlvm_iphone_CMLogItem __TIB_org_xmlvm_iphone_CMLogItem = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CMLogItem, // classInitializer
    "org.xmlvm.iphone.CMLogItem", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_CMLogItem), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMLogItem;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMLogItem_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMLogItem_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CMLogItem_3ARRAY;
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CMLogItem();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CMLogItem___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"timestamp",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()D",
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
        conversion.d = (JAVA_DOUBLE) org_xmlvm_iphone_CMLogItem_timestamp__(receiver);
        result = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(result, conversion.d);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CMLogItem()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CMLogItem);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CMLogItem.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CMLogItem.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CMLogItem);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CMLogItem.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CMLogItem.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CMLogItem.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CMLogItem")
        __INIT_IMPL_org_xmlvm_iphone_CMLogItem();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CMLogItem()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_NSObject)
    __TIB_org_xmlvm_iphone_CMLogItem.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CMLogItem;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CMLogItem.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CMLogItem.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CMLogItem.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CMLogItem.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMLogItem.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CMLogItem.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CMLogItem.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMLogItem.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CMLogItem.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CMLogItem.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CMLogItem.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CMLogItem = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CMLogItem);
    __TIB_org_xmlvm_iphone_CMLogItem.clazz = __CLASS_org_xmlvm_iphone_CMLogItem;
    __TIB_org_xmlvm_iphone_CMLogItem.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CMLogItem_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMLogItem);
    __CLASS_org_xmlvm_iphone_CMLogItem_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMLogItem_1ARRAY);
    __CLASS_org_xmlvm_iphone_CMLogItem_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CMLogItem_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CMLogItem]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CMLogItem.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CMLogItem(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CMLogItem]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMLogItem(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMLogItem]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CMLogItem()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_CMLogItem)
org_xmlvm_iphone_CMLogItem* me = (org_xmlvm_iphone_CMLogItem*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CMLogItem));
    me->tib = &__TIB_org_xmlvm_iphone_CMLogItem;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CMLogItem(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CMLogItem]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CMLogItem()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CMLogItem();
    org_xmlvm_iphone_CMLogItem___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CMLogItem___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMLogItem___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_CMLogItem_timestamp__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CMLogItem_timestamp__]
    org_xmlvm_iphone_CMLogItem* thiz = me;
    return thiz->fields.org_xmlvm_iphone_CMLogItem.timestamp; 
    //XMLVM_END_WRAPPER
}

