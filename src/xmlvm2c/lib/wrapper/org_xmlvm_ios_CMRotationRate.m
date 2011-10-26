
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CMRotationRate toCMRotationRate(void *obj)
{
	org_xmlvm_ios_CMRotationRate* cObj = obj;
	CMRotationRate toRet;
	toRet.x = cObj->fields.org_xmlvm_ios_CMRotationRate.x_;
	toRet.y = cObj->fields.org_xmlvm_ios_CMRotationRate.y_;
	toRet.z = cObj->fields.org_xmlvm_ios_CMRotationRate.z_;
	return toRet;
}
JAVA_OBJECT fromCMRotationRate(CMRotationRate obj)
{
	org_xmlvm_ios_CMRotationRate* jObj = __NEW_org_xmlvm_ios_CMRotationRate();
	org_xmlvm_ios_CMRotationRate___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CMRotationRate.x_ = obj.x;
	jObj->fields.org_xmlvm_ios_CMRotationRate.y_ = obj.y;
	jObj->fields.org_xmlvm_ios_CMRotationRate.z_ = obj.z;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMRotationRate]
//XMLVM_END_WRAPPER
