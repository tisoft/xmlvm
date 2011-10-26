
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioFileMarker toAudioFileMarker(void *obj)
{
	org_xmlvm_ios_AudioFileMarker* cObj = obj;
	AudioFileMarker toRet;
	toRet.mFramePosition = cObj->fields.org_xmlvm_ios_AudioFileMarker.mFramePosition_;
	toRet.mName = cObj->fields.org_xmlvm_ios_AudioFileMarker.mName_;
	toRet.mMarkerID = cObj->fields.org_xmlvm_ios_AudioFileMarker.mMarkerID_;
	org_xmlvm_ios_AudioFile_SMPTE_Time* obj0 = cObj->fields.org_xmlvm_ios_AudioFileMarker.mSMPTETime_;
	toRet.mSMPTETime.mHours = obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mHours_;
	toRet.mSMPTETime.mMinutes = obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mMinutes_;
	toRet.mSMPTETime.mSeconds = obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mSeconds_;
	toRet.mSMPTETime.mFrames = obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mFrames_;
	toRet.mSMPTETime.mSubFrameSampleOffset = obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mSubFrameSampleOffset_;
	toRet.mType = cObj->fields.org_xmlvm_ios_AudioFileMarker.mType_;
	toRet.mReserved = cObj->fields.org_xmlvm_ios_AudioFileMarker.mReserved_;
	toRet.mChannel = cObj->fields.org_xmlvm_ios_AudioFileMarker.mChannel_;
	return toRet;
}
JAVA_OBJECT fromAudioFileMarker(AudioFileMarker obj)
{
	org_xmlvm_ios_AudioFileMarker* jObj = __NEW_org_xmlvm_ios_AudioFileMarker();
	org_xmlvm_ios_AudioFileMarker___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioFileMarker.mFramePosition_ = obj.mFramePosition;
	jObj->fields.org_xmlvm_ios_AudioFileMarker.mName_ = obj.mName;
	jObj->fields.org_xmlvm_ios_AudioFileMarker.mMarkerID_ = obj.mMarkerID;
	org_xmlvm_ios_AudioFile_SMPTE_Time* obj0 = jObj->fields.org_xmlvm_ios_AudioFileMarker.mSMPTETime_;
	obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mHours_ = obj.mSMPTETime.mHours;
	obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mMinutes_ = obj.mSMPTETime.mMinutes;
	obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mSeconds_ = obj.mSMPTETime.mSeconds;
	obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mFrames_ = obj.mSMPTETime.mFrames;
	obj0->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mSubFrameSampleOffset_ = obj.mSMPTETime.mSubFrameSampleOffset;
	jObj->fields.org_xmlvm_ios_AudioFileMarker.mType_ = obj.mType;
	jObj->fields.org_xmlvm_ios_AudioFileMarker.mReserved_ = obj.mReserved;
	jObj->fields.org_xmlvm_ios_AudioFileMarker.mChannel_ = obj.mChannel;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFileMarker]
	me->fields.org_xmlvm_ios_AudioFileMarker.mSMPTETime_ = __NEW_org_xmlvm_ios_AudioFile_SMPTE_Time();
//XMLVM_END_WRAPPER
