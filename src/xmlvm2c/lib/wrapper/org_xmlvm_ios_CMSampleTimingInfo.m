
//XMLVM_BEGIN_IMPLEMENTATION
CMSampleTimingInfo toCMSampleTimingInfo(void *obj)
{
    org_xmlvm_ios_CMSampleTimingInfo* objCObj = obj;
    CMSampleTimingInfo toRet;
    toRet.duration = toCMTime(objCObj->fields.org_xmlvm_ios_CMSampleTimingInfo.duration_);
    toRet.presentationTimeStamp = toCMTime(objCObj->fields.org_xmlvm_ios_CMSampleTimingInfo.presentationTimeStamp_);
    toRet.decodeTimeStamp = toCMTime(objCObj->fields.org_xmlvm_ios_CMSampleTimingInfo.decodeTimeStamp_);
    return toRet;
}
JAVA_OBJECT fromCMSampleTimingInfo(CMSampleTimingInfo obj)
{
    org_xmlvm_ios_CMSampleTimingInfo* jObj = __NEW_org_xmlvm_ios_CMSampleTimingInfo();
    org_xmlvm_ios_CMSampleTimingInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CMSampleTimingInfo.duration_ = fromCMTime(obj.duration);
    jObj->fields.org_xmlvm_ios_CMSampleTimingInfo.presentationTimeStamp_ = fromCMTime(obj.presentationTimeStamp);
    jObj->fields.org_xmlvm_ios_CMSampleTimingInfo.decodeTimeStamp_ = fromCMTime(obj.decodeTimeStamp);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMSampleTimingInfo]
    me->fields.org_xmlvm_ios_CMSampleTimingInfo.duration_ = __NEW_org_xmlvm_ios_CMTime();
    me->fields.org_xmlvm_ios_CMSampleTimingInfo.presentationTimeStamp_ = __NEW_org_xmlvm_ios_CMTime();
    me->fields.org_xmlvm_ios_CMSampleTimingInfo.decodeTimeStamp_ = __NEW_org_xmlvm_ios_CMTime();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleTimingInfo___INIT___]
//XMLVM_END_WRAPPER
