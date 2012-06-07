
//XMLVM_BEGIN_IMPLEMENTATION
AudioQueueBuffer toAudioQueueBuffer(void *obj)
{
    org_xmlvm_ios_AudioQueueBuffer* objCObj = obj;
    AudioQueueBuffer toRet;
    toRet.mAudioDataBytesCapacity = objCObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioDataBytesCapacity_;
    toRet.mAudioData = objCObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioData_;
    toRet.mAudioDataByteSize = objCObj->fields.org_xmlvm_ios_AudioQueueBuffer.mAudioDataByteSize_;
    toRet.mUserData = objCObj->fields.org_xmlvm_ios_AudioQueueBuffer.mUserData_;
    toRet.mPacketDescriptionCapacity = objCObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptionCapacity_;
    toRet.mPacketDescriptions = objCObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptions_;
    toRet.mPacketDescriptionCount = objCObj->fields.org_xmlvm_ios_AudioQueueBuffer.mPacketDescriptionCount_;
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

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueueBuffer___INIT___]
//XMLVM_END_WRAPPER
