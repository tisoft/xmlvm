
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MixerDistanceParams toMixerDistanceParams(void *obj)
{
	org_xmlvm_ios_MixerDistanceParams* cObj = obj;
	MixerDistanceParams toRet;
	toRet.mReferenceDistance = cObj->fields.org_xmlvm_ios_MixerDistanceParams.mReferenceDistance_;
	toRet.mMaxDistance = cObj->fields.org_xmlvm_ios_MixerDistanceParams.mMaxDistance_;
	toRet.mMaxAttenuation = cObj->fields.org_xmlvm_ios_MixerDistanceParams.mMaxAttenuation_;
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
