
//XMLVM_BEGIN_IMPLEMENTATION
AudioFileMarker toAudioFileMarker(void *obj)
{
    org_xmlvm_ios_AudioFileMarker* objCObj = obj;
    AudioFileMarker toRet;
    toRet.mFramePosition = objCObj->fields.org_xmlvm_ios_AudioFileMarker.mFramePosition_;
    toRet.mName = objCObj->fields.org_xmlvm_ios_AudioFileMarker.mName_;
    toRet.mMarkerID = objCObj->fields.org_xmlvm_ios_AudioFileMarker.mMarkerID_;
    toRet.mSMPTETime = toAudioFile_SMPTE_Time(objCObj->fields.org_xmlvm_ios_AudioFileMarker.mSMPTETime_);
    toRet.mType = objCObj->fields.org_xmlvm_ios_AudioFileMarker.mType_;
    toRet.mReserved = objCObj->fields.org_xmlvm_ios_AudioFileMarker.mReserved_;
    toRet.mChannel = objCObj->fields.org_xmlvm_ios_AudioFileMarker.mChannel_;
    return toRet;
}
JAVA_OBJECT fromAudioFileMarker(AudioFileMarker obj)
{
    org_xmlvm_ios_AudioFileMarker* jObj = __NEW_org_xmlvm_ios_AudioFileMarker();
    org_xmlvm_ios_AudioFileMarker___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioFileMarker.mFramePosition_ = obj.mFramePosition;
    jObj->fields.org_xmlvm_ios_AudioFileMarker.mName_ = obj.mName;
    jObj->fields.org_xmlvm_ios_AudioFileMarker.mMarkerID_ = obj.mMarkerID;
    jObj->fields.org_xmlvm_ios_AudioFileMarker.mSMPTETime_ = fromAudioFile_SMPTE_Time(obj.mSMPTETime);
    jObj->fields.org_xmlvm_ios_AudioFileMarker.mType_ = obj.mType;
    jObj->fields.org_xmlvm_ios_AudioFileMarker.mReserved_ = obj.mReserved;
    jObj->fields.org_xmlvm_ios_AudioFileMarker.mChannel_ = obj.mChannel;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFileMarker]
    me->fields.org_xmlvm_ios_AudioFileMarker.mSMPTETime_ = __NEW_org_xmlvm_ios_AudioFile_SMPTE_Time();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFileMarker___INIT___]
//XMLVM_END_WRAPPER
