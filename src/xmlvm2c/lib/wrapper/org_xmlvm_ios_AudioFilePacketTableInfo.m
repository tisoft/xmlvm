
//XMLVM_BEGIN_IMPLEMENTATION
AudioFilePacketTableInfo toAudioFilePacketTableInfo(void *obj)
{
    org_xmlvm_ios_AudioFilePacketTableInfo* objCObj = obj;
    AudioFilePacketTableInfo toRet;
    toRet.mNumberValidFrames = objCObj->fields.org_xmlvm_ios_AudioFilePacketTableInfo.mNumberValidFrames_;
    toRet.mPrimingFrames = objCObj->fields.org_xmlvm_ios_AudioFilePacketTableInfo.mPrimingFrames_;
    toRet.mRemainderFrames = objCObj->fields.org_xmlvm_ios_AudioFilePacketTableInfo.mRemainderFrames_;
    return toRet;
}
JAVA_OBJECT fromAudioFilePacketTableInfo(AudioFilePacketTableInfo obj)
{
    org_xmlvm_ios_AudioFilePacketTableInfo* jObj = __NEW_org_xmlvm_ios_AudioFilePacketTableInfo();
    org_xmlvm_ios_AudioFilePacketTableInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioFilePacketTableInfo.mNumberValidFrames_ = obj.mNumberValidFrames;
    jObj->fields.org_xmlvm_ios_AudioFilePacketTableInfo.mPrimingFrames_ = obj.mPrimingFrames;
    jObj->fields.org_xmlvm_ios_AudioFilePacketTableInfo.mRemainderFrames_ = obj.mRemainderFrames;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFilePacketTableInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFilePacketTableInfo___INIT___]
//XMLVM_END_WRAPPER
