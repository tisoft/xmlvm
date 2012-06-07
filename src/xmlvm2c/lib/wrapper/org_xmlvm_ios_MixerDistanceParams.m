
//XMLVM_BEGIN_IMPLEMENTATION
MixerDistanceParams toMixerDistanceParams(void *obj)
{
    org_xmlvm_ios_MixerDistanceParams* objCObj = obj;
    MixerDistanceParams toRet;
    toRet.mReferenceDistance = objCObj->fields.org_xmlvm_ios_MixerDistanceParams.mReferenceDistance_;
    toRet.mMaxDistance = objCObj->fields.org_xmlvm_ios_MixerDistanceParams.mMaxDistance_;
    toRet.mMaxAttenuation = objCObj->fields.org_xmlvm_ios_MixerDistanceParams.mMaxAttenuation_;
    return toRet;
}
JAVA_OBJECT fromMixerDistanceParams(MixerDistanceParams obj)
{
    org_xmlvm_ios_MixerDistanceParams* jObj = __NEW_org_xmlvm_ios_MixerDistanceParams();
    org_xmlvm_ios_MixerDistanceParams___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MixerDistanceParams.mReferenceDistance_ = obj.mReferenceDistance;
    jObj->fields.org_xmlvm_ios_MixerDistanceParams.mMaxDistance_ = obj.mMaxDistance;
    jObj->fields.org_xmlvm_ios_MixerDistanceParams.mMaxAttenuation_ = obj.mMaxAttenuation;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MixerDistanceParams]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MixerDistanceParams___INIT___]
//XMLVM_END_WRAPPER
