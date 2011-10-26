
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

ScheduledAudioSlice toScheduledAudioSlice(void *obj)
{
	org_xmlvm_ios_ScheduledAudioSlice* cObj = obj;
	ScheduledAudioSlice toRet;
	org_xmlvm_ios_AudioTimeStamp* obj0 = cObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mTimeStamp_;
	toRet.mTimeStamp.mSampleTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_;
	toRet.mTimeStamp.mHostTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_;
	toRet.mTimeStamp.mRateScalar = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_;
	toRet.mTimeStamp.mWordClockTime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_;
	toRet.mTimeStamp.mSMPTETime = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_;
	toRet.mTimeStamp.mFlags = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_;
	toRet.mTimeStamp.mReserved = obj0->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_;
	toRet.mCompletionProc = cObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mCompletionProc_;
	toRet.mCompletionProcUserData = cObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mCompletionProcUserData_;
	toRet.mFlags = cObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mFlags_;
	toRet.mReserved = cObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mReserved_;
	toRet.mReserved2 = cObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mReserved2_;
	toRet.mNumberFrames = cObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mNumberFrames_;
	toRet.mBufferList = cObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mBufferList_;
	return toRet;
}
JAVA_OBJECT fromScheduledAudioSlice(ScheduledAudioSlice obj)
{
	org_xmlvm_ios_ScheduledAudioSlice* jObj = __NEW_org_xmlvm_ios_ScheduledAudioSlice();
	org_xmlvm_ios_ScheduledAudioSlice___INIT___(jObj);
	org_xmlvm_ios_AudioTimeStamp* obj0 = jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mTimeStamp_;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_ = obj.mTimeStamp.mSampleTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_ = obj.mTimeStamp.mHostTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_ = obj.mTimeStamp.mRateScalar;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_ = obj.mTimeStamp.mWordClockTime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_ = obj.mTimeStamp.mSMPTETime;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_ = obj.mTimeStamp.mFlags;
	obj0->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_ = obj.mTimeStamp.mReserved;
	jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mCompletionProc_ = obj.mCompletionProc;
	jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mCompletionProcUserData_ = obj.mCompletionProcUserData;
	jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mFlags_ = obj.mFlags;
	jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mReserved_ = obj.mReserved;
	jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mReserved2_ = obj.mReserved2;
	jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mNumberFrames_ = obj.mNumberFrames;
	jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mBufferList_ = obj.mBufferList;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_ScheduledAudioSlice]
	me->fields.org_xmlvm_ios_ScheduledAudioSlice.mTimeStamp_ = __NEW_org_xmlvm_ios_AudioTimeStamp();
//XMLVM_END_WRAPPER
