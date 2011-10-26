
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitParameterValueName toAudioUnitParameterValueName(void *obj)
{
	org_xmlvm_ios_AudioUnitParameterValueName* cObj = obj;
	AudioUnitParameterValueName toRet;
	toRet.inParamID = cObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.inParamID_;
	toRet.inValue = cObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.inValue_;
	toRet.outName = cObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.outName_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitParameterValueName(AudioUnitParameterValueName obj)
{
	org_xmlvm_ios_AudioUnitParameterValueName* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterValueName();
	org_xmlvm_ios_AudioUnitParameterValueName___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.inParamID_ = obj.inParamID;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.inValue_ = obj.inValue;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.outName_ = obj.outName;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterValueName]
//XMLVM_END_WRAPPER
