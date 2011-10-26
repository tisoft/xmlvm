
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioTimeStamp toAudioTimeStamp(void *obj)
{
	org_xmlvm_ios_AudioTimeStamp* cObj = obj;
	AudioTimeStamp toRet;
	toRet.mSampleTime = cObj->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_;
	toRet.mHostTime = cObj->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_;
	toRet.mRateScalar = cObj->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_;
	toRet.mWordClockTime = cObj->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_;
	org_xmlvm_ios_SMPTETime* obj0 = cObj->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_;
	toRet.mSMPTETime.mSubframes = obj0->fields.org_xmlvm_ios_SMPTETime.mSubframes_;
	toRet.mSMPTETime.mSubframeDivisor = obj0->fields.org_xmlvm_ios_SMPTETime.mSubframeDivisor_;
	toRet.mSMPTETime.mCounter = obj0->fields.org_xmlvm_ios_SMPTETime.mCounter_;
	toRet.mSMPTETime.mType = obj0->fields.org_xmlvm_ios_SMPTETime.mType_;
	toRet.mSMPTETime.mFlags = obj0->fields.org_xmlvm_ios_SMPTETime.mFlags_;
	toRet.mSMPTETime.mHours = obj0->fields.org_xmlvm_ios_SMPTETime.mHours_;
	toRet.mSMPTETime.mMinutes = obj0->fields.org_xmlvm_ios_SMPTETime.mMinutes_;
	toRet.mSMPTETime.mSeconds = obj0->fields.org_xmlvm_ios_SMPTETime.mSeconds_;
	toRet.mSMPTETime.mFrames = obj0->fields.org_xmlvm_ios_SMPTETime.mFrames_;
	toRet.mFlags = cObj->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_;
	toRet.mReserved = cObj->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_;
	return toRet;
}
JAVA_OBJECT fromAudioTimeStamp(AudioTimeStamp obj)
{
	org_xmlvm_ios_AudioTimeStamp* jObj = __NEW_org_xmlvm_ios_AudioTimeStamp();
	org_xmlvm_ios_AudioTimeStamp___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_ = obj.mSampleTime;
	jObj->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_ = obj.mHostTime;
	jObj->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_ = obj.mRateScalar;
	jObj->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_ = obj.mWordClockTime;
	org_xmlvm_ios_SMPTETime* obj0 = jObj->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_;
	obj0->fields.org_xmlvm_ios_SMPTETime.mSubframes_ = obj.mSMPTETime.mSubframes;
	obj0->fields.org_xmlvm_ios_SMPTETime.mSubframeDivisor_ = obj.mSMPTETime.mSubframeDivisor;
	obj0->fields.org_xmlvm_ios_SMPTETime.mCounter_ = obj.mSMPTETime.mCounter;
	obj0->fields.org_xmlvm_ios_SMPTETime.mType_ = obj.mSMPTETime.mType;
	obj0->fields.org_xmlvm_ios_SMPTETime.mFlags_ = obj.mSMPTETime.mFlags;
	obj0->fields.org_xmlvm_ios_SMPTETime.mHours_ = obj.mSMPTETime.mHours;
	obj0->fields.org_xmlvm_ios_SMPTETime.mMinutes_ = obj.mSMPTETime.mMinutes;
	obj0->fields.org_xmlvm_ios_SMPTETime.mSeconds_ = obj.mSMPTETime.mSeconds;
	obj0->fields.org_xmlvm_ios_SMPTETime.mFrames_ = obj.mSMPTETime.mFrames;
	jObj->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_ = obj.mFlags;
	jObj->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_ = obj.mReserved;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioTimeStamp]
	me->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_ = __NEW_org_xmlvm_ios_SMPTETime();
//XMLVM_END_WRAPPER
