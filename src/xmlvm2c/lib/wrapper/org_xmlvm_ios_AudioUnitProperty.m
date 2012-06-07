
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitProperty toAudioUnitProperty(void *obj)
{
    org_xmlvm_ios_AudioUnitProperty* objCObj = obj;
    AudioUnitProperty toRet;
    toRet.mAudioUnit = objCObj->fields.org_xmlvm_ios_AudioUnitProperty.mAudioUnit_;
    toRet.mPropertyID = objCObj->fields.org_xmlvm_ios_AudioUnitProperty.mPropertyID_;
    toRet.mScope = objCObj->fields.org_xmlvm_ios_AudioUnitProperty.mScope_;
    toRet.mElement = objCObj->fields.org_xmlvm_ios_AudioUnitProperty.mElement_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitProperty(AudioUnitProperty obj)
{
    org_xmlvm_ios_AudioUnitProperty* jObj = __NEW_org_xmlvm_ios_AudioUnitProperty();
    org_xmlvm_ios_AudioUnitProperty___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitProperty.mAudioUnit_ = obj.mAudioUnit;
    jObj->fields.org_xmlvm_ios_AudioUnitProperty.mPropertyID_ = obj.mPropertyID;
    jObj->fields.org_xmlvm_ios_AudioUnitProperty.mScope_ = obj.mScope;
    jObj->fields.org_xmlvm_ios_AudioUnitProperty.mElement_ = obj.mElement;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitProperty]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitProperty___INIT___]
//XMLVM_END_WRAPPER
