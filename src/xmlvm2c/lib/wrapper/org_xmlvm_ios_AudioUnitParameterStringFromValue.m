
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitParameterStringFromValue toAudioUnitParameterStringFromValue(void *obj)
{
    org_xmlvm_ios_AudioUnitParameterStringFromValue* objCObj = obj;
    AudioUnitParameterStringFromValue toRet;
    toRet.inParamID = objCObj->fields.org_xmlvm_ios_AudioUnitParameterStringFromValue.inParamID_;
    toRet.inValue = objCObj->fields.org_xmlvm_ios_AudioUnitParameterStringFromValue.inValue_;
    toRet.outString = objCObj->fields.org_xmlvm_ios_AudioUnitParameterStringFromValue.outString_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitParameterStringFromValue(AudioUnitParameterStringFromValue obj)
{
    org_xmlvm_ios_AudioUnitParameterStringFromValue* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterStringFromValue();
    org_xmlvm_ios_AudioUnitParameterStringFromValue___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitParameterStringFromValue.inParamID_ = obj.inParamID;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterStringFromValue.inValue_ = obj.inValue;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterStringFromValue.outString_ = obj.outString;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterStringFromValue]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitParameterStringFromValue___INIT___]
//XMLVM_END_WRAPPER
