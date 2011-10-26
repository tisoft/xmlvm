
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioStreamBasicDescription toAudioStreamBasicDescription(void *obj)
{
	org_xmlvm_ios_AudioStreamBasicDescription* cObj = obj;
	AudioStreamBasicDescription toRet;
	toRet.mSampleRate = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_;
	toRet.mFormatID = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_;
	toRet.mFormatFlags = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_;
	toRet.mBytesPerPacket = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_;
	toRet.mFramesPerPacket = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_;
	toRet.mBytesPerFrame = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_;
	toRet.mChannelsPerFrame = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_;
	toRet.mBitsPerChannel = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_;
	toRet.mReserved = cObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_;
	return toRet;
}
JAVA_OBJECT fromAudioStreamBasicDescription(AudioStreamBasicDescription obj)
{
	org_xmlvm_ios_AudioStreamBasicDescription* jObj = __NEW_org_xmlvm_ios_AudioStreamBasicDescription();
	org_xmlvm_ios_AudioStreamBasicDescription___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_ = obj.mSampleRate;
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_ = obj.mFormatID;
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_ = obj.mFormatFlags;
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_ = obj.mBytesPerPacket;
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_ = obj.mFramesPerPacket;
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_ = obj.mBytesPerFrame;
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_ = obj.mChannelsPerFrame;
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_ = obj.mBitsPerChannel;
	jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_ = obj.mReserved;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioStreamBasicDescription]
//XMLVM_END_WRAPPER
