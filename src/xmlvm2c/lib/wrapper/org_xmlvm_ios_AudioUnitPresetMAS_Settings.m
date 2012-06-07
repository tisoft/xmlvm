
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitPresetMAS_Settings toAudioUnitPresetMAS_Settings(void *obj)
{
    org_xmlvm_ios_AudioUnitPresetMAS_Settings* objCObj = obj;
    AudioUnitPresetMAS_Settings toRet;
    toRet.manufacturerID = objCObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.manufacturerID_;
    toRet.effectID = objCObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.effectID_;
    toRet.variantID = objCObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.variantID_;
    toRet.settingsVersion = objCObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.settingsVersion_;
    toRet.numberOfSettings = objCObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.numberOfSettings_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitPresetMAS_Settings(AudioUnitPresetMAS_Settings obj)
{
    org_xmlvm_ios_AudioUnitPresetMAS_Settings* jObj = __NEW_org_xmlvm_ios_AudioUnitPresetMAS_Settings();
    org_xmlvm_ios_AudioUnitPresetMAS_Settings___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.manufacturerID_ = obj.manufacturerID;
    jObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.effectID_ = obj.effectID;
    jObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.variantID_ = obj.variantID;
    jObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.settingsVersion_ = obj.settingsVersion;
    jObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_Settings.numberOfSettings_ = obj.numberOfSettings;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitPresetMAS_Settings]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitPresetMAS_Settings___INIT___]
//XMLVM_END_WRAPPER
