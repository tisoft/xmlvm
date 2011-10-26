
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MKMapRect toMKMapRect(void *obj)
{
	org_xmlvm_ios_MKMapRect* cObj = obj;
	MKMapRect toRet;
	org_xmlvm_ios_MKMapPoint* obj0 = cObj->fields.org_xmlvm_ios_MKMapRect.origin_;
	toRet.origin.x = obj0->fields.org_xmlvm_ios_MKMapPoint.x_;
	toRet.origin.y = obj0->fields.org_xmlvm_ios_MKMapPoint.y_;
	org_xmlvm_ios_MKMapSize* obj1 = cObj->fields.org_xmlvm_ios_MKMapRect.size_;
	toRet.size.width = obj1->fields.org_xmlvm_ios_MKMapSize.width_;
	toRet.size.height = obj1->fields.org_xmlvm_ios_MKMapSize.height_;
	return toRet;
}
JAVA_OBJECT fromMKMapRect(MKMapRect obj)
{
	org_xmlvm_ios_MKMapRect* jObj = __NEW_org_xmlvm_ios_MKMapRect();
	org_xmlvm_ios_MKMapRect___INIT___(jObj);
	org_xmlvm_ios_MKMapPoint* obj0 = jObj->fields.org_xmlvm_ios_MKMapRect.origin_;
	obj0->fields.org_xmlvm_ios_MKMapPoint.x_ = obj.origin.x;
	obj0->fields.org_xmlvm_ios_MKMapPoint.y_ = obj.origin.y;
	org_xmlvm_ios_MKMapSize* obj1 = jObj->fields.org_xmlvm_ios_MKMapRect.size_;
	obj1->fields.org_xmlvm_ios_MKMapSize.width_ = obj.size.width;
	obj1->fields.org_xmlvm_ios_MKMapSize.height_ = obj.size.height;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKMapRect]
	me->fields.org_xmlvm_ios_MKMapRect.origin_ = __NEW_org_xmlvm_ios_MKMapPoint();
	me->fields.org_xmlvm_ios_MKMapRect.size_ = __NEW_org_xmlvm_ios_MKMapSize();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect___INIT____double_double_double_double]
	org_xmlvm_ios_MKMapRect* thiz = me;
	org_xmlvm_ios_MKMapPoint* obj0 = thiz->fields.org_xmlvm_ios_MKMapRect.origin_;
	obj0->fields.org_xmlvm_ios_MKMapPoint.x_ = n1;
	obj0->fields.org_xmlvm_ios_MKMapPoint.y_ = n2;
	org_xmlvm_ios_MKMapSize* obj1 = thiz->fields.org_xmlvm_ios_MKMapRect.size_;
	obj1->fields.org_xmlvm_ios_MKMapSize.width_ = n3;
	obj1->fields.org_xmlvm_ios_MKMapSize.height_ = n4;
//XMLVM_END_WRAPPER
