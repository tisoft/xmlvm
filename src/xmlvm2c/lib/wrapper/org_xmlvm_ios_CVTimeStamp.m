
//XMLVM_BEGIN_IMPLEMENTATION
CVTimeStamp toCVTimeStamp(void *obj)
{
    org_xmlvm_ios_CVTimeStamp* objCObj = obj;
    CVTimeStamp toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CVTimeStamp.version_;
    toRet.videoTimeScale = objCObj->fields.org_xmlvm_ios_CVTimeStamp.videoTimeScale_;
    toRet.videoTime = objCObj->fields.org_xmlvm_ios_CVTimeStamp.videoTime_;
    toRet.hostTime = objCObj->fields.org_xmlvm_ios_CVTimeStamp.hostTime_;
    toRet.rateScalar = objCObj->fields.org_xmlvm_ios_CVTimeStamp.rateScalar_;
    toRet.videoRefreshPeriod = objCObj->fields.org_xmlvm_ios_CVTimeStamp.videoRefreshPeriod_;
    toRet.smpteTime = toCVSMPTETime(objCObj->fields.org_xmlvm_ios_CVTimeStamp.smpteTime_);
    toRet.flags = objCObj->fields.org_xmlvm_ios_CVTimeStamp.flags_;
    toRet.reserved = objCObj->fields.org_xmlvm_ios_CVTimeStamp.reserved_;
    return toRet;
}
JAVA_OBJECT fromCVTimeStamp(CVTimeStamp obj)
{
    org_xmlvm_ios_CVTimeStamp* jObj = __NEW_org_xmlvm_ios_CVTimeStamp();
    org_xmlvm_ios_CVTimeStamp___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CVTimeStamp.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CVTimeStamp.videoTimeScale_ = obj.videoTimeScale;
    jObj->fields.org_xmlvm_ios_CVTimeStamp.videoTime_ = obj.videoTime;
    jObj->fields.org_xmlvm_ios_CVTimeStamp.hostTime_ = obj.hostTime;
    jObj->fields.org_xmlvm_ios_CVTimeStamp.rateScalar_ = obj.rateScalar;
    jObj->fields.org_xmlvm_ios_CVTimeStamp.videoRefreshPeriod_ = obj.videoRefreshPeriod;
    jObj->fields.org_xmlvm_ios_CVTimeStamp.smpteTime_ = fromCVSMPTETime(obj.smpteTime);
    jObj->fields.org_xmlvm_ios_CVTimeStamp.flags_ = obj.flags;
    jObj->fields.org_xmlvm_ios_CVTimeStamp.reserved_ = obj.reserved;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVTimeStamp]
    me->fields.org_xmlvm_ios_CVTimeStamp.smpteTime_ = __NEW_org_xmlvm_ios_CVSMPTETime();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVTimeStamp___INIT___]
//XMLVM_END_WRAPPER
