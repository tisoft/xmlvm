#include "xmlvm.h"

#include "org_xmlvm_iphone_UIEvent.h"

#define XMLVM_CURRENT_CLASS_NAME UIEvent
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_UIEvent

__TIB_DEFINITION_org_xmlvm_iphone_UIEvent __TIB_org_xmlvm_iphone_UIEvent = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_UIEvent, // classInitializer
    "org.xmlvm.iphone.UIEvent", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_UIEvent), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEvent;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIEvent_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_UIEvent_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, UIEvent* event)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, event);
}

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_UIEvent();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_UIEvent___INIT___(obj);
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
    {"allTouches",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_UIEvent_allTouches__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_UIEvent()
{
    __TIB_org_xmlvm_iphone_UIEvent.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_UIEvent.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIEvent;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_UIEvent.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_UIEvent.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIEvent_allTouches__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_UIEvent.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIEvent.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_UIEvent.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIEvent.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIEvent.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_UIEvent.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIEvent.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_UIEvent.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIEvent.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIEvent.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_UIEvent = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIEvent);
    __TIB_org_xmlvm_iphone_UIEvent.clazz = __CLASS_org_xmlvm_iphone_UIEvent;
    __CLASS_org_xmlvm_iphone_UIEvent_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIEvent, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIEvent]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIEvent(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIEvent]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIEvent(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIEvent()
{
    if (!__TIB_org_xmlvm_iphone_UIEvent.classInitialized) __INIT_org_xmlvm_iphone_UIEvent();
    org_xmlvm_iphone_UIEvent* me = (org_xmlvm_iphone_UIEvent*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIEvent));
    me->tib = &__TIB_org_xmlvm_iphone_UIEvent;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIEvent(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIEvent]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIEvent()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIEvent();
    org_xmlvm_iphone_UIEvent___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIEvent___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIEvent___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIEvent_allTouches__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIEvent_allTouches__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

