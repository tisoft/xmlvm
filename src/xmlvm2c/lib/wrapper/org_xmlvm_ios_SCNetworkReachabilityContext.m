
//XMLVM_BEGIN_IMPLEMENTATION
SCNetworkReachabilityContext toSCNetworkReachabilityContext(void *obj)
{
    org_xmlvm_ios_SCNetworkReachabilityContext* objCObj = obj;
    SCNetworkReachabilityContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_SCNetworkReachabilityContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_SCNetworkReachabilityContext.info_;
    return toRet;
}
JAVA_OBJECT fromSCNetworkReachabilityContext(SCNetworkReachabilityContext obj)
{
    org_xmlvm_ios_SCNetworkReachabilityContext* jObj = __NEW_org_xmlvm_ios_SCNetworkReachabilityContext();
    org_xmlvm_ios_SCNetworkReachabilityContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_SCNetworkReachabilityContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_SCNetworkReachabilityContext.info_ = obj.info;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_SCNetworkReachabilityContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCNetworkReachabilityContext___INIT___]
//XMLVM_END_WRAPPER
