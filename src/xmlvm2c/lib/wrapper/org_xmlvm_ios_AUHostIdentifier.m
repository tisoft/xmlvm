
//XMLVM_BEGIN_IMPLEMENTATION
AUHostIdentifier toAUHostIdentifier(void *obj)
{
    org_xmlvm_ios_AUHostIdentifier* objCObj = obj;
    AUHostIdentifier toRet;
    toRet.hostName = objCObj->fields.org_xmlvm_ios_AUHostIdentifier.hostName_;
    toRet.hostVersion = toAUNumVersion(objCObj->fields.org_xmlvm_ios_AUHostIdentifier.hostVersion_);
    return toRet;
}
JAVA_OBJECT fromAUHostIdentifier(AUHostIdentifier obj)
{
    org_xmlvm_ios_AUHostIdentifier* jObj = __NEW_org_xmlvm_ios_AUHostIdentifier();
    org_xmlvm_ios_AUHostIdentifier___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AUHostIdentifier.hostName_ = obj.hostName;
    jObj->fields.org_xmlvm_ios_AUHostIdentifier.hostVersion_ = fromAUNumVersion(obj.hostVersion);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUHostIdentifier]
    me->fields.org_xmlvm_ios_AUHostIdentifier.hostVersion_ = __NEW_org_xmlvm_ios_AUNumVersion();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AUHostIdentifier___INIT___]
//XMLVM_END_WRAPPER
