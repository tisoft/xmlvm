
//XMLVM_BEGIN_IMPLEMENTATION
CGDataProviderDirectAccessCallbacks toCGDataProviderDirectAccessCallbacks(void *obj)
{
    org_xmlvm_ios_CGDataProviderDirectAccessCallbacks* objCObj = obj;
    CGDataProviderDirectAccessCallbacks toRet;
    toRet.getBytePointer = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.getBytePointer_;
    toRet.releaseBytePointer = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.releaseBytePointer_;
    toRet.getBytes = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.getBytes_;
    toRet.releaseProvider = objCObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.releaseProvider_;
    return toRet;
}
JAVA_OBJECT fromCGDataProviderDirectAccessCallbacks(CGDataProviderDirectAccessCallbacks obj)
{
    org_xmlvm_ios_CGDataProviderDirectAccessCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataProviderDirectAccessCallbacks();
    org_xmlvm_ios_CGDataProviderDirectAccessCallbacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.getBytePointer_ = obj.getBytePointer;
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.releaseBytePointer_ = obj.releaseBytePointer;
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.getBytes_ = obj.getBytes;
    jObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.releaseProvider_ = obj.releaseProvider;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataProviderDirectAccessCallbacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProviderDirectAccessCallbacks___INIT___]
//XMLVM_END_WRAPPER
