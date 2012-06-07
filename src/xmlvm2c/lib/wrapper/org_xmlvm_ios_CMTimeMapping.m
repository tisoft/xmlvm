
//XMLVM_BEGIN_IMPLEMENTATION
CMTimeMapping toCMTimeMapping(void *obj)
{
    org_xmlvm_ios_CMTimeMapping* objCObj = obj;
    CMTimeMapping toRet;
    toRet.source = toCMTimeRange(objCObj->fields.org_xmlvm_ios_CMTimeMapping.source_);
    toRet.target = toCMTimeRange(objCObj->fields.org_xmlvm_ios_CMTimeMapping.target_);
    return toRet;
}
JAVA_OBJECT fromCMTimeMapping(CMTimeMapping obj)
{
    org_xmlvm_ios_CMTimeMapping* jObj = __NEW_org_xmlvm_ios_CMTimeMapping();
    org_xmlvm_ios_CMTimeMapping___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CMTimeMapping.source_ = fromCMTimeRange(obj.source);
    jObj->fields.org_xmlvm_ios_CMTimeMapping.target_ = fromCMTimeRange(obj.target);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMTimeMapping]
    me->fields.org_xmlvm_ios_CMTimeMapping.source_ = __NEW_org_xmlvm_ios_CMTimeRange();
    me->fields.org_xmlvm_ios_CMTimeMapping.target_ = __NEW_org_xmlvm_ios_CMTimeRange();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMTimeMapping___INIT___]
//XMLVM_END_WRAPPER
