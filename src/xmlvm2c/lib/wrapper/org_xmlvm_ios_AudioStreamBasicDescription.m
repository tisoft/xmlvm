
//XMLVM_BEGIN_IMPLEMENTATION
AudioStreamBasicDescription toAudioStreamBasicDescription(void *obj)
{
    org_xmlvm_ios_AudioStreamBasicDescription* objCObj = obj;
    AudioStreamBasicDescription toRet;
    toRet.mSampleRate = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_;
    toRet.mFormatID = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_;
    toRet.mFormatFlags = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_;
    toRet.mBytesPerPacket = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_;
    toRet.mFramesPerPacket = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_;
    toRet.mBytesPerFrame = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_;
    toRet.mChannelsPerFrame = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_;
    toRet.mBitsPerChannel = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_;
    toRet.mReserved = objCObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_;
    return toRet;
}
JAVA_OBJECT fromAudioStreamBasicDescription(AudioStreamBasicDescription obj)
{
    org_xmlvm_ios_AudioStreamBasicDescription* jObj = __NEW_org_xmlvm_ios_AudioStreamBasicDescription();
    org_xmlvm_ios_AudioStreamBasicDescription___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mSampleRate_ = obj.mSampleRate;
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatID_ = obj.mFormatID;
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFormatFlags_ = obj.mFormatFlags;
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerPacket_ = obj.mBytesPerPacket;
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mFramesPerPacket_ = obj.mFramesPerPacket;
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBytesPerFrame_ = obj.mBytesPerFrame;
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mChannelsPerFrame_ = obj.mChannelsPerFrame;
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mBitsPerChannel_ = obj.mBitsPerChannel;
    jObj->fields.org_xmlvm_ios_AudioStreamBasicDescription.mReserved_ = obj.mReserved;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioStreamBasicDescription]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioStreamBasicDescription___INIT___]
//XMLVM_END_WRAPPER
