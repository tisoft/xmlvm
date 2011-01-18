#include "xmlvm.h"
#include "org_xmlvm_iphone_MKCoordinateRegion.h"
#include "org_xmlvm_iphone_MKMapViewDelegate.h"
#include "org_xmlvm_iphone_MKMapRect.h"
#include "org_xmlvm_iphone_UIEdgeInsets.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_CLLocationCoordinate2D.h"

#include "org_xmlvm_iphone_MKMapView.h"

__TIB_DEFINITION_org_xmlvm_iphone_MKMapView __TIB_org_xmlvm_iphone_MKMapView = {
    0, // classInitialized
    "org.xmlvm.iphone.MKMapView", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_UIView, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapView;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_MKMapView_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGRect,
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
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_MKMapView();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_MKMapView___INIT___(obj);
        break;
    case 1:
        org_xmlvm_iphone_MKMapView___INIT____org_xmlvm_iphone_CGRect(obj, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_MKMapView()
{
    __TIB_org_xmlvm_iphone_MKMapView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    __TIB_org_xmlvm_iphone_MKMapView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_MKMapView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_MKMapView.vtable, __TIB_org_xmlvm_iphone_UIView.vtable, sizeof(__TIB_org_xmlvm_iphone_UIView.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_MKMapView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_getMapType__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setMapType___int;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[72] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_isScrollEnabled__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[73] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setScrollEnabled___boolean;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[74] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_isZoomEnabled__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[75] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setZoomEnabled___boolean;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[76] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_getDelegate__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[77] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setDelegate___org_xmlvm_iphone_MKMapViewDelegate;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[78] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_getRegion__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[79] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setRegion___org_xmlvm_iphone_MKCoordinateRegion;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[80] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setRegion___org_xmlvm_iphone_MKCoordinateRegion_boolean;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[81] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_getCenterCoordinate__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[82] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[83] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D_boolean;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[84] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_getVisibleMapRect__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[85] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[86] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect_boolean;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[87] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets_boolean;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[88] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_isShowsUserLocation__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[89] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_setShowsUserLocation___boolean;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[90] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_getUserLocation__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[91] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_isUserLocationVisible__;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[92] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_convertCoordinateToPointToView___org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[93] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_convertPointToCoordinateFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[94] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_convertRegionToRectToView___org_xmlvm_iphone_MKCoordinateRegion_org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[95] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_convertRectToRegionFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[96] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_regionThatFits___org_xmlvm_iphone_MKCoordinateRegion;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[97] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_mapRectThatFits___org_xmlvm_iphone_MKMapRect;
    __TIB_org_xmlvm_iphone_MKMapView.vtable[98] = (VTABLE_PTR) &org_xmlvm_iphone_MKMapView_mapRectThatFits___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_MKMapView.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_MKMapView.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_MKMapView.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapView.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_MKMapView.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_MKMapView.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_MKMapView.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_MKMapView = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_MKMapView);
    __TIB_org_xmlvm_iphone_MKMapView.clazz = __CLASS_org_xmlvm_iphone_MKMapView;
    __CLASS_org_xmlvm_iphone_MKMapView_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_MKMapView, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_MKMapView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_MKMapView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_MKMapView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_MKMapView()
{
    if (!__TIB_org_xmlvm_iphone_MKMapView.classInitialized) __INIT_org_xmlvm_iphone_MKMapView();
    org_xmlvm_iphone_MKMapView* me = (org_xmlvm_iphone_MKMapView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_MKMapView));
    me->tib = &__TIB_org_xmlvm_iphone_MKMapView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_MKMapView]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_MKMapView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_MKMapView();
    org_xmlvm_iphone_MKMapView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_MKMapView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView___INIT____org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_MKMapView_getMapType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_getMapType__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setMapType___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setMapType___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKMapView_isScrollEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_isScrollEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setScrollEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setScrollEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKMapView_isZoomEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_isZoomEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setZoomEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setZoomEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setDelegate___org_xmlvm_iphone_MKMapViewDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setDelegate___org_xmlvm_iphone_MKMapViewDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_getRegion__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_getRegion__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setRegion___org_xmlvm_iphone_MKCoordinateRegion(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setRegion___org_xmlvm_iphone_MKCoordinateRegion]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setRegion___org_xmlvm_iphone_MKCoordinateRegion_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setRegion___org_xmlvm_iphone_MKCoordinateRegion_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_getCenterCoordinate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_getCenterCoordinate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setCenterCoordinate___org_xmlvm_iphone_CLLocationCoordinate2D_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_getVisibleMapRect__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_getVisibleMapRect__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setVisibleMapRect___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKMapView_isShowsUserLocation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_isShowsUserLocation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_MKMapView_setShowsUserLocation___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_setShowsUserLocation___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_getUserLocation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_getUserLocation__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_MKMapView_isUserLocationVisible__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_isUserLocationVisible__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_convertCoordinateToPointToView___org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_convertCoordinateToPointToView___org_xmlvm_iphone_CLLocationCoordinate2D_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_convertPointToCoordinateFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_convertPointToCoordinateFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_convertRegionToRectToView___org_xmlvm_iphone_MKCoordinateRegion_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_convertRegionToRectToView___org_xmlvm_iphone_MKCoordinateRegion_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_convertRectToRegionFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_convertRectToRegionFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_regionThatFits___org_xmlvm_iphone_MKCoordinateRegion(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_regionThatFits___org_xmlvm_iphone_MKCoordinateRegion]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_mapRectThatFits___org_xmlvm_iphone_MKMapRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_mapRectThatFits___org_xmlvm_iphone_MKMapRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_MKMapView_mapRectThatFits___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_MKMapView_mapRectThatFits___org_xmlvm_iphone_MKMapRect_org_xmlvm_iphone_UIEdgeInsets]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

