
//XMLVM_BEGIN_IMPLEMENTATION
AudioFramePacketTranslation toAudioFramePacketTranslation(void *obj)
{
    org_xmlvm_ios_AudioFramePacketTranslation* objCObj = obj;
    AudioFramePacketTranslation toRet;
    toRet.mFrame = objCObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mFrame_;
    toRet.mPacket = objCObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mPacket_;
    toRet.mFrameOffsetInPacket = objCObj->fields.org_xmlvm_ios_AudioFramePacketTranslation.mFrameOffsetInPacket_;
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

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFramePacketTranslation___INIT___]
//XMLVM_END_WRAPPER
