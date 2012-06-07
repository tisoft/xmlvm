
//XMLVM_BEGIN_IMPLEMENTATION
CFNetServiceClientContext toCFNetServiceClientContext(void *obj)
{
    org_xmlvm_ios_CFNetServiceClientContext* objCObj = obj;
    CFNetServiceClientContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFNetServiceClientContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFNetServiceClientContext.info_;
    toRet.retain = objCObj->fields.org_xmlvm_ios_CFNetServiceClientContext.retain_;
    toRet.release = objCObj->fields.org_xmlvm_ios_CFNetServiceClientContext.release_;
    toRet.copyDescription = objCObj->fields.org_xmlvm_ios_CFNetServiceClientContext.copyDescription_;
    return toRet;
}
JAVA_OBJECT fromCFNetServiceClientContext(CFNetServiceClientContext obj)
{
    org_xmlvm_ios_CFNetServiceClientContext* jObj = __NEW_org_xmlvm_ios_CFNetServiceClientContext();
    org_xmlvm_ios_CFNetServiceClientContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFNetServiceClientContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFNetServiceClientContext.info_ = obj.info;
    jObj->fields.org_xmlvm_ios_CFNetServiceClientContext.retain_ = obj.retain;
    jObj->fields.org_xmlvm_ios_CFNetServiceClientContext.release_ = obj.release;
    jObj->fields.org_xmlvm_ios_CFNetServiceClientContext.copyDescription_ = obj.copyDescription;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFNetServiceClientContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceClientContext___INIT___]
//XMLVM_END_WRAPPER
