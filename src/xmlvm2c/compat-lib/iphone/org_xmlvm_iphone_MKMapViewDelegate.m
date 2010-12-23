
#include "org_xmlvm_iphone_MKMapViewDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_MKMapViewDelegate __TIB_org_xmlvm_iphone_MKMapViewDelegate = {
    0, // classInitialized
    "org.xmlvm.iphone.MKMapViewDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


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

