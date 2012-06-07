
//XMLVM_BEGIN_IMPLEMENTATION
AUDistanceAttenuationData toAUDistanceAttenuationData(void *obj)
{
    org_xmlvm_ios_AUDistanceAttenuationData* objCObj = obj;
    AUDistanceAttenuationData toRet;
    toRet.inNumberOfPairs = objCObj->fields.org_xmlvm_ios_AUDistanceAttenuationData.inNumberOfPairs_;
    return toRet;
}
JAVA_OBJECT fromAUDistanceAttenuationData(AUDistanceAttenuationData obj)
{
    org_xmlvm_ios_AUDistanceAttenuationData* jObj = __NEW_org_xmlvm_ios_AUDistanceAttenuationData();
    org_xmlvm_ios_AUDistanceAttenuationData___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AUDistanceAttenuationData.inNumberOfPairs_ = obj.inNumberOfPairs;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUDistanceAttenuationData]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AUDistanceAttenuationData___INIT___]
//XMLVM_END_WRAPPER
