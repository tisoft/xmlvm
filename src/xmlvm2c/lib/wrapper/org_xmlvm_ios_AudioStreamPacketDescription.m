
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioStreamPacketDescription toAudioStreamPacketDescription(void *obj)
{
	org_xmlvm_ios_AudioStreamPacketDescription* cObj = obj;
	AudioStreamPacketDescription toRet;
	toRet.mStartOffset = cObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mStartOffset_;
	toRet.mVariableFramesInPacket = cObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mVariableFramesInPacket_;
	toRet.mDataByteSize = cObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mDataByteSize_;
	return toRet;
}
JAVA_OBJECT fromAudioStreamPacketDescription(AudioStreamPacketDescription obj)
{
	org_xmlvm_ios_AudioStreamPacketDescription* jObj = __NEW_org_xmlvm_ios_AudioStreamPacketDescription();
	org_xmlvm_ios_AudioStreamPacketDescription___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mStartOffset_ = obj.mStartOffset;
	jObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mVariableFramesInPacket_ = obj.mVariableFramesInPacket;
	jObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mDataByteSize_ = obj.mDataByteSize;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioStreamPacketDescription]
//XMLVM_END_WRAPPER
