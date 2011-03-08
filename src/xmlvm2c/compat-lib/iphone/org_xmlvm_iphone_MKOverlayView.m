#include "xmlvm.h"
#include "org_xmlvm_iphone_MKMapPoint.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_MKMapRect.h"
#include "org_xmlvm_iphone_MKOverlay.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CGContext.h"

#include "org_xmlvm_iphone_MKOverlayView.h"

#define XMLVM_CURRENT_CLASS_NAME MKOverlayView
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_MKOverlayView

__TIB_DEFINITION_org_xmlvm_iphone_MKOverlayView __TIB_org_xmlvm_iphone_MKOverlayView = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_MKOverlayView, // classInitializer
    "org.xmlvm.iphone.MKOverlayView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_MKOverlayView), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlayView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKOverlayView_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKOverlay,
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
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKOverlayView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKOverlayView___INIT____org_xmlvm_iphone_MKOverlay(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapPoint,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGPoint,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapRect,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapRect,
    &__CLASS_float,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapRect,
    &__CLASS_float,
    &__CLASS_org_xmlvm_iphone_CGContext,
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapRect,
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_MKMapRect,
    &__CLASS_float,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"getOverlay",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"pointForMapPoint",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"mapPointForPoint",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"rectForMapRect",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"mapRectForRect",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"canDrawMapRect",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"drawMapRect",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setNeedsDisplayInMapRect",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setNeedsDisplayInMapRect",
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
        org_xmlvm_iphone_MKOverlayView_getOverlay__(receiver);
        break;
    case 1:
        org_xmlvm_iphone_MKOverlayView_pointForMapPoint___org_xmlvm_iphone_MKMapPoint(receiver, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_MKOverlayView_mapPointForPoint___org_xmlvm_iphone_CGPoint(receiver, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_MKOverlayView_rectForMapRect___org_xmlvm_iphone_MKMapRect(receiver, argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_MKOverlayView_mapRectForRect___org_xmlvm_iphone_CGRect(receiver, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_MKOverlayView_canDrawMapRect___org_xmlvm_iphone_MKMapRect_float(receiver, argsArray[0], ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    case 6:
        org_xmlvm_iphone_MKOverlayView_drawMapRect___org_xmlvm_iphone_MKMapRect_float_org_xmlvm_iphone_CGContext(receiver, argsArray[0], ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_, argsArray[2]);
        break;
    case 7:
        org_xmlvm_iphone_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect(receiver, argsArray[0]);
        break;
    case 8:
        org_xmlvm_iphone_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect_float(receiver, argsArray[0], ((java_lang_Float*) argsArray[1])->fields.java_lang_Float.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_MKOverlayView()
{
    __TIB_org_xmlvm_iphone_MKOverlayView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_MKOverlayView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKOverlayView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKOverlayView.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_getOverlay__;
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_pointForMapPoint___org_xmlvm_iphone_MKMapPoint;
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_mapPointForPoint___org_xmlvm_iphone_CGPoint;
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_rectForMapRect___org_xmlvm_iphone_MKMapRect;
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_mapRectForRect___org_xmlvm_iphone_CGRect;
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_canDrawMapRect___org_xmlvm_iphone_MKMapRect_float;
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_drawMapRect___org_xmlvm_iphone_MKMapRect_float_org_xmlvm_iphone_CGContext;
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect;
    __TIB_org_xmlvm_iphone_MKOverlayView.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect_float;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKOverlayView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKOverlayView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MKOverlayView.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKOverlayView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKOverlayView.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKOverlayView.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKOverlayView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKOverlayView.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_MKOverlayView.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKOverlayView.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKOverlayView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKOverlayView);
    __TIB_org_xmlvm_iphone_MKOverlayView.clazz = __CLASS_org_xmlvm_iphone_MKOverlayView;
    __CLASS_org_xmlvm_iphone_MKOverlayView_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKOverlayView, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKOverlayView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKOverlayView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKOverlayView]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKOverlayView(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKOverlayView()
{
    if (!__TIB_org_xmlvm_iphone_MKOverlayView.classInitialized) __INIT_org_xmlvm_iphone_MKOverlayView();
    org_xmlvm_iphone_MKOverlayView* me = (org_xmlvm_iphone_MKOverlayView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKOverlayView));
    me->tib = &__TIB_org_xmlvm_iphone_MKOverlayView;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_MKOverlayView(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKOverlayView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKOverlayView()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_MKOverlayView___INIT____org_xmlvm_iphone_MKOverlay(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView___INIT____org_xmlvm_iphone_MKOverlay]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKOverlayView_getOverlay__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_getOverlay__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKOverlayView_pointForMapPoint___org_xmlvm_iphone_MKMapPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_pointForMapPoint___org_xmlvm_iphone_MKMapPoint]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKOverlayView_mapPointForPoint___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_mapPointForPoint___org_xmlvm_iphone_CGPoint]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKOverlayView_rectForMapRect___org_xmlvm_iphone_MKMapRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_rectForMapRect___org_xmlvm_iphone_MKMapRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKOverlayView_mapRectForRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_mapRectForRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKOverlayView_canDrawMapRect___org_xmlvm_iphone_MKMapRect_float(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_canDrawMapRect___org_xmlvm_iphone_MKMapRect_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKOverlayView_drawMapRect___org_xmlvm_iphone_MKMapRect_float_org_xmlvm_iphone_CGContext(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_FLOAT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_drawMapRect___org_xmlvm_iphone_MKMapRect_float_org_xmlvm_iphone_CGContext]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect_float(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_iphone_MKMapRect_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

