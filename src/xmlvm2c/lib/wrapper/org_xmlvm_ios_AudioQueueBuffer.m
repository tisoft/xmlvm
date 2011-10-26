
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioQueueBuffer toAudioQueueBuffer(void *obj)
{
	org_xmlvm_ios_AudioQueueBuffer* cObj = obj;
	AudioQueueBuffer toRet;
	toRet.mAudioDataBytesCapacity = cObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioDataBytesCapacity_;
	toRet.mAudioData = cObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioData_;
	toRet.mAudioDataByteSize = cObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioDataByteSize_;
	toRet.mUserData = cObj->fields.org_xmlvm_ios_AudioQueueBuffer.mUserData_;
	toRet.mPacketDescriptionCapacity = cObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptionCapacity_;
	toRet.mPacketDescriptions = cObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptions_;
	toRet.mPacketDescriptionCount = cObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptionCount_;
	return toRet;
}
JAVA_OBJECT fromAudioQueueBuffer(AudioQueueBuffer obj)
{
	org_xmlvm_ios_AudioQueueBuffer* jObj = __NEW_org_xmlvm_ios_AudioQueueBuffer();
	org_xmlvm_ios_AudioQueueBuffer___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioDataBytesCapacity_ = obj.mAudioDataBytesCapacity;
	jObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioData_ = obj.mAudioData;
	jObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioDataByteSize_ = obj.mAudioDataByteSize;
	jObj->fields.org_xmlvm_ios_AudioQueueBuffer.mUserData_ = obj.mUserData;
	jObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptionCapacity_ = obj.mPacketDescriptionCapacity;
	jObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptions_ = obj.mPacketDescriptions;
	jObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptionCount_ = obj.mPacketDescriptionCount;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioQueueBuffer]
//XMLVM_END_WRAPPER
