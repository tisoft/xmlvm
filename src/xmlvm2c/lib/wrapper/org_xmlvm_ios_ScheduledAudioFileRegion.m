
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

ScheduledAudioFileRegion toScheduledAudioFileRegion(void *obj)
{
	org_xmlvm_ios_ScheduledAudioFileRegion* cObj = obj;
	ScheduledAudioFileRegion toRet;
	org_xmlvm_ios_AudioTimeStamp* obj0 = cObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mTimeStamp_;
	toRet.mTimeStamp.mSampleTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_;
	toRet.mTimeStamp.mHostTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_;
	toRet.mTimeStamp.mRateScalar = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_;
	toRet.mTimeStamp.mWordClockTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_;
	toRet.mTimeStamp.mSMPTETime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_;
	toRet.mTimeStamp.mFlags = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_;
	toRet.mTimeStamp.mReserved = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_;
	toRet.mCompletionProc = cObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mCompletionProc_;
	toRet.mCompletionProcUserData = cObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mCompletionProcUserData_;
	toRet.mLoopCount = cObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mLoopCount_;
	toRet.mStartFrame = cObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mStartFrame_;
	toRet.mFramesToPlay = cObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mFramesToPlay_;
	return toRet;
}
JAVA_OBJECT fromScheduledAudioFileRegion(ScheduledAudioFileRegion obj)
{
	org_xmlvm_ios_ScheduledAudioFileRegion* jObj = __NEW_org_xmlvm_ios_ScheduledAudioFileRegion();
	org_xmlvm_ios_ScheduledAudioFileRegion___INIT___(jObj);
	org_xmlvm_ios_AudioTimeStamp* obj0 = jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mTimeStamp_;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_ = obj.mTimeStamp.mSampleTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_ = obj.mTimeStamp.mHostTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_ = obj.mTimeStamp.mRateScalar;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_ = obj.mTimeStamp.mWordClockTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_ = obj.mTimeStamp.mSMPTETime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_ = obj.mTimeStamp.mFlags;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_ = obj.mTimeStamp.mReserved;
	jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mCompletionProc_ = obj.mCompletionProc;
	jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mCompletionProcUserData_ = obj.mCompletionProcUserData;
	jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mLoopCount_ = obj.mLoopCount;
	jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mStartFrame_ = obj.mStartFrame;
	jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mFramesToPlay_ = obj.mFramesToPlay;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_ScheduledAudioFileRegion]
	me->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mTimeStamp_ = __NEW_org_xmlvm_ios_AudioTimeStamp();
//XMLVM_END_WRAPPER
