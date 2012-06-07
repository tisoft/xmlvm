
//XMLVM_BEGIN_IMPLEMENTATION
AUPreset toAUPreset(void *obj)
{
    org_xmlvm_ios_AUPreset* objCObj = obj;
    AUPreset toRet;
    toRet.presetNumber = objCObj->fields.org_xmlvm_ios_AUPreset.presetNumber_;
    toRet.presetName = objCObj->fields.org_xmlvm_ios_AUPreset.presetName_;
    return toRet;
}
JAVA_OBJECT fromAUPreset(AUPreset obj)
{
    org_xmlvm_ios_AUPreset* jObj = __NEW_org_xmlvm_ios_AUPreset();
    org_xmlvm_ios_AUPreset___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AUPreset.presetNumber_ = obj.presetNumber;
    jObj->fields.org_xmlvm_ios_AUPreset.presetName_ = obj.presetName;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUPreset]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AUPreset___INIT___]
//XMLVM_END_WRAPPER
