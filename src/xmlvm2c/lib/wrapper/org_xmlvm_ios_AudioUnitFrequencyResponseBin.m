
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitFrequencyResponseBin toAudioUnitFrequencyResponseBin(void *obj)
{
	org_xmlvm_ios_AudioUnitFrequencyResponseBin* cObj = obj;
	AudioUnitFrequencyResponseBin toRet;
	toRet.mFrequency = cObj->fields.org_xmlvm_ios_AudioUnitFrequencyResponseBin.mFrequency_;
	toRet.mMagnitude = cObj->fields.org_xmlvm_ios_AudioUnitFrequencyResponseBin.mMagnitude_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitFrequencyResponseBin(AudioUnitFrequencyResponseBin obj)
{
	org_xmlvm_ios_AudioUnitFrequencyResponseBin* jObj = __NEW_org_xmlvm_ios_AudioUnitFrequencyResponseBin();
	org_xmlvm_ios_AudioUnitFrequencyResponseBin___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitFrequencyResponseBin.mFrequency_ = obj.mFrequency;
	jObj->fields.org_xmlvm_ios_AudioUnitFrequencyResponseBin.mMagnitude_ = obj.mMagnitude;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitFrequencyResponseBin]
//XMLVM_END_WRAPPER
