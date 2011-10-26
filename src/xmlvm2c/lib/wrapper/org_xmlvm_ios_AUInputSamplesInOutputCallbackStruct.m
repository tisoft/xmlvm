
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUInputSamplesInOutputCallbackStruct toAUInputSamplesInOutputCallbackStruct(void *obj)
{
	org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct* cObj = obj;
	AUInputSamplesInOutputCallbackStruct toRet;
	toRet.inputToOutputCallback = cObj->fields.org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct.inputToOutputCallback_;
	toRet.userData = cObj->fields.org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct.userData_;
	return toRet;
}
JAVA_OBJECT fromAUInputSamplesInOutputCallbackStruct(AUInputSamplesInOutputCallbackStruct obj)
{
	org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct* jObj = __NEW_org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct();
	org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct.inputToOutputCallback_ = obj.inputToOutputCallback;
	jObj->fields.org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct.userData_ = obj.userData;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct]
//XMLVM_END_WRAPPER
