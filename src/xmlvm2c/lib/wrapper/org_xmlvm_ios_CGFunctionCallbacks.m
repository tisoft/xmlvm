
//XMLVM_BEGIN_IMPLEMENTATION
CGFunctionCallbacks toCGFunctionCallbacks(void *obj)
{
    org_xmlvm_ios_CGFunctionCallbacks* objCObj = obj;
    CGFunctionCallbacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CGFunctionCallbacks.version_;
    toRet.evaluate = objCObj->fields.org_xmlvm_ios_CGFunctionCallbacks.evaluate_;
    toRet.releaseInfo = objCObj->fields.org_xmlvm_ios_CGFunctionCallbacks.releaseInfo_;
    return toRet;
}
JAVA_OBJECT fromCGFunctionCallbacks(CGFunctionCallbacks obj)
{
    org_xmlvm_ios_CGFunctionCallbacks* jObj = __NEW_org_xmlvm_ios_CGFunctionCallbacks();
    org_xmlvm_ios_CGFunctionCallbacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGFunctionCallbacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CGFunctionCallbacks.evaluate_ = obj.evaluate;
    jObj->fields.org_xmlvm_ios_CGFunctionCallbacks.releaseInfo_ = obj.releaseInfo;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGFunctionCallbacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFunctionCallbacks___INIT___]
//XMLVM_END_WRAPPER
