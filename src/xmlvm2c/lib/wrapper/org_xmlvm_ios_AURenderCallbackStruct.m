
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AURenderCallbackStruct toAURenderCallbackStruct(void *obj)
{
	org_xmlvm_ios_AURenderCallbackStruct* cObj = obj;
	AURenderCallbackStruct toRet;
	toRet.inputProc = cObj->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProc_;
	toRet.inputProcRefCon = cObj->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProcRefCon_;
	return toRet;
}
JAVA_OBJECT fromAURenderCallbackStruct(AURenderCallbackStruct obj)
{
	org_xmlvm_ios_AURenderCallbackStruct* jObj = __NEW_org_xmlvm_ios_AURenderCallbackStruct();
	org_xmlvm_ios_AURenderCallbackStruct___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProc_ = obj.inputProc;
	jObj->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProcRefCon_ = obj.inputProcRefCon;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AURenderCallbackStruct]
//XMLVM_END_WRAPPER
