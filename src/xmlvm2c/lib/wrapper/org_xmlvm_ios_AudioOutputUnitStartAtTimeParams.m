
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioOutputUnitStartAtTimeParams toAudioOutputUnitStartAtTimeParams(void *obj)
{
	org_xmlvm_ios_AudioOutputUnitStartAtTimeParams* cObj = obj;
	AudioOutputUnitStartAtTimeParams toRet;
	org_xmlvm_ios_AudioTimeStamp* obj0 = cObj->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mTimestamp_;
	toRet.mTimestamp.mSampleTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_;
	toRet.mTimestamp.mHostTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_;
	toRet.mTimestamp.mRateScalar = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_;
	toRet.mTimestamp.mWordClockTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_;
	toRet.mTimestamp.mSMPTETime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_;
	toRet.mTimestamp.mFlags = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_;
	toRet.mTimestamp.mReserved = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_;
	toRet.mFlags = cObj->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mFlags_;
	return toRet;
}
JAVA_OBJECT fromAudioOutputUnitStartAtTimeParams(AudioOutputUnitStartAtTimeParams obj)
{
	org_xmlvm_ios_AudioOutputUnitStartAtTimeParams* jObj = __NEW_org_xmlvm_ios_AudioOutputUnitStartAtTimeParams();
	org_xmlvm_ios_AudioOutputUnitStartAtTimeParams___INIT___(jObj);
	org_xmlvm_ios_AudioTimeStamp* obj0 = jObj->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mTimestamp_;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_ = obj.mTimestamp.mSampleTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_ = obj.mTimestamp.mHostTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_ = obj.mTimestamp.mRateScalar;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_ = obj.mTimestamp.mWordClockTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_ = obj.mTimestamp.mSMPTETime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_ = obj.mTimestamp.mFlags;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_ = obj.mTimestamp.mReserved;
	jObj->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mFlags_ = obj.mFlags;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioOutputUnitStartAtTimeParams]
	me->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mTimestamp_ = __NEW_org_xmlvm_ios_AudioTimeStamp();
//XMLVM_END_WRAPPER
