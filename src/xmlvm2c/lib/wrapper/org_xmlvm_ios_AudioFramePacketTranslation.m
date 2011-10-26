
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioFramePacketTranslation toAudioFramePacketTranslation(void *obj)
{
	org_xmlvm_ios_AudioFramePacketTranslation* cObj = obj;
	AudioFramePacketTranslation toRet;
	toRet.mFrame = cObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mFrame_;
	toRet.mPacket = cObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mPacket_;
	toRet.mFrameOffsetInPacket = cObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mFrameOffsetInPacket_;
	return toRet;
}
JAVA_OBJECT fromAudioFramePacketTranslation(AudioFramePacketTranslation obj)
{
	org_xmlvm_ios_AudioFramePacketTranslation* jObj = __NEW_org_xmlvm_ios_AudioFramePacketTranslation();
	org_xmlvm_ios_AudioFramePacketTranslation___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mFrame_ = obj.mFrame;
	jObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mPacket_ = obj.mPacket;
	jObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mFrameOffsetInPacket_ = obj.mFrameOffsetInPacket;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFramePacketTranslation]
//XMLVM_END_WRAPPER
