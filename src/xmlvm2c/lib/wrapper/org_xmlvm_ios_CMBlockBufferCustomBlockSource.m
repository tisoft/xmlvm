
//XMLVM_BEGIN_IMPLEMENTATION
CMBlockBufferCustomBlockSource toCMBlockBufferCustomBlockSource(void *obj)
{
    org_xmlvm_ios_CMBlockBufferCustomBlockSource* objCObj = obj;
    CMBlockBufferCustomBlockSource toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CMBlockBufferCustomBlockSource.version_;
    toRet.refCon = objCObj->fields.org_xmlvm_ios_CMBlockBufferCustomBlockSource.refCon_;
    return toRet;
}
JAVA_OBJECT fromCMBlockBufferCustomBlockSource(CMBlockBufferCustomBlockSource obj)
{
    org_xmlvm_ios_CMBlockBufferCustomBlockSource* jObj = __NEW_org_xmlvm_ios_CMBlockBufferCustomBlockSource();
    org_xmlvm_ios_CMBlockBufferCustomBlockSource___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CMBlockBufferCustomBlockSource.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CMBlockBufferCustomBlockSource.refCon_ = obj.refCon;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMBlockBufferCustomBlockSource]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMBlockBufferCustomBlockSource___INIT___]
//XMLVM_END_WRAPPER
