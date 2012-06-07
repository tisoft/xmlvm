
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitParameterValueTranslation toAudioUnitParameterValueTranslation(void *obj)
{
    org_xmlvm_ios_AudioUnitParameterValueTranslation* objCObj = obj;
    AudioUnitParameterValueTranslation toRet;
    toRet.otherDesc = toAudioUnitOtherPluginDesc(objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherDesc_);
    toRet.otherParamID = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherParamID_;
    toRet.otherValue = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherValue_;
    toRet.auParamID = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.auParamID_;
    toRet.auValue = objCObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.auValue_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitParameterValueTranslation(AudioUnitParameterValueTranslation obj)
{
    org_xmlvm_ios_AudioUnitParameterValueTranslation* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterValueTranslation();
    org_xmlvm_ios_AudioUnitParameterValueTranslation___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherDesc_ = fromAudioUnitOtherPluginDesc(obj.otherDesc);
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherParamID_ = obj.otherParamID;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherValue_ = obj.otherValue;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.auParamID_ = obj.auParamID;
    jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.auValue_ = obj.auValue;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterValueTranslation]
    me->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherDesc_ = __NEW_org_xmlvm_ios_AudioUnitOtherPluginDesc();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitParameterValueTranslation___INIT___]
//XMLVM_END_WRAPPER
