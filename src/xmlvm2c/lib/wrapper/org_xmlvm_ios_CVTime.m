
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CVTime toCVTime(void *obj)
{
	org_xmlvm_ios_CVTime* cObj = obj;
	CVTime toRet;
	toRet.timeValue = cObj->fields.org_xmlvm_ios_CVTime.timeValue_;
	toRet.timeScale = cObj->fields.org_xmlvm_ios_CVTime.timeScale_;
	toRet.flags = cObj->fields.org_xmlvm_ios_CVTime.flags_;
	return toRet;
}
JAVA_OBJECT fromCVTime(CVTime obj)
{
	org_xmlvm_ios_CVTime* jObj = __NEW_org_xmlvm_ios_CVTime();
	org_xmlvm_ios_CVTime___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CVTime.timeValue_ = obj.timeValue;
	jObj->fields.org_xmlvm_ios_CVTime.timeScale_ = obj.timeScale;
	jObj->fields.org_xmlvm_ios_CVTime.flags_ = obj.flags;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVTime]
//XMLVM_END_WRAPPER
