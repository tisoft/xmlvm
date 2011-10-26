
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CLLocationCoordinate2D toCLLocationCoordinate2D(void *obj)
{
	org_xmlvm_ios_CLLocationCoordinate2D* cObj = obj;
	CLLocationCoordinate2D toRet;
	toRet.latitude = cObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_;
	toRet.longitude = cObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_;
	return toRet;
}
JAVA_OBJECT fromCLLocationCoordinate2D(CLLocationCoordinate2D obj)
{
	org_xmlvm_ios_CLLocationCoordinate2D* jObj = __NEW_org_xmlvm_ios_CLLocationCoordinate2D();
	org_xmlvm_ios_CLLocationCoordinate2D___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_ = obj.latitude;
	jObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_ = obj.longitude;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CLLocationCoordinate2D]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationCoordinate2D___INIT____double_double]
	org_xmlvm_ios_CLLocationCoordinate2D* thiz = me;
	thiz->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_ = n1;
	thiz->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_ = n2;
//XMLVM_END_WRAPPER
