#include "xmlvm.h"

#include "org_xmlvm_iphone_NSRange.h"

#define XMLVM_CURRENT_CLASS_NAME NSRange
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSRange

__TIB_DEFINITION_org_xmlvm_iphone_NSRange __TIB_org_xmlvm_iphone_NSRange = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSRange, // classInitializer
    "org.xmlvm.iphone.NSRange", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSRange), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRange;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRange_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRange_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSRange_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

JAVA_OBJECT fromNSRange(NSRange range)
{
    org_xmlvm_iphone_NSRange* range_ = __NEW_org_xmlvm_iphone_NSRange();
    // TODO we should have a public constructor for NSRange
    org_xmlvm_iphone_NSObject___INIT___(range_);
    range_->fields.org_xmlvm_iphone_NSRange.location_ = range.location;
    range_->fields.org_xmlvm_iphone_NSRange.length_ = range.length;
    return range_;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"location",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_NSRange, fields.org_xmlvm_iphone_NSRange.location_),
    0,
    "",
    JAVA_NULL},
    {"length",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC,
    XMLVM_OFFSETOF(org_xmlvm_iphone_NSRange, fields.org_xmlvm_iphone_NSRange.length_),
    0,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSRange();
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

void __INIT_org_xmlvm_iphone_NSRange()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_NSRange);
    if (!__TIB_org_xmlvm_iphone_NSRange.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_NSRange();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_NSRange);
}

void __INIT_IMPL_org_xmlvm_iphone_NSRange()
{
    if (!__TIB_org_xmlvm_iphone_NSRange.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_NSRange.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_NSRange.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSRange;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSRange.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        // Initialize interface information
        __TIB_org_xmlvm_iphone_NSRange.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_NSRange.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_NSRange.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSRange.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSRange.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_NSRange.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSRange.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_NSRange.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_NSRange.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_NSRange.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_NSRange = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSRange);
        __TIB_org_xmlvm_iphone_NSRange.clazz = __CLASS_org_xmlvm_iphone_NSRange;
        __TIB_org_xmlvm_iphone_NSRange.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_NSRange_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSRange);
        __CLASS_org_xmlvm_iphone_NSRange_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSRange_1ARRAY);
        __CLASS_org_xmlvm_iphone_NSRange_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSRange_2ARRAY);
        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSRange]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_NSRange.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_NSRange(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSRange]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSRange(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
    ((org_xmlvm_iphone_NSRange*) me)->fields.org_xmlvm_iphone_NSRange.location_ = 0;
    ((org_xmlvm_iphone_NSRange*) me)->fields.org_xmlvm_iphone_NSRange.length_ = 0;
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSRange()
{
    if (!__TIB_org_xmlvm_iphone_NSRange.classInitialized) __INIT_org_xmlvm_iphone_NSRange();
    org_xmlvm_iphone_NSRange* me = (org_xmlvm_iphone_NSRange*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSRange));
    me->tib = &__TIB_org_xmlvm_iphone_NSRange;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSRange(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSRange]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSRange()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

