
//XMLVM_BEGIN_IMPLEMENTATION
CGDataProviderCallbacks toCGDataProviderCallbacks(void *obj)
{
    org_xmlvm_ios_CGDataProviderCallbacks* objCObj = obj;
    CGDataProviderCallbacks toRet;
    toRet.getBytes = objCObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.getBytes_;
    toRet.skipBytes = objCObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.skipBytes_;
    toRet.rewind = objCObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.rewind_;
    toRet.releaseProvider = objCObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.releaseProvider_;
    return toRet;
}
JAVA_OBJECT fromCGDataProviderCallbacks(CGDataProviderCallbacks obj)
{
    org_xmlvm_ios_CGDataProviderCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataProviderCallbacks();
    org_xmlvm_ios_CGDataProviderCallbacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.getBytes_ = obj.getBytes;
    jObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.skipBytes_ = obj.skipBytes;
    jObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.rewind_ = obj.rewind;
    jObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.releaseProvider_ = obj.releaseProvider;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataProviderCallbacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProviderCallbacks___INIT___]
//XMLVM_END_WRAPPER
