
//XMLVM_BEGIN_IMPLEMENTATION
AudioTimeStamp toAudioTimeStamp(void *obj)
{
    org_xmlvm_ios_AudioTimeStamp* objCObj = obj;
    AudioTimeStamp toRet;
    toRet.mSampleTime = objCObj->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_;
    toRet.mHostTime = objCObj->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_;
    toRet.mRateScalar = objCObj->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_;
    toRet.mWordClockTime = objCObj->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_;
    toRet.mSMPTETime = toSMPTETime(objCObj->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_);
    toRet.mFlags = objCObj->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_;
    toRet.mReserved = objCObj->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_;
    return toRet;
}
JAVA_OBJECT fromAudioTimeStamp(AudioTimeStamp obj)
{
    org_xmlvm_ios_AudioTimeStamp* jObj = __NEW_org_xmlvm_ios_AudioTimeStamp();
    org_xmlvm_ios_AudioTimeStamp___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioTimeStamp.mSampleTime_ = obj.mSampleTime;
    jObj->fields.org_xmlvm_ios_AudioTimeStamp.mHostTime_ = obj.mHostTime;
    jObj->fields.org_xmlvm_ios_AudioTimeStamp.mRateScalar_ = obj.mRateScalar;
    jObj->fields.org_xmlvm_ios_AudioTimeStamp.mWordClockTime_ = obj.mWordClockTime;
    jObj->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_ = fromSMPTETime(obj.mSMPTETime);
    jObj->fields.org_xmlvm_ios_AudioTimeStamp.mFlags_ = obj.mFlags;
    jObj->fields.org_xmlvm_ios_AudioTimeStamp.mReserved_ = obj.mReserved;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioTimeStamp]
    me->fields.org_xmlvm_ios_AudioTimeStamp.mSMPTETime_ = __NEW_org_xmlvm_ios_SMPTETime();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioTimeStamp___INIT___]
//XMLVM_END_WRAPPER
