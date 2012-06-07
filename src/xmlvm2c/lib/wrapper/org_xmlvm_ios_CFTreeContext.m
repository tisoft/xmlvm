
//XMLVM_BEGIN_IMPLEMENTATION
CFTreeContext toCFTreeContext(void *obj)
{
    org_xmlvm_ios_CFTreeContext* objCObj = obj;
    CFTreeContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFTreeContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFTreeContext.info_;
    toRet.retain = objCObj->fields.org_xmlvm_ios_CFTreeContext.retain_;
    toRet.release = objCObj->fields.org_xmlvm_ios_CFTreeContext.release_;
    toRet.copyDescription = objCObj->fields.org_xmlvm_ios_CFTreeContext.copyDescription_;
    return toRet;
}
JAVA_OBJECT fromCFTreeContext(CFTreeContext obj)
{
    org_xmlvm_ios_CFTreeContext* jObj = __NEW_org_xmlvm_ios_CFTreeContext();
    org_xmlvm_ios_CFTreeContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFTreeContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFTreeContext.info_ = obj.info;
    jObj->fields.org_xmlvm_ios_CFTreeContext.retain_ = obj.retain;
    jObj->fields.org_xmlvm_ios_CFTreeContext.release_ = obj.release;
    jObj->fields.org_xmlvm_ios_CFTreeContext.copyDescription_ = obj.copyDescription;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFTreeContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFTreeContext___INIT___]
//XMLVM_END_WRAPPER
