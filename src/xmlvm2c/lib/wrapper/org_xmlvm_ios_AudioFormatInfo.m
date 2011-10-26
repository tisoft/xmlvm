
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioFormatInfo toAudioFormatInfo(void *obj)
{
	org_xmlvm_ios_AudioFormatInfo* cObj = obj;
	AudioFormatInfo toRet;
	org_xmlvm_ios_AudioStreamBasicDescription* obj0 = cObj->fields.org_xmlvm_ios_AudioFormatInfo.mASBD_;
	toRet.mASBD.mSampleRate = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_;
	toRet.mASBD.mFormatID = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_;
	toRet.mASBD.mFormatFlags = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_;
	toRet.mASBD.mBytesPerPacket = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_;
	toRet.mASBD.mFramesPerPacket = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_;
	toRet.mASBD.mBytesPerFrame = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_;
	toRet.mASBD.mChannelsPerFrame = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_;
	toRet.mASBD.mBitsPerChannel = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_;
	toRet.mASBD.mReserved = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_;
	toRet.mMagicCookie = cObj->fields.org_xmlvm_ios_AudioFormatInfo.mMagicCookie_;
	toRet.mMagicCookieSize = cObj->fields.org_xmlvm_ios_AudioFormatInfo.mMagicCookieSize_;
	return toRet;
}
JAVA_OBJECT fromAudioFormatInfo(AudioFormatInfo obj)
{
	org_xmlvm_ios_AudioFormatInfo* jObj = __NEW_org_xmlvm_ios_AudioFormatInfo();
	org_xmlvm_ios_AudioFormatInfo___INIT___(jObj);
	org_xmlvm_ios_AudioStreamBasicDescription* obj0 = jObj->fields.org_xmlvm_ios_AudioFormatInfo.mASBD_;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_ = obj.mASBD.mSampleRate;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_ = obj.mASBD.mFormatID;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_ = obj.mASBD.mFormatFlags;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_ = obj.mASBD.mBytesPerPacket;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_ = obj.mASBD.mFramesPerPacket;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_ = obj.mASBD.mBytesPerFrame;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_ = obj.mASBD.mChannelsPerFrame;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_ = obj.mASBD.mBitsPerChannel;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_ = obj.mASBD.mReserved;
	jObj->fields.org_xmlvm_ios_AudioFormatInfo.mMagicCookie_ = obj.mMagicCookie;
	jObj->fields.org_xmlvm_ios_AudioFormatInfo.mMagicCookieSize_ = obj.mMagicCookieSize;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFormatInfo]
	me->fields.org_xmlvm_ios_AudioFormatInfo.mASBD_ = __NEW_org_xmlvm_ios_AudioStreamBasicDescription();
//XMLVM_END_WRAPPER
