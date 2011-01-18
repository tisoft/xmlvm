#include "xmlvm.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSMutableURLRequest.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSMutableURLRequest __TIB_org_xmlvm_iphone_NSMutableURLRequest = {
    0, // classInitialized
    "org.xmlvm.iphone.NSMutableURLRequest", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableURLRequest;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSMutableURLRequest_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSMutableURLRequest();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSMutableURLRequest___INIT____org_xmlvm_iphone_NSURL(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_NSMutableURLRequest()
{
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSMutableURLRequest;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSMutableURLRequest.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSMutableURLRequest.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSMutableURLRequest = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSMutableURLRequest);
    __TIB_org_xmlvm_iphone_NSMutableURLRequest.clazz = __CLASS_org_xmlvm_iphone_NSMutableURLRequest;
    __CLASS_org_xmlvm_iphone_NSMutableURLRequest_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSMutableURLRequest, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSMutableURLRequest]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSMutableURLRequest(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSMutableURLRequest]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSMutableURLRequest()
{
    if (!__TIB_org_xmlvm_iphone_NSMutableURLRequest.classInitialized) __INIT_org_xmlvm_iphone_NSMutableURLRequest();
    org_xmlvm_iphone_NSMutableURLRequest* me = (org_xmlvm_iphone_NSMutableURLRequest*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSMutableURLRequest));
    me->tib = &__TIB_org_xmlvm_iphone_NSMutableURLRequest;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSMutableURLRequest]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSMutableURLRequest()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSMutableURLRequest___INIT____org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableURLRequest___INIT____org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSMutableURLRequest_addValueForHTTPHeaderField___java_lang_String_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

