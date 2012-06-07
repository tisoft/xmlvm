
//XMLVM_BEGIN_IMPLEMENTATION
CFArrayCallBacks toCFArrayCallBacks(void *obj)
{
    org_xmlvm_ios_CFArrayCallBacks* objCObj = obj;
    CFArrayCallBacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFArrayCallBacks.version_;
    toRet.retain = objCObj->fields.org_xmlvm_ios_CFArrayCallBacks.retain_;
    toRet.release = objCObj->fields.org_xmlvm_ios_CFArrayCallBacks.release_;
    toRet.copyDescription = objCObj->fields.org_xmlvm_ios_CFArrayCallBacks.copyDescription_;
    toRet.equal = objCObj->fields.org_xmlvm_ios_CFArrayCallBacks.equal_;
    return toRet;
}
JAVA_OBJECT fromCFArrayCallBacks(CFArrayCallBacks obj)
{
    org_xmlvm_ios_CFArrayCallBacks* jObj = __NEW_org_xmlvm_ios_CFArrayCallBacks();
    org_xmlvm_ios_CFArrayCallBacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFArrayCallBacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFArrayCallBacks.retain_ = obj.retain;
    jObj->fields.org_xmlvm_ios_CFArrayCallBacks.release_ = obj.release;
    jObj->fields.org_xmlvm_ios_CFArrayCallBacks.copyDescription_ = obj.copyDescription;
    jObj->fields.org_xmlvm_ios_CFArrayCallBacks.equal_ = obj.equal;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFArrayCallBacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFArrayCallBacks___INIT___]
//XMLVM_END_WRAPPER
