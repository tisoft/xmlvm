
//XMLVM_BEGIN_IMPLEMENTATION
CGDataProviderSequentialCallbacks toCGDataProviderSequentialCallbacks(void *obj)
{
    org_xmlvm_ios_CGDataProviderSequentialCallbacks* objCObj = obj;
    CGDataProviderSequentialCallbacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.version_;
    toRet.getBytes = objCObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.getBytes_;
    toRet.skipForward = objCObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.skipForward_;
    toRet.rewind = objCObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.rewind_;
    toRet.releaseInfo = objCObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.releaseInfo_;
    return toRet;
}
JAVA_OBJECT fromCGDataProviderSequentialCallbacks(CGDataProviderSequentialCallbacks obj)
{
    org_xmlvm_ios_CGDataProviderSequentialCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataProviderSequentialCallbacks();
    org_xmlvm_ios_CGDataProviderSequentialCallbacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.getBytes_ = obj.getBytes;
    jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.skipForward_ = obj.skipForward;
    jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.rewind_ = obj.rewind;
    jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.releaseInfo_ = obj.releaseInfo;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataProviderSequentialCallbacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProviderSequentialCallbacks___INIT___]
//XMLVM_END_WRAPPER
