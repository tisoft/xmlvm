
//XMLVM_BEGIN_IMPLEMENTATION
CGDataProviderDirectCallbacks toCGDataProviderDirectCallbacks(void *obj)
{
    org_xmlvm_ios_CGDataProviderDirectCallbacks* objCObj = obj;
    CGDataProviderDirectCallbacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.version_;
    toRet.getBytePointer = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.getBytePointer_;
    toRet.releaseBytePointer = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.releaseBytePointer_;
    toRet.getBytesAtPosition = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.getBytesAtPosition_;
    toRet.releaseInfo = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.releaseInfo_;
    return toRet;
}
JAVA_OBJECT fromCGDataProviderDirectCallbacks(CGDataProviderDirectCallbacks obj)
{
    org_xmlvm_ios_CGDataProviderDirectCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataProviderDirectCallbacks();
    org_xmlvm_ios_CGDataProviderDirectCallbacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.getBytePointer_ = obj.getBytePointer;
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.releaseBytePointer_ = obj.releaseBytePointer;
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.getBytesAtPosition_ = obj.getBytesAtPosition;
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.releaseInfo_ = obj.releaseInfo;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataProviderDirectCallbacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProviderDirectCallbacks___INIT___]
//XMLVM_END_WRAPPER
