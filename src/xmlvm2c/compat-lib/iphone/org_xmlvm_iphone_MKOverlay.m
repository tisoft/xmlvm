#include "xmlvm.h"
#include "org_xmlvm_iphone_MKMapRect.h"

#include "org_xmlvm_iphone_MKOverlay.h"

#define XMLVM_CURRENT_CLASS_NAME MKOverlay
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKOverlay

__TIB_DEFINITION_org_xmlvm_iphone_MKOverlay __TIB_org_xmlvm_iphone_MKOverlay = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKOverlay, // classInitializer
    "org.xmlvm.iphone.MKOverlay", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_MKAnnotation, // extends
    sizeof(org_xmlvm_iphone_MKOverlay), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlay;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlay_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlay_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlay_1ARRAY;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKOverlay();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKOverlay___INIT___(obj);
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

void __INIT_org_xmlvm_iphone_MKOverlay()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_MKOverlay);
    if (!__TIB_org_xmlvm_iphone_MKOverlay.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_MKOverlay();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_MKOverlay);
}

void __INIT_IMPL_org_xmlvm_iphone_MKOverlay()
{
    if (!__TIB_org_xmlvm_iphone_MKOverlay.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_MKOverlay.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_MKAnnotation.classInitialized) __INIT_IMPL_org_xmlvm_iphone_MKAnnotation();
        __TIB_org_xmlvm_iphone_MKOverlay.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKOverlay;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKOverlay.vtable, __TIB_org_xmlvm_iphone_MKAnnotation.vtable, sizeof(__TIB_org_xmlvm_iphone_MKAnnotation.vtable));
        // Initialize vtable for this class
        // Initialize vtable for implementing interfaces
        __TIB_org_xmlvm_iphone_MKOverlay.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_MKOverlay.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        __TIB_org_xmlvm_iphone_MKOverlay.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKOverlay.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKOverlay.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_MKOverlay.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKOverlay.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_MKOverlay.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_MKOverlay.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_MKOverlay.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_MKOverlay = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKOverlay);
        __TIB_org_xmlvm_iphone_MKOverlay.clazz = __CLASS_org_xmlvm_iphone_MKOverlay;
        __CLASS_org_xmlvm_iphone_MKOverlay_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKOverlay, 3);
        __CLASS_org_xmlvm_iphone_MKOverlay_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKOverlay, 2);
        __CLASS_org_xmlvm_iphone_MKOverlay_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKOverlay, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKOverlay]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_MKOverlay.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_MKOverlay(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKOverlay]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKOverlay(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKAnnotation(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKOverlay()
{
    if (!__TIB_org_xmlvm_iphone_MKOverlay.classInitialized) __INIT_org_xmlvm_iphone_MKOverlay();
    org_xmlvm_iphone_MKOverlay* me = (org_xmlvm_iphone_MKOverlay*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKOverlay));
    me->tib = &__TIB_org_xmlvm_iphone_MKOverlay;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKOverlay(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKOverlay]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKOverlay()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MKOverlay();
    org_xmlvm_iphone_MKOverlay___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MKOverlay___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlay___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

