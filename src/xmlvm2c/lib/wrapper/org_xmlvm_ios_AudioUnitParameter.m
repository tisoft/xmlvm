
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitParameter toAudioUnitParameter(void *obj)
{
	org_xmlvm_ios_AudioUnitParameter* cObj = obj;
	AudioUnitParameter toRet;
	toRet.mAudioUnit = cObj->fields.org_xmlvm_ios_AudioUnitParameter.mAudioUnit_;
	toRet.mParameterID = cObj->fields.org_xmlvm_ios_AudioUnitParameter.mParameterID_;
	toRet.mScope = cObj->fields.org_xmlvm_ios_AudioUnitParameter.mScope_;
	toRet.mElement = cObj->fields.org_xmlvm_ios_AudioUnitParameter.mElement_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitParameter(AudioUnitParameter obj)
{
	org_xmlvm_ios_AudioUnitParameter* jObj = __NEW_org_xmlvm_ios_AudioUnitParameter();
	org_xmlvm_ios_AudioUnitParameter___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitParameter.mAudioUnit_ = obj.mAudioUnit;
	jObj->fields.org_xmlvm_ios_AudioUnitParameter.mParameterID_ = obj.mParameterID;
	jObj->fields.org_xmlvm_ios_AudioUnitParameter.mScope_ = obj.mScope;
	jObj->fields.org_xmlvm_ios_AudioUnitParameter.mElement_ = obj.mElement;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameter]
//XMLVM_END_WRAPPER
