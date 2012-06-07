
//XMLVM_BEGIN_IMPLEMENTATION
AudioComponentDescription toAudioComponentDescription(void *obj)
{
    org_xmlvm_ios_AudioComponentDescription* objCObj = obj;
    AudioComponentDescription toRet;
    toRet.componentType = objCObj->fields.org_xmlvm_ios_AudioComponentDescription.componentType_;
    toRet.componentSubType = objCObj->fields.org_xmlvm_ios_AudioComponentDescription.componentSubType_;
    toRet.componentManufacturer = objCObj->fields.org_xmlvm_ios_AudioComponentDescription.componentManufacturer_;
    toRet.componentFlags = objCObj->fields.org_xmlvm_ios_AudioComponentDescription.componentFlags_;
    toRet.componentFlagsMask = objCObj->fields.org_xmlvm_ios_AudioComponentDescription.componentFlagsMask_;
    return toRet;
}
JAVA_OBJECT fromAudioComponentDescription(AudioComponentDescription obj)
{
    org_xmlvm_ios_AudioComponentDescription* jObj = __NEW_org_xmlvm_ios_AudioComponentDescription();
    org_xmlvm_ios_AudioComponentDescription___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioComponentDescription.componentType_ = obj.componentType;
    jObj->fields.org_xmlvm_ios_AudioComponentDescription.componentSubType_ = obj.componentSubType;
    jObj->fields.org_xmlvm_ios_AudioComponentDescription.componentManufacturer_ = obj.componentManufacturer;
    jObj->fields.org_xmlvm_ios_AudioComponentDescription.componentFlags_ = obj.componentFlags;
    jObj->fields.org_xmlvm_ios_AudioComponentDescription.componentFlagsMask_ = obj.componentFlagsMask;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioComponentDescription]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponentDescription___INIT___]
//XMLVM_END_WRAPPER
