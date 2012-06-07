
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitParameterValueName toAudioUnitParameterValueName(void *obj)
{
    org_xmlvm_ios_AudioUnitParameterValueName* objCObj = obj;
    AudioUnitParameterValueName toRet;
    toRet.inParamID = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.inParamID_;
    toRet.inValue = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.inValue_;
    toRet.outName = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.outName_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitParameterValueName(AudioUnitParameterValueName obj)
{
    org_xmlvm_ios_AudioUnitParameterValueName* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterValueName();
    org_xmlvm_ios_AudioUnitParameterValueName___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.inParamID_ = obj.inParamID;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.inValue_ = obj.inValue;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueName.outName_ = obj.outName;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterValueName]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitParameterValueName___INIT___]
//XMLVM_END_WRAPPER
