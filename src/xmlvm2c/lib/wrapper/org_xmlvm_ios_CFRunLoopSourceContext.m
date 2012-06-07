
//XMLVM_BEGIN_IMPLEMENTATION
CFRunLoopSourceContext toCFRunLoopSourceContext(void *obj)
{
    org_xmlvm_ios_CFRunLoopSourceContext* objCObj = obj;
    CFRunLoopSourceContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFRunLoopSourceContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFRunLoopSourceContext.info_;
    return toRet;
}
JAVA_OBJECT fromCFRunLoopSourceContext(CFRunLoopSourceContext obj)
{
    org_xmlvm_ios_CFRunLoopSourceContext* jObj = __NEW_org_xmlvm_ios_CFRunLoopSourceContext();
    org_xmlvm_ios_CFRunLoopSourceContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFRunLoopSourceContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFRunLoopSourceContext.info_ = obj.info;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFRunLoopSourceContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSourceContext___INIT___]
//XMLVM_END_WRAPPER
