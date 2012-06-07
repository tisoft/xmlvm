
//XMLVM_BEGIN_IMPLEMENTATION
CFStreamError toCFStreamError(void *obj)
{
    org_xmlvm_ios_CFStreamError* objCObj = obj;
    CFStreamError toRet;
    toRet.domain = objCObj->fields.org_xmlvm_ios_CFStreamError.domain_;
    toRet.error = objCObj->fields.org_xmlvm_ios_CFStreamError.error_;
    return toRet;
}
JAVA_OBJECT fromCFStreamError(CFStreamError obj)
{
    org_xmlvm_ios_CFStreamError* jObj = __NEW_org_xmlvm_ios_CFStreamError();
    org_xmlvm_ios_CFStreamError___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFStreamError.domain_ = obj.domain;
    jObj->fields.org_xmlvm_ios_CFStreamError.error_ = obj.error;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFStreamError]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStreamError___INIT___]
//XMLVM_END_WRAPPER
