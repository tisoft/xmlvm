
//XMLVM_BEGIN_IMPLEMENTATION
CFSocketContext toCFSocketContext(void *obj)
{
    org_xmlvm_ios_CFSocketContext* objCObj = obj;
    CFSocketContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFSocketContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFSocketContext.info_;
    return toRet;
}
JAVA_OBJECT fromCFSocketContext(CFSocketContext obj)
{
    org_xmlvm_ios_CFSocketContext* jObj = __NEW_org_xmlvm_ios_CFSocketContext();
    org_xmlvm_ios_CFSocketContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFSocketContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFSocketContext.info_ = obj.info;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFSocketContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSocketContext___INIT___]
//XMLVM_END_WRAPPER
