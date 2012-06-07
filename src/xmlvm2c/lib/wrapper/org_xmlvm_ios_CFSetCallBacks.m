
//XMLVM_BEGIN_IMPLEMENTATION
CFSetCallBacks toCFSetCallBacks(void *obj)
{
    org_xmlvm_ios_CFSetCallBacks* objCObj = obj;
    CFSetCallBacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFSetCallBacks.version_;
    toRet.retain = objCObj->fields.org_xmlvm_ios_CFSetCallBacks.retain_;
    toRet.release = objCObj->fields.org_xmlvm_ios_CFSetCallBacks.release_;
    toRet.copyDescription = objCObj->fields.org_xmlvm_ios_CFSetCallBacks.copyDescription_;
    toRet.equal = objCObj->fields.org_xmlvm_ios_CFSetCallBacks.equal_;
    toRet.hash = objCObj->fields.org_xmlvm_ios_CFSetCallBacks.hash_;
    return toRet;
}
JAVA_OBJECT fromCFSetCallBacks(CFSetCallBacks obj)
{
    org_xmlvm_ios_CFSetCallBacks* jObj = __NEW_org_xmlvm_ios_CFSetCallBacks();
    org_xmlvm_ios_CFSetCallBacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFSetCallBacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFSetCallBacks.retain_ = obj.retain;
    jObj->fields.org_xmlvm_ios_CFSetCallBacks.release_ = obj.release;
    jObj->fields.org_xmlvm_ios_CFSetCallBacks.copyDescription_ = obj.copyDescription;
    jObj->fields.org_xmlvm_ios_CFSetCallBacks.equal_ = obj.equal;
    jObj->fields.org_xmlvm_ios_CFSetCallBacks.hash_ = obj.hash;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFSetCallBacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSetCallBacks___INIT___]
//XMLVM_END_WRAPPER
