
//XMLVM_BEGIN_IMPLEMENTATION
CFFileDescriptorContext toCFFileDescriptorContext(void *obj)
{
    org_xmlvm_ios_CFFileDescriptorContext* objCObj = obj;
    CFFileDescriptorContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFFileDescriptorContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFFileDescriptorContext.info_;
    return toRet;
}
JAVA_OBJECT fromCFFileDescriptorContext(CFFileDescriptorContext obj)
{
    org_xmlvm_ios_CFFileDescriptorContext* jObj = __NEW_org_xmlvm_ios_CFFileDescriptorContext();
    org_xmlvm_ios_CFFileDescriptorContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFFileDescriptorContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFFileDescriptorContext.info_ = obj.info;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFFileDescriptorContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFFileDescriptorContext___INIT___]
//XMLVM_END_WRAPPER
