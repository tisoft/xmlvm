
//XMLVM_BEGIN_IMPLEMENTATION
CFMachPortContext toCFMachPortContext(void *obj)
{
    org_xmlvm_ios_CFMachPortContext* objCObj = obj;
    CFMachPortContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFMachPortContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFMachPortContext.info_;
    return toRet;
}
JAVA_OBJECT fromCFMachPortContext(CFMachPortContext obj)
{
    org_xmlvm_ios_CFMachPortContext* jObj = __NEW_org_xmlvm_ios_CFMachPortContext();
    org_xmlvm_ios_CFMachPortContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFMachPortContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFMachPortContext.info_ = obj.info;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFMachPortContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFMachPortContext___INIT___]
//XMLVM_END_WRAPPER
