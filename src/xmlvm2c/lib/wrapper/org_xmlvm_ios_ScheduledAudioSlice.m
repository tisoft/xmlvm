
//XMLVM_BEGIN_IMPLEMENTATION
ScheduledAudioSlice toScheduledAudioSlice(void *obj)
{
    org_xmlvm_ios_ScheduledAudioSlice* objCObj = obj;
    ScheduledAudioSlice toRet;
    toRet.mTimeStamp = toAudioTimeStamp(objCObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mTimeStamp_);
    toRet.mCompletionProc = objCObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mCompletionProc_;
    toRet.mCompletionProcUserData = objCObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mCompletionProcUserData_;
    toRet.mFlags = objCObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mFlags_;
    toRet.mReserved = objCObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mReserved_;
    toRet.mReserved2 = objCObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mReserved2_;
    toRet.mNumberFrames = objCObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mNumberFrames_;
    toRet.mBufferList = objCObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mBufferList_;
    return toRet;
}
JAVA_OBJECT fromScheduledAudioSlice(ScheduledAudioSlice obj)
{
    org_xmlvm_ios_ScheduledAudioSlice* jObj = __NEW_org_xmlvm_ios_ScheduledAudioSlice();
    org_xmlvm_ios_ScheduledAudioSlice___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mTimeStamp_ = fromAudioTimeStamp(obj.mTimeStamp);
    jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mCompletionProc_ = obj.mCompletionProc;
    jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mCompletionProcUserData_ = obj.mCompletionProcUserData;
    jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mFlags_ = obj.mFlags;
    jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mReserved_ = obj.mReserved;
    jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mReserved2_ = obj.mReserved2;
    jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mNumberFrames_ = obj.mNumberFrames;
    jObj->fields.org_xmlvm_ios_ScheduledAudioSlice.mBufferList_ = obj.mBufferList;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_ScheduledAudioSlice]
    me->fields.org_xmlvm_ios_ScheduledAudioSlice.mTimeStamp_ = __NEW_org_xmlvm_ios_AudioTimeStamp();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ScheduledAudioSlice___INIT___]
//XMLVM_END_WRAPPER
