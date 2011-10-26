
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MKCoordinateRegion toMKCoordinateRegion(void *obj)
{
	org_xmlvm_ios_MKCoordinateRegion* cObj = obj;
	MKCoordinateRegion toRet;
	org_xmlvm_ios_CLLocationCoordinate2D* obj0 = cObj->fields.org_xmlvm_ios_MKCoordinateRegion.center_;
	toRet.center.latitude = obj0->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_;
	toRet.center.longitude = obj0->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_;
	org_xmlvm_ios_MKCoordinateSpan* obj1 = cObj->fields.org_xmlvm_ios_MKCoordinateRegion.span_;
	toRet.span.latitudeDelta = obj1->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_;
	toRet.span.longitudeDelta = obj1->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_;
	return toRet;
}
JAVA_OBJECT fromMKCoordinateRegion(MKCoordinateRegion obj)
{
	org_xmlvm_ios_MKCoordinateRegion* jObj = __NEW_org_xmlvm_ios_MKCoordinateRegion();
	org_xmlvm_ios_MKCoordinateRegion___INIT___(jObj);
	org_xmlvm_ios_CLLocationCoordinate2D* obj0 = jObj->fields.org_xmlvm_ios_MKCoordinateRegion.center_;
	obj0->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_ = obj.center.latitude;
	obj0->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_ = obj.center.longitude;
	org_xmlvm_ios_MKCoordinateSpan* obj1 = jObj->fields.org_xmlvm_ios_MKCoordinateRegion.span_;
	obj1->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_ = obj.span.latitudeDelta;
	obj1->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_ = obj.span.longitudeDelta;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKCoordinateRegion]
	me->fields.org_xmlvm_ios_MKCoordinateRegion.center_ = __NEW_org_xmlvm_ios_CLLocationCoordinate2D();
	me->fields.org_xmlvm_ios_MKCoordinateRegion.span_ = __NEW_org_xmlvm_ios_MKCoordinateSpan();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCoordinateRegion___INIT____CLLocationCoordinate2D_MKCoordinateSpan]
	org_xmlvm_ios_MKCoordinateRegion* thiz = me;
	org_xmlvm_ios_CLLocationCoordinate2D* obj0 = thiz->fields.org_xmlvm_ios_MKCoordinateRegion.center_;
	obj0->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_ = n1;
	obj0->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_ = n2;
	org_xmlvm_ios_MKCoordinateSpan* obj1 = thiz->fields.org_xmlvm_ios_MKCoordinateRegion.span_;
	obj1->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_ = n3;
	obj1->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_ = n4;
//XMLVM_END_WRAPPER
