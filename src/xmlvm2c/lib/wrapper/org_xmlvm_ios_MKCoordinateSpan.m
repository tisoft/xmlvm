
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MKCoordinateSpan toMKCoordinateSpan(void *obj)
{
	org_xmlvm_ios_MKCoordinateSpan* cObj = obj;
	MKCoordinateSpan toRet;
	toRet.latitudeDelta = cObj->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_;
	toRet.longitudeDelta = cObj->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_;
	return toRet;
}
JAVA_OBJECT fromMKCoordinateSpan(MKCoordinateSpan obj)
{
	org_xmlvm_ios_MKCoordinateSpan* jObj = __NEW_org_xmlvm_ios_MKCoordinateSpan();
	org_xmlvm_ios_MKCoordinateSpan___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_ = obj.latitudeDelta;
	jObj->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_ = obj.longitudeDelta;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKCoordinateSpan]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCoordinateSpan___INIT____double_double]
	org_xmlvm_ios_MKCoordinateSpan* thiz = me;
	thiz->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_ = n1;
	thiz->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_ = n2;
//XMLVM_END_WRAPPER
