#include "xmlvm.h"
#include "org_xmlvm_iphone_UIControl.h"
#include "org_xmlvm_iphone_MKAnnotationView.h"
#include "org_xmlvm_iphone_MKAnnotation.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_MKMapView.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_MKOverlay.h"
#include "org_xmlvm_iphone_MKUserLocation.h"

#include "org_xmlvm_iphone_MKMapViewDelegate.h"

#define XMLVM_CURRENT_CLASS_NAME MKMapViewDelegate
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKMapViewDelegate

__TIB_DEFINITION_org_xmlvm_iphone_MKMapViewDelegate __TIB_org_xmlvm_iphone_MKMapViewDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKMapViewDelegate, // classInitializer
    "org.xmlvm.iphone.MKMapViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKMapViewDelegate), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapViewDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapViewDelegate_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapViewDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapViewDelegate_1ARRAY;

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

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_MKAnnotation,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_java_util_ArrayList,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_MKAnnotationView,
    &__CLASS_org_xmlvm_iphone_UIControl,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_MKAnnotationView,
    &__CLASS_int,
    &__CLASS_int,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_MKAnnotationView,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_MKAnnotationView,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_org_xmlvm_iphone_MKOverlay,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapView,
    &__CLASS_java_util_ArrayList,
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
    {"viewForAnnotation",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didAddAnnotationViews",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"calloutAccessoryControlTapped",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didChangeDragStatefromOldState",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didSelectAnnotationView",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didDeselectAnnotationView",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"viewForOverlay",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"didAddOverlayViews",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
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
    case 9:
        org_xmlvm_iphone_MKMapViewDelegate_viewForAnnotation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotation(receiver, argsArray[0], argsArray[1]);
        break;
    case 10:
        org_xmlvm_iphone_MKMapViewDelegate_didAddAnnotationViews___org_xmlvm_iphone_MKMapView_java_util_ArrayList(receiver, argsArray[0], argsArray[1]);
        break;
    case 11:
        org_xmlvm_iphone_MKMapViewDelegate_calloutAccessoryControlTapped___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_org_xmlvm_iphone_UIControl(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 12:
        org_xmlvm_iphone_MKMapViewDelegate_didChangeDragStatefromOldState___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_int_int(receiver, argsArray[0], argsArray[1], ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, ((java_lang_Integer*) argsArray[3])->fields.java_lang_Integer.value_);
        break;
    case 13:
        org_xmlvm_iphone_MKMapViewDelegate_didSelectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView(receiver, argsArray[0], argsArray[1]);
        break;
    case 14:
        org_xmlvm_iphone_MKMapViewDelegate_didDeselectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView(receiver, argsArray[0], argsArray[1]);
        break;
    case 15:
        org_xmlvm_iphone_MKMapViewDelegate_viewForOverlay___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKOverlay(receiver, argsArray[0], argsArray[1]);
        break;
    case 16:
        org_xmlvm_iphone_MKMapViewDelegate_didAddOverlayViews___org_xmlvm_iphone_MKMapView_java_util_ArrayList(receiver, argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKMapViewDelegate()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_MKMapViewDelegate);
    if (!__TIB_org_xmlvm_iphone_MKMapViewDelegate.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_MKMapViewDelegate();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_MKMapViewDelegate);
}

void __INIT_IMPL_org_xmlvm_iphone_MKMapViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_MKMapViewDelegate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
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
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_viewForAnnotation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotation;
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didAddAnnotationViews___org_xmlvm_iphone_MKMapView_java_util_ArrayList;
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_calloutAccessoryControlTapped___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_org_xmlvm_iphone_UIControl;
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didChangeDragStatefromOldState___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_int_int;
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didSelectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView;
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didDeselectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView;
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_viewForOverlay___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKOverlay;
        __TIB_org_xmlvm_iphone_MKMapViewDelegate.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapViewDelegate_didAddOverlayViews___org_xmlvm_iphone_MKMapView_java_util_ArrayList;
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
        __CLASS_org_xmlvm_iphone_MKMapViewDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapViewDelegate, 3);
        __CLASS_org_xmlvm_iphone_MKMapViewDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapViewDelegate, 2);
        __CLASS_org_xmlvm_iphone_MKMapViewDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapViewDelegate, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapViewDelegate]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_MKMapViewDelegate.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_MKMapViewDelegate(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapViewDelegate]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapViewDelegate(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapViewDelegate()
{
    if (!__TIB_org_xmlvm_iphone_MKMapViewDelegate.classInitialized) __INIT_org_xmlvm_iphone_MKMapViewDelegate();
    org_xmlvm_iphone_MKMapViewDelegate* me = (org_xmlvm_iphone_MKMapViewDelegate*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapViewDelegate));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapViewDelegate;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKMapViewDelegate(me);
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

JAVA_OBJECT org_xmlvm_iphone_MKMapViewDelegate_viewForAnnotation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotation(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_viewForAnnotation___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotation]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didAddAnnotationViews___org_xmlvm_iphone_MKMapView_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didAddAnnotationViews___org_xmlvm_iphone_MKMapView_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_calloutAccessoryControlTapped___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_org_xmlvm_iphone_UIControl(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_calloutAccessoryControlTapped___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_org_xmlvm_iphone_UIControl]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didChangeDragStatefromOldState___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didChangeDragStatefromOldState___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView_int_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didSelectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didSelectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didDeselectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didDeselectAnnotationView___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKAnnotationView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapViewDelegate_viewForOverlay___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKOverlay(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_viewForOverlay___org_xmlvm_iphone_MKMapView_org_xmlvm_iphone_MKOverlay]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapViewDelegate_didAddOverlayViews___org_xmlvm_iphone_MKMapView_java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapViewDelegate_didAddOverlayViews___org_xmlvm_iphone_MKMapView_java_util_ArrayList]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

