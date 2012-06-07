
//XMLVM_BEGIN_IMPLEMENTATION
AudioBytePacketTranslation toAudioBytePacketTranslation(void *obj)
{
    org_xmlvm_ios_AudioBytePacketTranslation* objCObj = obj;
    AudioBytePacketTranslation toRet;
    toRet.mByte = objCObj->fields.org_xmlvm_ios_AudioBytePacketTranslation.mByte_;
    toRet.mPacket = objCObj->fields.org_xmlvm_ios_AudioBytePacketTranslation.mPacket_;
    toRet.mByteOffsetInPacket = objCObj->fields.org_xmlvm_ios_AudioBytePacketTranslation.mByteOffsetInPacket_;
    toRet.mFlags = objCObj->fields.org_xmlvm_ios_AudioBytePacketTranslation.mFlags_;
    return toRet;
}
JAVA_OBJECT fromAudioBytePacketTranslation(AudioBytePacketTranslation obj)
{
    org_xmlvm_ios_AudioBytePacketTranslation* jObj = __NEW_org_xmlvm_ios_AudioBytePacketTranslation();
    org_xmlvm_ios_AudioBytePacketTranslation___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioBytePacketTranslation.mByte_ = obj.mByte;
    jObj->fields.org_xmlvm_ios_AudioBytePacketTranslation.mPacket_ = obj.mPacket;
    jObj->fields.org_xmlvm_ios_AudioBytePacketTranslation.mByteOffsetInPacket_ = obj.mByteOffsetInPacket;
    jObj->fields.org_xmlvm_ios_AudioBytePacketTranslation.mFlags_ = obj.mFlags;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioBytePacketTranslation]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioBytePacketTranslation___INIT___]
//XMLVM_END_WRAPPER
