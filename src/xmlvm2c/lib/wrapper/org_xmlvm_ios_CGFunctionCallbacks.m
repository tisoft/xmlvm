
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGFunctionCallbacks toCGFunctionCallbacks(void *obj)
{
	org_xmlvm_ios_CGFunctionCallbacks* cObj = obj;
	CGFunctionCallbacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CGFunctionCallbacks.version_;
	toRet.evaluate = cObj->fields.org_xmlvm_ios_CGFunctionCallbacks.evaluate_;
	toRet.releaseInfo = cObj->fields.org_xmlvm_ios_CGFunctionCallbacks.releaseInfo_;
	return toRet;
}
JAVA_OBJECT fromCGFunctionCallbacks(CGFunctionCallbacks obj)
{
	org_xmlvm_ios_CGFunctionCallbacks* jObj = __NEW_org_xmlvm_ios_CGFunctionCallbacks();
	org_xmlvm_ios_CGFunctionCallbacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGFunctionCallbacks.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CGFunctionCallbacks.evaluate_ = obj.evaluate;
	jObj->fields.org_xmlvm_ios_CGFunctionCallbacks.releaseInfo_ = obj.releaseInfo;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGFunctionCallbacks]
//XMLVM_END_WRAPPER
