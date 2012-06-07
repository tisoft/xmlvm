
//XMLVM_BEGIN_IMPLEMENTATION
AUChannelInfo toAUChannelInfo(void *obj)
{
    org_xmlvm_ios_AUChannelInfo* objCObj = obj;
    AUChannelInfo toRet;
    toRet.inChannels = objCObj->fields.org_xmlvm_ios_AUChannelInfo.inChannels_;
    toRet.outChannels = objCObj->fields.org_xmlvm_ios_AUChannelInfo.outChannels_;
    return toRet;
}
JAVA_OBJECT fromAUChannelInfo(AUChannelInfo obj)
{
    org_xmlvm_ios_AUChannelInfo* jObj = __NEW_org_xmlvm_ios_AUChannelInfo();
    org_xmlvm_ios_AUChannelInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AUChannelInfo.inChannels_ = obj.inChannels;
    jObj->fields.org_xmlvm_ios_AUChannelInfo.outChannels_ = obj.outChannels;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUChannelInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AUChannelInfo___INIT___]
//XMLVM_END_WRAPPER
