
//XMLVM_BEGIN_IMPLEMENTATION
AudioFile_SMPTE_Time toAudioFile_SMPTE_Time(void *obj)
{
    org_xmlvm_ios_AudioFile_SMPTE_Time* objCObj = obj;
    AudioFile_SMPTE_Time toRet;
    toRet.mHours = objCObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mHours_;
    toRet.mMinutes = objCObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mMinutes_;
    toRet.mSeconds = objCObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mSeconds_;
    toRet.mFrames = objCObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mFrames_;
    toRet.mSubFrameSampleOffset = objCObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mSubFrameSampleOffset_;
    return toRet;
}
JAVA_OBJECT fromAudioFile_SMPTE_Time(AudioFile_SMPTE_Time obj)
{
    org_xmlvm_ios_AudioFile_SMPTE_Time* jObj = __NEW_org_xmlvm_ios_AudioFile_SMPTE_Time();
    org_xmlvm_ios_AudioFile_SMPTE_Time___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mHours_ = obj.mHours;
    jObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mMinutes_ = obj.mMinutes;
    jObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mSeconds_ = obj.mSeconds;
    jObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mFrames_ = obj.mFrames;
    jObj->fields.org_xmlvm_ios_AudioFile_SMPTE_Time.mSubFrameSampleOffset_ = obj.mSubFrameSampleOffset;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFile_SMPTE_Time]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFile_SMPTE_Time___INIT___]
//XMLVM_END_WRAPPER
