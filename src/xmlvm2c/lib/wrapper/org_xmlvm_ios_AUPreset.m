
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUPreset toAUPreset(void *obj)
{
	org_xmlvm_ios_AUPreset* cObj = obj;
	AUPreset toRet;
	toRet.presetNumber = cObj->fields.org_xmlvm_ios_AUPreset.presetNumber_;
	toRet.presetName = cObj->fields.org_xmlvm_ios_AUPreset.presetName_;
	return toRet;
}
JAVA_OBJECT fromAUPreset(AUPreset obj)
{
	org_xmlvm_ios_AUPreset* jObj = __NEW_org_xmlvm_ios_AUPreset();
	org_xmlvm_ios_AUPreset___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUPreset.presetNumber_ = obj.presetNumber;
	jObj->fields.org_xmlvm_ios_AUPreset.presetName_ = obj.presetName;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUPreset]
//XMLVM_END_WRAPPER
