
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CMAcceleration toCMAcceleration(void *obj)
{
	org_xmlvm_ios_CMAcceleration* cObj = obj;
	CMAcceleration toRet;
	toRet.x = cObj->fields.org_xmlvm_ios_CMAcceleration.x_;
	toRet.y = cObj->fields.org_xmlvm_ios_CMAcceleration.y_;
	toRet.z = cObj->fields.org_xmlvm_ios_CMAcceleration.z_;
	return toRet;
}
JAVA_OBJECT fromCMAcceleration(CMAcceleration obj)
{
	org_xmlvm_ios_CMAcceleration* jObj = __NEW_org_xmlvm_ios_CMAcceleration();
	org_xmlvm_ios_CMAcceleration___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CMAcceleration.x_ = obj.x;
	jObj->fields.org_xmlvm_ios_CMAcceleration.y_ = obj.y;
	jObj->fields.org_xmlvm_ios_CMAcceleration.z_ = obj.z;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMAcceleration]
//XMLVM_END_WRAPPER
