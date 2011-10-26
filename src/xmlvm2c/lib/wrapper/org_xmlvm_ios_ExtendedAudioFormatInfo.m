
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

ExtendedAudioFormatInfo toExtendedAudioFormatInfo(void *obj)
{
	org_xmlvm_ios_ExtendedAudioFormatInfo* cObj = obj;
	ExtendedAudioFormatInfo toRet;
	org_xmlvm_ios_AudioStreamBasicDescription* obj0 = cObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mASBD_;
	toRet.mASBD.mSampleRate = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_;
	toRet.mASBD.mFormatID = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_;
	toRet.mASBD.mFormatFlags = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_;
	toRet.mASBD.mBytesPerPacket = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_;
	toRet.mASBD.mFramesPerPacket = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_;
	toRet.mASBD.mBytesPerFrame = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_;
	toRet.mASBD.mChannelsPerFrame = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_;
	toRet.mASBD.mBitsPerChannel = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_;
	toRet.mASBD.mReserved = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_;
	toRet.mMagicCookie = cObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mMagicCookie_;
	toRet.mMagicCookieSize = cObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mMagicCookieSize_;
	org_xmlvm_ios_AudioClassDescription* obj1 = cObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mClassDescription_;
	toRet.mClassDescription.mType = obj1->fields.org_xmlvm_ios_AudioClassDescription.mType_;
	toRet.mClassDescription.mSubType = obj1->fields.org_xmlvm_ios_AudioClassDescription.mSubType_;
	toRet.mClassDescription.mManufacturer = obj1->fields.org_xmlvm_ios_AudioClassDescription.mManufacturer_;
	return toRet;
}
JAVA_OBJECT fromExtendedAudioFormatInfo(ExtendedAudioFormatInfo obj)
{
	org_xmlvm_ios_ExtendedAudioFormatInfo* jObj = __NEW_org_xmlvm_ios_ExtendedAudioFormatInfo();
	org_xmlvm_ios_ExtendedAudioFormatInfo___INIT___(jObj);
	org_xmlvm_ios_AudioStreamBasicDescription* obj0 = jObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mASBD_;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_ = obj.mASBD.mSampleRate;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_ = obj.mASBD.mFormatID;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_ = obj.mASBD.mFormatFlags;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_ = obj.mASBD.mBytesPerPacket;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_ = obj.mASBD.mFramesPerPacket;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_ = obj.mASBD.mBytesPerFrame;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_ = obj.mASBD.mChannelsPerFrame;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_ = obj.mASBD.mBitsPerChannel;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_ = obj.mASBD.mReserved;
	jObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mMagicCookie_ = obj.mMagicCookie;
	jObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mMagicCookieSize_ = obj.mMagicCookieSize;
	org_xmlvm_ios_AudioClassDescription* obj1 = jObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mClassDescription_;
	obj1->fields.org_xmlvm_ios_AudioClassDescription.mType_ = obj.mClassDescription.mType;
	obj1->fields.org_xmlvm_ios_AudioClassDescription.mSubType_ = obj.mClassDescription.mSubType;
	obj1->fields.org_xmlvm_ios_AudioClassDescription.mManufacturer_ = obj.mClassDescription.mManufacturer;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_ExtendedAudioFormatInfo]
	me->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mASBD_ = __NEW_org_xmlvm_ios_AudioStreamBasicDescription();
	me->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mClassDescription_ = __NEW_org_xmlvm_ios_AudioClassDescription();
//XMLVM_END_WRAPPER
