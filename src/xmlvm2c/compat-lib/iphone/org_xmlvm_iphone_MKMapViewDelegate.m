#include "xmlvm.h"
#include "org_xmlvm_iphone_MKMapView.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_MKUserLocation.h"

#include "org_xmlvm_iphone_MKMapViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME MKMapViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKMapViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_MKMapViewDelegate __TIB_org_xmlvm_iphone_MKMapViewDelegate = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKMapViewDelegate, // classInitializer
    "org.xmlvm.iphone.MKMapViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKMapViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapViewDelegate_ARRAYTYPE;

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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKMapViewDelegate();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKMapViewDelegate___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_MKUserLocation,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_NSError,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"regionWillChangeAnimated",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"regionDidChangeAnimated",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willStartLoadingMap",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didFinishLoadingMap",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didFailLoadingMap",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"willStartLocatingUser",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didStopLocatingUser",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didUpdateUserLocation",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didFailToLocateUserWithError",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_MKMapViewDelegate_regionWillChangeAnimated___org_xmlvm_iphone_MKMapView_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 1:
        org_xmlvm_iphone_MKMapViewDelegate_regionDidChangeAnimated___org_xmlvm_iphone_MKMapView_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 2:
        org_xmlvm_iphone_MKMapViewDelegate_willStartLoadingMap___org_xmlvm_iphone_MKMapView(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_MKMapViewDelegate_didFinishLoadingMap___org_xmlvm_iphone_MKMapView(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_MKMapViewDelegate_didFailLoadingMap___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError(receiver, argsArray[0], argsArray[1]);
        break;
    case 5:
        org_xmlvm_iphone_MKMapViewDelegate_willStartLocatingUser___org_xmlvm_iphone_MKMapView(receiver, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_MKMapViewDelegate_didStopLocatingUser___org_xmlvm_iphone_MKMapView(receiver, argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_MKMapViewDelegate_didUpdateUserLocation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKUserLocation(receiver, argsArray[0], argsArray[1]);
        break;
    case 8:
        org_xmlvm_iphone_MKMapViewDelegate_didFailToLocateUserWithError___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKMapViewDelegate()
{
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapViewDelegate;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_regionWillChangeAnimated___org_xmlvm_iphone_MKMapView_boolean;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_regionDidChangeAnimated___org_xmlvm_iphone_MKMapView_boolean;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_willStartLoadingMap___org_xmlvm_iphone_MKMapView;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didFinishLoadingMap___org_xmlvm_iphone_MKMapView;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didFailLoadingMap___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_willStartLocatingUser___org_xmlvm_iphone_MKMapView;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didStopLocatingUser___org_xmlvm_iphone_MKMapView;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didUpdateUserLocation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKUserLocation;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didFailToLocateUserWithError___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MKMapViewDelegate.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKMapViewDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKMapViewDelegate);
    __TIB_org_xmlvm_iphone_MKMapViewDelegate.clazz = __CLASS_org_xmlvm_iphone_MKMapViewDelegate;
    __CLASS_org_xmlvm_iphone_MKMapViewDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapViewDelegate, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapViewDelegate]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKMapViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapViewDelegate]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_MKMapViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_MKMapViewDelegate();
    org_xmlvm_iphone_MKMapViewDelegate* me = (org_xmlvm_iphone_MKMapViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapViewDelegate;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapViewDelegate]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapViewDelegate()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MKMapViewDelegate();
    org_xmlvm_iphone_MKMapViewDelegate___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MKMapViewDelegate___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_regionWillChangeAnimated___org_xmlvm_iphone_MKMapView_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_regionWillChangeAnimated___org_xmlvm_iphone_MKMapView_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_regionDidChangeAnimated___org_xmlvm_iphone_MKMapView_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_regionDidChangeAnimated___org_xmlvm_iphone_MKMapView_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_willStartLoadingMap___org_xmlvm_iphone_MKMapView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_willStartLoadingMap___org_xmlvm_iphone_MKMapView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didFinishLoadingMap___org_xmlvm_iphone_MKMapView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didFinishLoadingMap___org_xmlvm_iphone_MKMapView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didFailLoadingMap___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didFailLoadingMap___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_willStartLocatingUser___org_xmlvm_iphone_MKMapView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_willStartLocatingUser___org_xmlvm_iphone_MKMapView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didStopLocatingUser___org_xmlvm_iphone_MKMapView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didStopLocatingUser___org_xmlvm_iphone_MKMapView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didUpdateUserLocation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKUserLocation(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didUpdateUserLocation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKUserLocation]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didFailToLocateUserWithError___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didFailToLocateUserWithError___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_NSError]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

