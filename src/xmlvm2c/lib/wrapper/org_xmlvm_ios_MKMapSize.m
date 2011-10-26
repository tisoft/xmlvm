
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MKMapSize toMKMapSize(void *obj)
{
	org_xmlvm_ios_MKMapSize* cObj = obj;
	MKMapSize toRet;
	toRet.width = cObj->fields.org_xmlvm_ios_MKMapSize.width_;
	toRet.height = cObj->fields.org_xmlvm_ios_MKMapSize.height_;
	return toRet;
}
JAVA_OBJECT fromMKMapSize(MKMapSize obj)
{
	org_xmlvm_ios_MKMapSize* jObj = __NEW_org_xmlvm_ios_MKMapSize();
	org_xmlvm_ios_MKMapSize___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MKMapSize.width_ = obj.width;
	jObj->fields.org_xmlvm_ios_MKMapSize.height_ = obj.height;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKMapSize]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapSize___INIT____double_double]
	org_xmlvm_ios_MKMapSize* thiz = me;
	thiz->fields.org_xmlvm_ios_MKMapSize.width_ = n1;
	thiz->fields.org_xmlvm_ios_MKMapSize.height_ = n2;
//XMLVM_END_WRAPPER
