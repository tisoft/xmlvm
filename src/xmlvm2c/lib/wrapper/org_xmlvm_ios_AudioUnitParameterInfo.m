
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitParameterInfo toAudioUnitParameterInfo(void *obj)
{
    org_xmlvm_ios_AudioUnitParameterInfo* objCObj = obj;
    AudioUnitParameterInfo toRet;
    toRet.unitName = objCObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.unitName_;
    toRet.clumpID = objCObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.clumpID_;
    toRet.cfNameString = objCObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.cfNameString_;
    toRet.unit = objCObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.unit_;
    toRet.minValue = objCObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.minValue_;
    toRet.maxValue = objCObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.maxValue_;
    toRet.defaultValue = objCObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.defaultValue_;
    toRet.flags = objCObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.flags_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitParameterInfo(AudioUnitParameterInfo obj)
{
    org_xmlvm_ios_AudioUnitParameterInfo* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterInfo();
    org_xmlvm_ios_AudioUnitParameterInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.unitName_ = obj.unitName;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.clumpID_ = obj.clumpID;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.cfNameString_ = obj.cfNameString;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.unit_ = obj.unit;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.minValue_ = obj.minValue;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.maxValue_ = obj.maxValue;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.defaultValue_ = obj.defaultValue;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterInfo.flags_ = obj.flags;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitParameterInfo___INIT___]
//XMLVM_END_WRAPPER
