
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioFormatListItem toAudioFormatListItem(void *obj)
{
	org_xmlvm_ios_AudioFormatListItem* cObj = obj;
	AudioFormatListItem toRet;
	org_xmlvm_ios_AudioStreamBasicDescription* obj0 = cObj->fields.org_xmlvm_ios_AudioFormatListItem.mASBD_;
	toRet.mASBD.mSampleRate = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_;
	toRet.mASBD.mFormatID = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_;
	toRet.mASBD.mFormatFlags = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_;
	toRet.mASBD.mBytesPerPacket = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_;
	toRet.mASBD.mFramesPerPacket = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_;
	toRet.mASBD.mBytesPerFrame = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_;
	toRet.mASBD.mChannelsPerFrame = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_;
	toRet.mASBD.mBitsPerChannel = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_;
	toRet.mASBD.mReserved = obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_;
	toRet.mChannelLayoutTag = cObj->fields.org_xmlvm_ios_AudioFormatListItem.mChannelLayoutTag_;
	return toRet;
}
JAVA_OBJECT fromAudioFormatListItem(AudioFormatListItem obj)
{
	org_xmlvm_ios_AudioFormatListItem* jObj = __NEW_org_xmlvm_ios_AudioFormatListItem();
	org_xmlvm_ios_AudioFormatListItem___INIT___(jObj);
	org_xmlvm_ios_AudioStreamBasicDescription* obj0 = jObj->fields.org_xmlvm_ios_AudioFormatListItem.mASBD_;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_ = obj.mASBD.mSampleRate;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_ = obj.mASBD.mFormatID;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_ = obj.mASBD.mFormatFlags;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_ = obj.mASBD.mBytesPerPacket;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_ = obj.mASBD.mFramesPerPacket;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_ = obj.mASBD.mBytesPerFrame;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_ = obj.mASBD.mChannelsPerFrame;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_ = obj.mASBD.mBitsPerChannel;
	obj0->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_ = obj.mASBD.mReserved;
	jObj->fields.org_xmlvm_ios_AudioFormatListItem.mChannelLayoutTag_ = obj.mChannelLayoutTag;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFormatListItem]
	me->fields.org_xmlvm_ios_AudioFormatListItem.mASBD_ = __NEW_org_xmlvm_ios_AudioStreamBasicDescription();
//XMLVM_END_WRAPPER
