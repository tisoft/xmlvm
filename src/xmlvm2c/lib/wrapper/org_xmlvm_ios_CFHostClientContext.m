
//XMLVM_BEGIN_IMPLEMENTATION
CFHostClientContext toCFHostClientContext(void *obj)
{
    org_xmlvm_ios_CFHostClientContext* objCObj = obj;
    CFHostClientContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFHostClientContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFHostClientContext.info_;
    toRet.retain = objCObj->fields.org_xmlvm_ios_CFHostClientContext.retain_;
    toRet.release = objCObj->fields.org_xmlvm_ios_CFHostClientContext.release_;
    toRet.copyDescription = objCObj->fields.org_xmlvm_ios_CFHostClientContext.copyDescription_;
    return toRet;
}
JAVA_OBJECT fromCFHostClientContext(CFHostClientContext obj)
{
    org_xmlvm_ios_CFHostClientContext* jObj = __NEW_org_xmlvm_ios_CFHostClientContext();
    org_xmlvm_ios_CFHostClientContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFHostClientContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFHostClientContext.info_ = obj.info;
    jObj->fields.org_xmlvm_ios_CFHostClientContext.retain_ = obj.retain;
    jObj->fields.org_xmlvm_ios_CFHostClientContext.release_ = obj.release;
    jObj->fields.org_xmlvm_ios_CFHostClientContext.copyDescription_ = obj.copyDescription;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFHostClientContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFHostClientContext___INIT___]
//XMLVM_END_WRAPPER
