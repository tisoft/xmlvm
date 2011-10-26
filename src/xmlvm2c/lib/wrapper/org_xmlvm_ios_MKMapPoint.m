
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MKMapPoint toMKMapPoint(void *obj)
{
	org_xmlvm_ios_MKMapPoint* cObj = obj;
	MKMapPoint toRet;
	toRet.x = cObj->fields.org_xmlvm_ios_MKMapPoint.x_;
	toRet.y = cObj->fields.org_xmlvm_ios_MKMapPoint.y_;
	return toRet;
}
JAVA_OBJECT fromMKMapPoint(MKMapPoint obj)
{
	org_xmlvm_ios_MKMapPoint* jObj = __NEW_org_xmlvm_ios_MKMapPoint();
	org_xmlvm_ios_MKMapPoint___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MKMapPoint.x_ = obj.x;
	jObj->fields.org_xmlvm_ios_MKMapPoint.y_ = obj.y;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKMapPoint]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapPoint___INIT____double_double]
	org_xmlvm_ios_MKMapPoint* thiz = me;
	thiz->fields.org_xmlvm_ios_MKMapPoint.x_ = n1;
	thiz->fields.org_xmlvm_ios_MKMapPoint.y_ = n2;
//XMLVM_END_WRAPPER
