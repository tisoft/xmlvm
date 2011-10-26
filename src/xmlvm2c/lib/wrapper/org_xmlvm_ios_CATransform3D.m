
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CATransform3D toCATransform3D(void *obj)
{
	org_xmlvm_ios_CATransform3D* cObj = obj;
	CATransform3D toRet;
	toRet.m14 = cObj->fields.org_xmlvm_ios_CATransform3D.m14_;
	toRet.m13 = cObj->fields.org_xmlvm_ios_CATransform3D.m13_;
	toRet.m12 = cObj->fields.org_xmlvm_ios_CATransform3D.m12_;
	toRet.m11 = cObj->fields.org_xmlvm_ios_CATransform3D.m11_;
	toRet.m24 = cObj->fields.org_xmlvm_ios_CATransform3D.m24_;
	toRet.m23 = cObj->fields.org_xmlvm_ios_CATransform3D.m23_;
	toRet.m22 = cObj->fields.org_xmlvm_ios_CATransform3D.m22_;
	toRet.m21 = cObj->fields.org_xmlvm_ios_CATransform3D.m21_;
	toRet.m34 = cObj->fields.org_xmlvm_ios_CATransform3D.m34_;
	toRet.m33 = cObj->fields.org_xmlvm_ios_CATransform3D.m33_;
	toRet.m32 = cObj->fields.org_xmlvm_ios_CATransform3D.m32_;
	toRet.m31 = cObj->fields.org_xmlvm_ios_CATransform3D.m31_;
	toRet.m44 = cObj->fields.org_xmlvm_ios_CATransform3D.m44_;
	toRet.m43 = cObj->fields.org_xmlvm_ios_CATransform3D.m43_;
	toRet.m42 = cObj->fields.org_xmlvm_ios_CATransform3D.m42_;
	toRet.m41 = cObj->fields.org_xmlvm_ios_CATransform3D.m41_;
	return toRet;
}
JAVA_OBJECT fromCATransform3D(CATransform3D obj)
{
	org_xmlvm_ios_CATransform3D* jObj = __NEW_org_xmlvm_ios_CATransform3D();
	org_xmlvm_ios_CATransform3D___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CATransform3D.m14_ = obj.m14;
	jObj->fields.org_xmlvm_ios_CATransform3D.m13_ = obj.m13;
	jObj->fields.org_xmlvm_ios_CATransform3D.m12_ = obj.m12;
	jObj->fields.org_xmlvm_ios_CATransform3D.m11_ = obj.m11;
	jObj->fields.org_xmlvm_ios_CATransform3D.m24_ = obj.m24;
	jObj->fields.org_xmlvm_ios_CATransform3D.m23_ = obj.m23;
	jObj->fields.org_xmlvm_ios_CATransform3D.m22_ = obj.m22;
	jObj->fields.org_xmlvm_ios_CATransform3D.m21_ = obj.m21;
	jObj->fields.org_xmlvm_ios_CATransform3D.m34_ = obj.m34;
	jObj->fields.org_xmlvm_ios_CATransform3D.m33_ = obj.m33;
	jObj->fields.org_xmlvm_ios_CATransform3D.m32_ = obj.m32;
	jObj->fields.org_xmlvm_ios_CATransform3D.m31_ = obj.m31;
	jObj->fields.org_xmlvm_ios_CATransform3D.m44_ = obj.m44;
	jObj->fields.org_xmlvm_ios_CATransform3D.m43_ = obj.m43;
	jObj->fields.org_xmlvm_ios_CATransform3D.m42_ = obj.m42;
	jObj->fields.org_xmlvm_ios_CATransform3D.m41_ = obj.m41;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CATransform3D]
//XMLVM_END_WRAPPER
