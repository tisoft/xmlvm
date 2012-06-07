
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitParameterHistoryInfo toAudioUnitParameterHistoryInfo(void *obj)
{
    org_xmlvm_ios_AudioUnitParameterHistoryInfo* objCObj = obj;
    AudioUnitParameterHistoryInfo toRet;
    toRet.updatesPerSecond = objCObj->fields.org_xmlvm_ios_AudioUnitParameterHistoryInfo.updatesPerSecond_;
    toRet.historyDurationInSeconds = objCObj->fields.org_xmlvm_ios_AudioUnitParameterHistoryInfo.historyDurationInSeconds_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitParameterHistoryInfo(AudioUnitParameterHistoryInfo obj)
{
    org_xmlvm_ios_AudioUnitParameterHistoryInfo* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterHistoryInfo();
    org_xmlvm_ios_AudioUnitParameterHistoryInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitParameterHistoryInfo.updatesPerSecond_ = obj.updatesPerSecond;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterHistoryInfo.historyDurationInSeconds_ = obj.historyDurationInSeconds;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterHistoryInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitParameterHistoryInfo___INIT___]
//XMLVM_END_WRAPPER
