
//XMLVM_BEGIN_IMPLEMENTATION
AudioPanningInfo toAudioPanningInfo(void *obj)
{
    org_xmlvm_ios_AudioPanningInfo* objCObj = obj;
    AudioPanningInfo toRet;
    toRet.mPanningMode = objCObj->fields.org_xmlvm_ios_AudioPanningInfo.mPanningMode_;
    toRet.mCoordinateFlags = objCObj->fields.org_xmlvm_ios_AudioPanningInfo.mCoordinateFlags_;
    toRet.mGainScale = objCObj->fields.org_xmlvm_ios_AudioPanningInfo.mGainScale_;
    toRet.mOutputChannelMap = objCObj->fields.org_xmlvm_ios_AudioPanningInfo.mOutputChannelMap_;
    return toRet;
}
JAVA_OBJECT fromAudioPanningInfo(AudioPanningInfo obj)
{
    org_xmlvm_ios_AudioPanningInfo* jObj = __NEW_org_xmlvm_ios_AudioPanningInfo();
    org_xmlvm_ios_AudioPanningInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioPanningInfo.mPanningMode_ = obj.mPanningMode;
    jObj->fields.org_xmlvm_ios_AudioPanningInfo.mCoordinateFlags_ = obj.mCoordinateFlags;
    jObj->fields.org_xmlvm_ios_AudioPanningInfo.mGainScale_ = obj.mGainScale;
    jObj->fields.org_xmlvm_ios_AudioPanningInfo.mOutputChannelMap_ = obj.mOutputChannelMap;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioPanningInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioPanningInfo___INIT___]
//XMLVM_END_WRAPPER
