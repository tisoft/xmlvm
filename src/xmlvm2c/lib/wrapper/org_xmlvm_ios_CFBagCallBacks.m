
//XMLVM_BEGIN_IMPLEMENTATION
CFBagCallBacks toCFBagCallBacks(void *obj)
{
    org_xmlvm_ios_CFBagCallBacks* objCObj = obj;
    CFBagCallBacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFBagCallBacks.version_;
    toRet.retain = objCObj->fields.org_xmlvm_ios_CFBagCallBacks.retain_;
    toRet.release = objCObj->fields.org_xmlvm_ios_CFBagCallBacks.release_;
    toRet.copyDescription = objCObj->fields.org_xmlvm_ios_CFBagCallBacks.copyDescription_;
    toRet.equal = objCObj->fields.org_xmlvm_ios_CFBagCallBacks.equal_;
    toRet.hash = objCObj->fields.org_xmlvm_ios_CFBagCallBacks.hash_;
    return toRet;
}
JAVA_OBJECT fromCFBagCallBacks(CFBagCallBacks obj)
{
    org_xmlvm_ios_CFBagCallBacks* jObj = __NEW_org_xmlvm_ios_CFBagCallBacks();
    org_xmlvm_ios_CFBagCallBacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFBagCallBacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFBagCallBacks.retain_ = obj.retain;
    jObj->fields.org_xmlvm_ios_CFBagCallBacks.release_ = obj.release;
    jObj->fields.org_xmlvm_ios_CFBagCallBacks.copyDescription_ = obj.copyDescription;
    jObj->fields.org_xmlvm_ios_CFBagCallBacks.equal_ = obj.equal;
    jObj->fields.org_xmlvm_ios_CFBagCallBacks.hash_ = obj.hash;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFBagCallBacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBagCallBacks___INIT___]
//XMLVM_END_WRAPPER
