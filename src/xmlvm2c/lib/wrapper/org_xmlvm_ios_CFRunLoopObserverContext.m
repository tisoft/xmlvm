
//XMLVM_BEGIN_IMPLEMENTATION
CFRunLoopObserverContext toCFRunLoopObserverContext(void *obj)
{
    org_xmlvm_ios_CFRunLoopObserverContext* objCObj = obj;
    CFRunLoopObserverContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFRunLoopObserverContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_CFRunLoopObserverContext.info_;
    return toRet;
}
JAVA_OBJECT fromCFRunLoopObserverContext(CFRunLoopObserverContext obj)
{
    org_xmlvm_ios_CFRunLoopObserverContext* jObj = __NEW_org_xmlvm_ios_CFRunLoopObserverContext();
    org_xmlvm_ios_CFRunLoopObserverContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFRunLoopObserverContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFRunLoopObserverContext.info_ = obj.info;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFRunLoopObserverContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopObserverContext___INIT___]
//XMLVM_END_WRAPPER
