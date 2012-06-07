
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitParameterValueFromString toAudioUnitParameterValueFromString(void *obj)
{
    org_xmlvm_ios_AudioUnitParameterValueFromString* objCObj = obj;
    AudioUnitParameterValueFromString toRet;
    toRet.inParamID = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueFromString.inParamID_;
    toRet.inString = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueFromString.inString_;
    toRet.outValue = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueFromString.outValue_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitParameterValueFromString(AudioUnitParameterValueFromString obj)
{
    org_xmlvm_ios_AudioUnitParameterValueFromString* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterValueFromString();
    org_xmlvm_ios_AudioUnitParameterValueFromString___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueFromString.inParamID_ = obj.inParamID;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueFromString.inString_ = obj.inString;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueFromString.outValue_ = obj.outValue;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterValueFromString]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitParameterValueFromString___INIT___]
//XMLVM_END_WRAPPER
