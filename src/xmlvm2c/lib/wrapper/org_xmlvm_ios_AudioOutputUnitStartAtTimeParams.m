
//XMLVM_BEGIN_IMPLEMENTATION
AudioOutputUnitStartAtTimeParams toAudioOutputUnitStartAtTimeParams(void *obj)
{
    org_xmlvm_ios_AudioOutputUnitStartAtTimeParams* objCObj = obj;
    AudioOutputUnitStartAtTimeParams toRet;
    toRet.mTimestamp = toAudioTimeStamp(objCObj->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mTimestamp_);
    toRet.mFlags = objCObj->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mFlags_;
    return toRet;
}
JAVA_OBJECT fromAudioOutputUnitStartAtTimeParams(AudioOutputUnitStartAtTimeParams obj)
{
    org_xmlvm_ios_AudioOutputUnitStartAtTimeParams* jObj = __NEW_org_xmlvm_ios_AudioOutputUnitStartAtTimeParams();
    org_xmlvm_ios_AudioOutputUnitStartAtTimeParams___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mTimestamp_ = fromAudioTimeStamp(obj.mTimestamp);
    jObj->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mFlags_ = obj.mFlags;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioOutputUnitStartAtTimeParams]
    me->fields.org_xmlvm_ios_AudioOutputUnitStartAtTimeParams.mTimestamp_ = __NEW_org_xmlvm_ios_AudioTimeStamp();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioOutputUnitStartAtTimeParams___INIT___]
//XMLVM_END_WRAPPER
