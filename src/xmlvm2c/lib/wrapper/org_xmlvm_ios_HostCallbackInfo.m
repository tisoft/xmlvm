
//XMLVM_BEGIN_IMPLEMENTATION
HostCallbackInfo toHostCallbackInfo(void *obj)
{
    org_xmlvm_ios_HostCallbackInfo* objCObj = obj;
    HostCallbackInfo toRet;
    toRet.hostUserData = objCObj->fields.org_xmlvm_ios_HostCallbackInfo.hostUserData_;
    toRet.beatAndTempoProc = objCObj->fields.org_xmlvm_ios_HostCallbackInfo.beatAndTempoProc_;
    toRet.musicalTimeLocationProc = objCObj->fields.org_xmlvm_ios_HostCallbackInfo.musicalTimeLocationProc_;
    toRet.transportStateProc = objCObj->fields.org_xmlvm_ios_HostCallbackInfo.transportStateProc_;
    return toRet;
}
JAVA_OBJECT fromHostCallbackInfo(HostCallbackInfo obj)
{
    org_xmlvm_ios_HostCallbackInfo* jObj = __NEW_org_xmlvm_ios_HostCallbackInfo();
    org_xmlvm_ios_HostCallbackInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_HostCallbackInfo.hostUserData_ = obj.hostUserData;
    jObj->fields.org_xmlvm_ios_HostCallbackInfo.beatAndTempoProc_ = obj.beatAndTempoProc;
    jObj->fields.org_xmlvm_ios_HostCallbackInfo.musicalTimeLocationProc_ = obj.musicalTimeLocationProc;
    jObj->fields.org_xmlvm_ios_HostCallbackInfo.transportStateProc_ = obj.transportStateProc;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_HostCallbackInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_HostCallbackInfo___INIT___]
//XMLVM_END_WRAPPER
