
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGPatternCallbacks toCGPatternCallbacks(void *obj)
{
	org_xmlvm_ios_CGPatternCallbacks* cObj = obj;
	CGPatternCallbacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CGPatternCallbacks.version_;
	toRet.drawPattern = cObj->fields.org_xmlvm_ios_CGPatternCallbacks.drawPattern_;
	toRet.releaseInfo = cObj->fields.org_xmlvm_ios_CGPatternCallbacks.releaseInfo_;
	return toRet;
}
JAVA_OBJECT fromCGPatternCallbacks(CGPatternCallbacks obj)
{
	org_xmlvm_ios_CGPatternCallbacks* jObj = __NEW_org_xmlvm_ios_CGPatternCallbacks();
	org_xmlvm_ios_CGPatternCallbacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGPatternCallbacks.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CGPatternCallbacks.drawPattern_ = obj.drawPattern;
	jObj->fields.org_xmlvm_ios_CGPatternCallbacks.releaseInfo_ = obj.releaseInfo;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGPatternCallbacks]
//XMLVM_END_WRAPPER
