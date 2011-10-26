
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioPanningInfo toAudioPanningInfo(void *obj)
{
	org_xmlvm_ios_AudioPanningInfo* cObj = obj;
	AudioPanningInfo toRet;
	toRet.mPanningMode = cObj->fields.org_xmlvm_ios_AudioPanningInfo.mPanningMode_;
	toRet.mCoordinateFlags = cObj->fields.org_xmlvm_ios_AudioPanningInfo.mCoordinateFlags_;
	toRet.mGainScale = cObj->fields.org_xmlvm_ios_AudioPanningInfo.mGainScale_;
	toRet.mOutputChannelMap = cObj->fields.org_xmlvm_ios_AudioPanningInfo.mOutputChannelMap_;
	return toRet;
}
JAVA_OBJECT fromAudioPanningInfo(AudioPanningInfo obj)
{
	org_xmlvm_ios_AudioPanningInfo* jObj = __NEW_org_xmlvm_ios_AudioPanningInfo();
	org_xmlvm_ios_AudioPanningInfo___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioPanningInfo.mPanningMode_ = obj.mPanningMode;
	jObj->fields.org_xmlvm_ios_AudioPanningInfo.mCoordinateFlags_ = obj.mCoordinateFlags;
	jObj->fields.org_xmlvm_ios_AudioPanningInfo.mGainScale_ = obj.mGainScale;
	jObj->fields.org_xmlvm_ios_AudioPanningInfo.mOutputChannelMap_ = obj.mOutputChannelMap;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioPanningInfo]
//XMLVM_END_WRAPPER
