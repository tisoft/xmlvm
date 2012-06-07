
//XMLVM_BEGIN_IMPLEMENTATION
CFMessagePortContext toCFMessagePortContext(void *obj)
{
    org_xmlvm_ios_CFMessagePortContext* objCObj = obj;
    CFMessagePortContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFMessagePortContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFMessagePortContext.info_;
    return toRet;
}
JAVA_OBJECT fromCFMessagePortContext(CFMessagePortContext obj)
{
    org_xmlvm_ios_CFMessagePortContext* jObj = __NEW_org_xmlvm_ios_CFMessagePortContext();
    org_xmlvm_ios_CFMessagePortContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFMessagePortContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFMessagePortContext.info_ = obj.info;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFMessagePortContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMessagePortContext___INIT___]
//XMLVM_END_WRAPPER
