
//XMLVM_BEGIN_IMPLEMENTATION
CVPlanarComponentInfo toCVPlanarComponentInfo(void *obj)
{
    org_xmlvm_ios_CVPlanarComponentInfo* objCObj = obj;
    CVPlanarComponentInfo toRet;
    toRet.offset = objCObj->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_;
    toRet.rowBytes = objCObj->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_;
    return toRet;
}
JAVA_OBJECT fromCVPlanarComponentInfo(CVPlanarComponentInfo obj)
{
    org_xmlvm_ios_CVPlanarComponentInfo* jObj = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
    org_xmlvm_ios_CVPlanarComponentInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_ = obj.offset;
    jObj->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_ = obj.rowBytes;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVPlanarComponentInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPlanarComponentInfo___INIT___]
//XMLVM_END_WRAPPER
