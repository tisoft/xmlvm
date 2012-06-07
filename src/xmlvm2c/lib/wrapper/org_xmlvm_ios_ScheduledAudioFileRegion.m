
//XMLVM_BEGIN_IMPLEMENTATION
ScheduledAudioFileRegion toScheduledAudioFileRegion(void *obj)
{
    org_xmlvm_ios_ScheduledAudioFileRegion* objCObj = obj;
    ScheduledAudioFileRegion toRet;
    toRet.mTimeStamp = toAudioTimeStamp(objCObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mTimeStamp_);
    toRet.mCompletionProc = objCObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mCompletionProc_;
    toRet.mCompletionProcUserData = objCObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mCompletionProcUserData_;
    toRet.mLoopCount = objCObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mLoopCount_;
    toRet.mStartFrame = objCObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mStartFrame_;
    toRet.mFramesToPlay = objCObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mFramesToPlay_;
    return toRet;
}
JAVA_OBJECT fromScheduledAudioFileRegion(ScheduledAudioFileRegion obj)
{
    org_xmlvm_ios_ScheduledAudioFileRegion* jObj = __NEW_org_xmlvm_ios_ScheduledAudioFileRegion();
    org_xmlvm_ios_ScheduledAudioFileRegion___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mTimeStamp_ = fromAudioTimeStamp(obj.mTimeStamp);
    jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mCompletionProc_ = obj.mCompletionProc;
    jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mCompletionProcUserData_ = obj.mCompletionProcUserData;
    jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mLoopCount_ = obj.mLoopCount;
    jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mStartFrame_ = obj.mStartFrame;
    jObj->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mFramesToPlay_ = obj.mFramesToPlay;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_ScheduledAudioFileRegion]
    me->fields.org_xmlvm_ios_ScheduledAudioFileRegion.mTimeStamp_ = __NEW_org_xmlvm_ios_AudioTimeStamp();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ScheduledAudioFileRegion___INIT___]
//XMLVM_END_WRAPPER
