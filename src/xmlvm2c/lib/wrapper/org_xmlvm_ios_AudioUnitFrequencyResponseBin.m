
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitFrequencyResponseBin toAudioUnitFrequencyResponseBin(void *obj)
{
    org_xmlvm_ios_AudioUnitFrequencyResponseBin* objCObj = obj;
    AudioUnitFrequencyResponseBin toRet;
    toRet.mFrequency = objCObj->fields.org_xmlvm_ios_AudioUnitFrequencyResponseBin.mFrequency_;
    toRet.mMagnitude = objCObj->fields.org_xmlvm_ios_AudioUnitFrequencyResponseBin.mMagnitude_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitFrequencyResponseBin(AudioUnitFrequencyResponseBin obj)
{
    org_xmlvm_ios_AudioUnitFrequencyResponseBin* jObj = __NEW_org_xmlvm_ios_AudioUnitFrequencyResponseBin();
    org_xmlvm_ios_AudioUnitFrequencyResponseBin___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitFrequencyResponseBin.mFrequency_ = obj.mFrequency;
    jObj->fields.org_xmlvm_ios_AudioUnitFrequencyResponseBin.mMagnitude_ = obj.mMagnitude;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitFrequencyResponseBin]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitFrequencyResponseBin___INIT___]
//XMLVM_END_WRAPPER
