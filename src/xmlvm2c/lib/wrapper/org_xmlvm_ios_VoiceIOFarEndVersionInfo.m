
//XMLVM_BEGIN_IMPLEMENTATION
VoiceIOFarEndVersionInfo toVoiceIOFarEndVersionInfo(void *obj)
{
    org_xmlvm_ios_VoiceIOFarEndVersionInfo* objCObj = obj;
    VoiceIOFarEndVersionInfo toRet;
    toRet.farEndAUVersion = objCObj->fields.org_xmlvm_ios_VoiceIOFarEndVersionInfo.farEndAUVersion_;
    return toRet;
}
JAVA_OBJECT fromVoiceIOFarEndVersionInfo(VoiceIOFarEndVersionInfo obj)
{
    org_xmlvm_ios_VoiceIOFarEndVersionInfo* jObj = __NEW_org_xmlvm_ios_VoiceIOFarEndVersionInfo();
    org_xmlvm_ios_VoiceIOFarEndVersionInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_VoiceIOFarEndVersionInfo.farEndAUVersion_ = obj.farEndAUVersion;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_VoiceIOFarEndVersionInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_VoiceIOFarEndVersionInfo___INIT___]
//XMLVM_END_WRAPPER
