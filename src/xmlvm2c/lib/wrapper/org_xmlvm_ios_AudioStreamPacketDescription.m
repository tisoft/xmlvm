
//XMLVM_BEGIN_IMPLEMENTATION
AudioStreamPacketDescription toAudioStreamPacketDescription(void *obj)
{
    org_xmlvm_ios_AudioStreamPacketDescription* objCObj = obj;
    AudioStreamPacketDescription toRet;
    toRet.mStartOffset = objCObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mStartOffset_;
    toRet.mVariableFramesInPacket = objCObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mVariableFramesInPacket_;
    toRet.mDataByteSize = objCObj->fields.org_xmlvm_ios_AudioStreamPacketDescription.mDataByteSize_;
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

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioStreamPacketDescription___INIT___]
//XMLVM_END_WRAPPER
